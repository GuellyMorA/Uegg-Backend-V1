'use strict';
module.exports = (sequelize, DataTypes) => {
    const infra_internet_conexion_tipo = sequelize.define('infra_internet_conexion_tipo', { // gma const InfraInternetConexionTipo = sequelize.define('infraInternetConexionTipo', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        conexion_tipo: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'conexion_tipo'
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
        }
    }, {
        tableName: 'infra_internet_conexion_tipo',
        timestamps: false
    });
    infra_internet_conexion_tipo.associate = function(models) { // gma InfraInternetConexionTipo.associate = function(models) {
        // associations can be defined here
    };
    return infra_internet_conexion_tipo; // gma return InfraInternetConexionTipo;
};