'use strict';
module.exports = (sequelize, DataTypes) => {
    const infra_internet_disponibilidad_servicio_tipo = sequelize.define('infra_internet_disponibilidad_servicio_tipo', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        infraServicioOtroCuentaId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            field: 'infra_servicio_otro_cuenta_id'
        },
        infraServicioOtroTipoId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            field: 'infra_servicio_otro_tipo_id'
        },
        infraInternetConexionTipoId: {
            type: DataTypes.INTEGER,
            allowNull: false,
            field: 'infra_internet_conexion_tipo_id'
        },
        infraInternetDisponibilidadTipoId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            field: 'infra_internet_disponibilidad_tipo_id'
        },
        infraInternetEmpresaServicioTipoId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            field: 'infra_internet_empresa_servicio_tipo_id'
        },
        infraInternetPersonasTipoId: {
            type: DataTypes.INTEGER,
            allowNull: false,
            field: 'infra_internet_personas_tipo_id'
        }

    }, {
        tableName: 'infra_internet_disponibilidad_servicio_tipo',
        timestamps: false
    });
    infra_internet_disponibilidad_servicio_tipo.associate = function(models) {
        // associations can be defined here
    };
    return infra_internet_disponibilidad_servicio_tipo;
};