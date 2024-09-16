'use strict';
module.exports = (sequelize, DataTypes) => {
  const infra_acceso_predio_transporte = sequelize.define('infra_acceso_predio_transporte', {
    infra_predio_id: DataTypes.INTEGER,
    medio_transporte_tipo_id: DataTypes.INTEGER,
    dias: DataTypes.INTEGER,
    horas: DataTypes.INTEGER,
    minutos: DataTypes.INTEGER,
    costo: DataTypes.INTEGER,
    infra_acceso_tipo_id: DataTypes.INTEGER
  }, {
    tableName: 'infra_acceso_predio_transporte',
    timestamps: false
  });
  infra_acceso_predio_transporte.associate = function(models) {
    // associations can be defined here
  };
  return infra_acceso_predio_transporte;
};