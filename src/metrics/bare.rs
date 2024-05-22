use super::types::{CPUError, CPUStatus, Stat};
use sysinfo::{Pid, System};

pub async fn get_stats_pid(pid: u32) -> anyhow::Result<CPUStatus, CPUError> {
    let mut system = System::new_all();
    std::thread::sleep(sysinfo::MINIMUM_CPU_UPDATE_INTERVAL);
    system.refresh_cpu();
    system.refresh_processes();

    if let Some(process) = system.process(Pid::from_u32(pid)) {
        let cpu_usage = process.cpu_usage();
        let total_usage = system.global_cpu_info().cpu_usage();
        let core_count = system.physical_core_count().unwrap_or(0) as f32;

        let stat = Stat {
            id: pid.to_string(),
            name: process.name().to_string(),
            usage_by_process: cpu_usage,
            total_usage,
            core_count,
        };

        Ok(CPUStatus { stats: vec![stat] })
    } else {
        Err(CPUError::ProcessNotFound(format!("pid ->  {pid}")))
    }
}

pub async fn get_stats_name(name: &str) -> anyhow::Result<CPUStatus, CPUError> {
    let mut system = System::new_all();
    std::thread::sleep(sysinfo::MINIMUM_CPU_UPDATE_INTERVAL);

    // Refresh system information
    system.refresh_cpu();
    system.refresh_processes();

    let mut stats = Vec::new();
    let total_usage = system.global_cpu_info().cpu_usage();
    let core_count = system.physical_core_count().unwrap_or(0) as f32;

    for (pid, process) in system.processes() {
        if process.name() == name {
            let cpu_usage = process.cpu_usage();
            let stat = Stat {
                id: pid.as_u32().to_string(),
                name: process.name().to_string(),
                usage_by_process: cpu_usage,
                total_usage,
                core_count,
            };
            stats.push(stat);
        }
    }

    if !stats.is_empty() {
        Ok(CPUStatus { stats })
    } else {
        Err(CPUError::ProcessNotFound(format!("name ->  {name}")))
    }
}

#[cfg(test)]
mod tests {
    use std::process;

    use crate::metrics::start::get_metrics;
    use crate::metrics::types::BareInput::*;
    use crate::metrics::types::CPUType::*;
    #[tokio::test]
    async fn bare_metal_valid_pid() {
        assert!(get_metrics(BareStats(ProcessID(process::id())))
            .await
            .is_ok())
    }
    #[tokio::test]
    async fn bare_metal_invalid_pid() {
        assert!(!get_metrics(BareStats(ProcessID(std::u32::MAX)))
            .await
            .is_ok());
    }
}
