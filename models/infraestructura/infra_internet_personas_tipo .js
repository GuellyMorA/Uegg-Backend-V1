'use strict';
module.exports = (sequelize, DataTypes) => {
    const infra_internet_personas_tipo = sequelize.define('infra_internet_personas_tipo', { // gma const InfraInternetPersonasTipo = sequelize.define('infraInternetPersonasTipo', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        persona_tipo: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'persona_tipo'
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
        tableName: 'infra_internet_personas_tipo',
        timestamps: false
    });
    infra_internet_personas_tipo.associate = function(models) { // gma InfraInternetPersonasTipo.associate = function(models) {
        // associations can be defined here
    };
    return infra_internet_personas_tipo; // gma return InfraInternetPersonasTipo;
};