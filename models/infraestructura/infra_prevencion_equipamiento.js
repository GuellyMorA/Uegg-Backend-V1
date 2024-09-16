'use strict';
module.exports = (sequelize, DataTypes) => {
    const InfraPrevencionEquipamiento = sequelize.define('infraPrevencionEquipamiento', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        infraEquipamientoTipo: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_equipamiento_tipo',
                key: 'id'
            },
            field: 'infra_equipamiento_tipo'
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
        funciona: {
            type: DataTypes.INTEGER,
            allowNull: true,
            field: 'funciona'
        },
        noFunciona: {
            type: DataTypes.INTEGER,
            allowNull: true,
            field: 'no_funciona'
        },
        anioColaboracion: {
            type: DataTypes.INTEGER,
            allowNull: true,
            field: 'anio_colaboracion'
        }

    }, {
        tableName: 'infra_prevencion_equipamiento',
        timestamps: false
    });
    return InfraPrevencionEquipamiento;
};