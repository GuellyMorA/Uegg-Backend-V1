'use strict';
module.exports = (sequelize, DataTypes) => {
    const InfraServicioElectrico = sequelize.define('infraServicioElectrico', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        infraPredioId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_predio',
                key: 'id'
            },
            field: 'infra_predio_id'
        },
        infraFuenteEnergiaTipoId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_fuente_energia_tipo',
                key: 'id'
            },
            field: 'infra_fuente_energia_tipo_id'
        },
        infraInstalacionTipoId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_instalacion_tipo',
                key: 'id'
            },
            field: 'infra_instalacion_tipo_id'
        },
        infraDisponibilidadServicioTipoId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_disponibilidad_servicio_tipo ',
                key: 'id'
            },
            field: 'infra_disponibilidad_servicio_tipo_id'
        },
        cantidadAmbientePedagogico: {
            type: DataTypes.INTEGER,
            allowNull: true,
            field: 'cantidad_ambiente_pedagogico'
        },
        cantidadAmbienteNoPedagogico: {
            type: DataTypes.INTEGER,
            allowNull: true,
            field: 'cantidad_ambiente_no_pedagogico'
        },
        cantidadBanos: {
            type: DataTypes.INTEGER,
            allowNull: true,
            field: 'cantidad_banos'
        }
    }, {
        tableName: 'infra_servicio_electrico',
        timestamps: false
    });
    InfraServicioElectrico.associate = (models) => {
        InfraServicioElectrico.belongsTo(models.infraInstalacionTipo, {
            foreignKey: 'infraInstalacionTipoId',
            as: 'infraInstalacionTipo',
        });

        InfraServicioElectrico.belongsTo(models.infraFuenteEnergiaTipo, {
            foreignKey: 'infraFuenteEnergiaTipoId',
            as: 'infraFuenteEnergiaTipo',
        });

    };
    return InfraServicioElectrico;
};