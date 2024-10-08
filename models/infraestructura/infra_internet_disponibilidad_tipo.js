'use strict';
module.exports = (sequelize, DataTypes) => {
    const infra_internet_disponibilidad_tipo = sequelize.define('infra_internet_disponibilidad_tipo', { // gma const InfraInternetDisponibilidadTipo = sequelize.define('infraInternetDisponibilidadTipo', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        disponibilidad_tipo: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'disponibilidad_tipo'
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
        tableName: 'infra_internet_disponibilidad_tipo',
        timestamps: false
    });
    infra_internet_disponibilidad_tipo.associate = function(models) { // gma InfraInternetDisponibilidadTipo.associate = function(models) {
        // associations can be defined here
    };
    return infra_internet_disponibilidad_tipo; // gma  return InfraInternetDisponibilidadTipo;
};