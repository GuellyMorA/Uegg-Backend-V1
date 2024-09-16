'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_area_tipo = sequelize.define('infra_area_tipo', {
    area: DataTypes.STRING,
    es_vigente: DataTypes.BOOLEAN,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE
  }, {
    tableName: 'infra_area_tipo',
    timestamps: false
  });
  Infra_area_tipo.associate = function(models) {
    // associations can be defined here
  };
  return Infra_area_tipo;
};