//! `SeaORM` Entity, @generated by sea-orm-codegen 1.1.0

use sea_orm::entity::prelude::*;

#[derive(Clone, Debug, PartialEq, DeriveEntityModel)]
#[sea_orm(table_name = "cpu")]
pub struct Model {
    #[sea_orm(primary_key)]
    pub id: i32,
    pub name: String,
    #[sea_orm(column_type = "Double", nullable)]
    pub tdp: Option<f64>,
    pub power_curve_id: Option<i32>,
}

#[derive(Copy, Clone, Debug, EnumIter, DeriveRelation)]
pub enum Relation {
    #[sea_orm(
        belongs_to = "super::power_curve::Entity",
        from = "Column::PowerCurveId",
        to = "super::power_curve::Column::Id",
        on_update = "NoAction",
        on_delete = "NoAction"
    )]
    PowerCurve,
    #[sea_orm(has_many = "super::run::Entity")]
    Run,
}

impl Related<super::power_curve::Entity> for Entity {
    fn to() -> RelationDef {
        Relation::PowerCurve.def()
    }
}

impl Related<super::run::Entity> for Entity {
    fn to() -> RelationDef {
        Relation::Run.def()
    }
}

impl ActiveModelBehavior for ActiveModel {}