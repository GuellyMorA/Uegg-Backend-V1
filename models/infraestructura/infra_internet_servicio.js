'use strict';
module.exports = (sequelize, DataTypes) => {
    const infra_internet_servicio = sequelize.define('infra_internet_servicio', { // gma const InfraInternetServicio = sequelize.define('infraInternetServicio', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },

        esVigente: {
            type: DataTypes.BOOLEAN,
            allowNull: true,
            field: 'es_vigente'
        },
        fechaRegistro: {
            type: DataTypes.DATE,
            allowNull: true,
            field: 'fecha_registro'
        },
        fechaModificacion: {
            type: DataTypes.DATE,
            allowNull: true,
            field: 'fecha_modificacion'
        },
        /* tipo: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_internet_conexion_tipo',
                key: 'id'
            },
            field: 'conexion_tipo'
        },
        empi: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_internet_disponibilidad_tipo',
                key: 'id'
            },
            field: 'empresa_tipo'
        },
        peri: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_internet_personas_tipo',
                key: 'id'
            },
            field: ' persona_tipo'
        },
        disp: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_internet_disponibilidad_tipo',
                key: 'id'
            },
            field: 'disponibilidad_tipo'
        } */

    }, {
        tableName: 'infra_internet_servicio',
        timestamps: false
    })
    return infra_internet_servicio; // gma return InfraInternetServicio;
}