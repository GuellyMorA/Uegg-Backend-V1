'use strict';
module.exports = (sequelize, DataTypes) => {
    const InfraCaracteristicaTerreno = sequelize.define('infraCaracteristicaTerreno', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        areaTotal: {
            type: DataTypes.INTEGER,
            allowNull: true,
            field: 'area_total'
        },
        areaConstruida: {
            type: DataTypes.INTEGER,
            allowNull: true,
            field: 'area_construida'
        },
        infraTopografiaTipoId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_topografia_tipo',
                key: 'id'
            },
            field: 'topografia_tipo_id'
        },
        infraAmuralladoTipoId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_amurallado_tipo',
                key: 'id'
            },
            field: 'amurallado_tipo_id'
        },
        infraPredioId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_predio',
                key: 'id'
            },
            field: 'infra_predio_id'
        }
    }, {
        tableName: 'infra_caracteristica_terreno',
        timestamps: false
    });

    InfraCaracteristicaTerreno.associate = (models) => {
        InfraCaracteristicaTerreno.belongsTo(models.infraAmuralladoTipo, {
            foreignKey: 'infraAmuralladoTipoId',
            as: 'infraAmuralladoTipo',
        });

        InfraCaracteristicaTerreno.belongsTo(models.infraTopografiaTipo, {
            foreignKey: 'infraTopografiaTipoId',
            as: 'infraTopografiaTipo',
        });

    };

    return InfraCaracteristicaTerreno;
};