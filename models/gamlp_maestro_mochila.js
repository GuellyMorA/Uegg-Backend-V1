'use strict';
module.exports = (sequelize, DataTypes) => {
    const GamlpMaestroMochila = sequelize.define('gamlp_maestro_mochila', {
        persona_id: DataTypes.INTEGER,
        gestion_tipo_id: DataTypes.INTEGER,
        institucioneducativa_id: DataTypes.INTEGER,
        es_entregado: DataTypes.BOOLEAN,
        fecha_entrega: DataTypes.DATE,
        fecha_registro: DataTypes.DATE,
        fecha_modificacion: DataTypes.DATE,
        material: DataTypes.TEXT,
    }, {
        tableName: 'gamlp_maestro_mochila',
        timestamps: false
    });
    return GamlpMaestroMochila;
};