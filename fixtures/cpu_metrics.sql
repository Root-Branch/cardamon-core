DELETE FROM cpu_metrics;

INSERT INTO cpu_metrics (run_id, process_id, process_name, cpu_usage, total_usage, core_count, timestamp) 
VALUES 

-- run_1, scenario_1, it 1
('1', '1337', 'yarn', 65, 100, 4, 1717507590000),
('1', '1337', 'yarn', 98, 100, 4, 1717507590200),
('1', '1337', 'yarn', 87, 100, 4, 1717507590400),
('1', '1337', 'yarn', 96, 100, 4, 1717507590600),
('1', '1337', 'yarn', 68, 100, 4, 1717507590800),
('1', '1338', 'docker', 65, 100, 4, 1717507590000),
('1', '1338', 'docker', 98, 100, 4, 1717507590200),
('1', '1338', 'docker', 87, 100, 4, 1717507590400),
('1', '1338', 'docker', 96, 100, 4, 1717507590600),
('1', '1338', 'docker', 68, 100, 4, 1717507590800),

-- run_1, scenario_2, it 1
('011', '1', '1337', 'yarn', 65, 100, 4, 1717507592000),
('012', '1', '1337', 'yarn', 98, 100, 4, 1717507592200),
('013', '1', '1337', 'yarn', 87, 100, 4, 1717507592400),
('014', '1', '1337', 'yarn', 96, 100, 4, 1717507592600),
('015', '1', '1337', 'yarn', 68, 100, 4, 1717507592800),
('016', '1', '1338', 'docker', 65, 100, 4, 1717507592000),
('017', '1', '1338', 'docker', 98, 100, 4, 1717507592200),
('018', '1', '1338', 'docker', 87, 100, 4, 1717507592400),
('019', '1', '1338', 'docker', 96, 100, 4, 1717507592600),
('020', '1', '1338', 'docker', 68, 100, 4, 1717507592800),

-- run_1, scenario_2, it 2
('021', '1', '1337', 'yarn', 65, 100, 4, 1717507594000),
('022', '1', '1337', 'yarn', 98, 100, 4, 1717507594200),
('023', '1', '1337', 'yarn', 87, 100, 4, 1717507594400),
('024', '1', '1337', 'yarn', 96, 100, 4, 1717507594600),
('025', '1', '1337', 'yarn', 68, 100, 4, 1717507594800),
('026', '1', '1338', 'docker', 65, 100, 4, 1717507594000),
('027', '1', '1338', 'docker', 98, 100, 4, 1717507594200),
('028', '1', '1338', 'docker', 87, 100, 4, 1717507594400),
('029', '1', '1338', 'docker', 96, 100, 4, 1717507594600),
('030', '1', '1338', 'docker', 68, 100, 4, 1717507594800),

-- run_1, scenario_3, it 1
('1', '1337', 'yarn', 65, 100, 4, 1717507596000),
('1', '1337', 'yarn', 98, 100, 4, 1717507596200),
('1', '1337', 'yarn', 87, 100, 4, 1717507596400),
('1', '1337', 'yarn', 96, 100, 4, 1717507596600),
('1', '1337', 'yarn', 68, 100, 4, 1717507596800),
('1', '1338', 'docker', 65, 100, 4, 1717507596000),
('1', '1338', 'docker', 98, 100, 4, 1717507596200),
('1', '1338', 'docker', 87, 100, 4, 1717507596400),
('1', '1338', 'docker', 96, 100, 4, 1717507596600),
('1', '1338', 'docker', 68, 100, 4, 1717507596800),

-- run_1, scenario_3, it 2
('041', '1', '1337', 'yarn', 65, 100, 4, 1717507598000),
('042', '1', '1337', 'yarn', 98, 100, 4, 1717507598200),
('043', '1', '1337', 'yarn', 87, 100, 4, 1717507598400),
('044', '1', '1337', 'yarn', 96, 100, 4, 1717507598600),
('045', '1', '1337', 'yarn', 68, 100, 4, 1717507598800),
('046', '1', '1338', 'docker', 65, 100, 4, 1717507598000),
('047', '1', '1338', 'docker', 98, 100, 4, 1717507598200),
('048', '1', '1338', 'docker', 87, 100, 4, 1717507598400),
('049', '1', '1338', 'docker', 96, 100, 4, 1717507598600),
('050', '1', '1338', 'docker', 68, 100, 4, 1717507598800),

-- run_1, scenario_3, it 3
('051', '1', '1337', 'yarn', 65, 100, 4, 1717507600000),
('052', '1', '1337', 'yarn', 98, 100, 4, 1717507600200),
('053', '1', '1337', 'yarn', 87, 100, 4, 1717507600400),
('054', '1', '1337', 'yarn', 96, 100, 4, 1717507600600),
('055', '1', '1337', 'yarn', 68, 100, 4, 1717507600800),
('056', '1', '1338', 'docker', 65, 100, 4, 1717507600000),
('057', '1', '1338', 'docker', 98, 100, 4, 1717507600200),
('058', '1', '1338', 'docker', 87, 100, 4, 1717507600400),
('059', '1', '1338', 'docker', 96, 100, 4, 1717507600600),
('060', '1', '1338', 'docker', 68, 100, 4, 1717507600800),



-- run_2, scenario_2, it 1
('2', '1337', 'yarn', 65, 100, 4, 1717507690000),
('2', '1337', 'yarn', 98, 100, 4, 1717507690200),
('2', '1337', 'yarn', 87, 100, 4, 1717507690400),
('2', '1337', 'yarn', 96, 100, 4, 1717507690600),
('2', '1337', 'yarn', 68, 100, 4, 1717507690800),
('2', '1338', 'docker', 65, 100, 4, 1717507690000),
('2', '1338', 'docker', 98, 100, 4, 1717507690200),
('2', '1338', 'docker', 87, 100, 4, 1717507690400),
('2', '1338', 'docker', 96, 100, 4, 1717507690600),
('2', '1338', 'docker', 68, 100, 4, 1717507690800),

-- run_2, scenario_2, it 2
('2', '1337', 'yarn', 65, 100, 4, 1717507692000),
('2', '1337', 'yarn', 98, 100, 4, 1717507692200),
('2', '1337', 'yarn', 87, 100, 4, 1717507692400),
('2', '1337', 'yarn', 96, 100, 4, 1717507692600),
('2', '1337', 'yarn', 68, 100, 4, 1717507692800),
('2', '1338', 'docker', 65, 100, 4, 1717507692000),
('2', '1338', 'docker', 98, 100, 4, 1717507692200),
('2', '1338', 'docker', 87, 100, 4, 1717507692400),
('2', '1338', 'docker', 96, 100, 4, 1717507692600),
('2', '1338', 'docker', 68, 100, 4, 1717507692800),

-- run_2, scenario_3, it 1
('081', '2', '1337', 'yarn', 65, 100, 4, 1717507694000),
('082', '2', '1337', 'yarn', 98, 100, 4, 1717507694200),
('083', '2', '1337', 'yarn', 87, 100, 4, 1717507694400),
('084', '2', '1337', 'yarn', 96, 100, 4, 1717507694600),
('085', '2', '1337', 'yarn', 68, 100, 4, 1717507694800),
('086', '2', '1338', 'docker', 65, 100, 4, 1717507694000),
('087', '2', '1338', 'docker', 98, 100, 4, 1717507694200),
('088', '2', '1338', 'docker', 87, 100, 4, 1717507694400),
('089', '2', '1338', 'docker', 96, 100, 4, 1717507694600),
('090', '2', '1338', 'docker', 68, 100, 4, 1717507694800),

-- run_2, scenario_3, it 2
('2', '1337', 'yarn', 65, 100, 4, 1717507696000),
('2', '1337', 'yarn', 98, 100, 4, 1717507696200),
('2', '1337', 'yarn', 87, 100, 4, 1717507696400),
('2', '1337', 'yarn', 96, 100, 4, 1717507696600),
('2', '1337', 'yarn', 68, 100, 4, 1717507696800),
('2', '1338', 'docker', 65, 100, 4, 1717507696000),
('2', '1338', 'docker', 98, 100, 4, 1717507696200),
('2', '1338', 'docker', 87, 100, 4, 1717507696400),
('2', '1338', 'docker', 96, 100, 4, 1717507696600),
('2', '1338', 'docker', 68, 100, 4, 1717507696800),

-- run_2, scenario_3, it 3
('2', '1337', 'yarn', 65, 100, 4, 1717507698000),
('2', '1337', 'yarn', 98, 100, 4, 1717507698200),
('2', '1337', 'yarn', 87, 100, 4, 1717507698400),
('2', '1337', 'yarn', 96, 100, 4, 1717507698600),
('2', '1337', 'yarn', 68, 100, 4, 1717507698800),
('2', '1338', 'docker', 65, 100, 4, 1717507698000),
('2', '1338', 'docker', 98, 100, 4, 1717507698200),
('2', '1338', 'docker', 87, 100, 4, 1717507698400),
('2', '1338', 'docker', 96, 100, 4, 1717507698600),
('2', '1338', 'docker', 68, 100, 4, 1717507698800),



-- run_3, scenario_3, it 1
('3', '1337', 'yarn', 65, 100, 4, 1717507790000),
('3', '1337', 'yarn', 98, 100, 4, 1717507790200),
('3', '1337', 'yarn', 87, 100, 4, 1717507790400),
('3', '1337', 'yarn', 96, 100, 4, 1717507790600),
('3', '1337', 'yarn', 68, 100, 4, 1717507790800),
('3', '1338', 'docker', 65, 100, 4, 1717507790000),
('3', '1338', 'docker', 98, 100, 4, 1717507790200),
('3', '1338', 'docker', 87, 100, 4, 1717507790400),
('3', '1338', 'docker', 96, 100, 4, 1717507790600),
('3', '1338', 'docker', 68, 100, 4, 1717507790800),

-- run_3, scenario_3, it 2
('3', '1337', 'yarn', 65, 100, 4, 1717507792000),
('3', '1337', 'yarn', 98, 100, 4, 1717507792200),
('3', '1337', 'yarn', 87, 100, 4, 1717507792400),
('3', '1337', 'yarn', 96, 100, 4, 1717507792600),
('3', '1337', 'yarn', 68, 100, 4, 1717507792800),
('3', '1338', 'docker', 65, 100, 4, 1717507792000),
('3', '1338', 'docker', 98, 100, 4, 1717507792200),
('3', '1338', 'docker', 87, 100, 4, 1717507792400),
('3', '1338', 'docker', 96, 100, 4, 1717507792600),
('3', '1338', 'docker', 68, 100, 4, 1717507792800),

-- run_3, scenario_3, it 3
('3', '1337', 'yarn', 65, 100, 4, 1717507794000),
('3', '1337', 'yarn', 98, 100, 4, 1717507794200),
('3', '1337', 'yarn', 87, 100, 4, 1717507794400),
('3', '1337', 'yarn', 96, 100, 4, 1717507794600),
('3', '1337', 'yarn', 68, 100, 4, 1717507794800),
('3', '1338', 'docker', 65, 100, 4, 1717507794000),
('3', '1338', 'docker', 98, 100, 4, 1717507794200),
('3', '1338', 'docker', 87, 100, 4, 1717507794400),
('3', '1338', 'docker', 96, 100, 4, 1717507794600),
('3', '1338', 'docker', 68, 100, 4, 1717507794800);
