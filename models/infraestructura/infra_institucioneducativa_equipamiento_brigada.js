'use strict';
module.exports = (sequelize, DataTypes) => {
    const InfraInstitucioneducativaEquipamientoBrigada = sequelize.define('infraInstitucioneducativaEquipamientoBrigada', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        infraEquipamientoBrigadaTipoId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_equipamiento_brigada_tipo',
                key: 'id'
            },
            field: 'infra_equipamiento_brigada_tipo_id'
        },
        infraInstitucioneducativaPrevencionId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_institucioneducativa_prevencion',
                key: 'id'
            },
            field: 'infra_institucioneducativa_prevencion_id'
        },
        otro: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'equipamiento_brigada_otro'
        }
    }, {
        tableName: 'infra_institucioneducativa_equipamiento_brigada',
        timestamps: false
    });
    InfraInstitucioneducativaEquipamientoBrigada.associate = (models) => {
        InfraInstitucioneducativaEquipamientoBrigada.belongsTo(models.infraEquipamientoBrigadaTipo, {
            foreignKey: 'infraEquipamientoBrigadaTipoId',
            as: 'infraEquipamientoBrigadaTipo',
        });
    };
    return InfraInstitucioneducativaEquipamientoBrigada;
};