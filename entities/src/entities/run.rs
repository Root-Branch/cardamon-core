//! `SeaORM` Entity, @generated by sea-orm-codegen 1.0.0

use sea_orm::entity::prelude::*;

#[derive(Clone, Debug, PartialEq, DeriveEntityModel, Eq)]
#[sea_orm(table_name = "run")]
pub struct Model {
    #[sea_orm(primary_key)]
    pub id: i32,
    pub start_time: i64,
    pub stop_time: Option<i64>,
}

#[derive(Copy, Clone, Debug, EnumIter, DeriveRelation)]
pub enum Relation {
    #[sea_orm(has_many = "super::iteration::Entity")]
    Iteration,
    #[sea_orm(has_many = "super::metrics::Entity")]
    Metrics,
}

impl Related<super::iteration::Entity> for Entity {
    fn to() -> RelationDef {
        Relation::Iteration.def()
    }
}

impl Related<super::metrics::Entity> for Entity {
    fn to() -> RelationDef {
        Relation::Metrics.def()
    }
}

impl ActiveModelBehavior for ActiveModel {}