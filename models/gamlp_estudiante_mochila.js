'use strict';
module.exports = (sequelize, DataTypes) => {
    const GamlpEstudianteMochila = sequelize.define('gamlp_estudiante_mochila', {
        estudiante_id: DataTypes.INTEGER,
        gestion_tipo_id: DataTypes.INTEGER,
        institucioneducativa_curso_id: DataTypes.INTEGER,
        institucioneducativa_id: DataTypes.INTEGER,
        es_entregado: DataTypes.BOOLEAN,
        fecha_entrega: DataTypes.DATE,
        fecha_registro: DataTypes.DATE,
        fecha_modificacion: DataTypes.DATE,
        material: DataTypes.TEXT,
    }, {
        tableName: 'gamlp_estudiante_mochila',
        timestamps: false
    });
    return GamlpEstudianteMochila;
};