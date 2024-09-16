'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_caracteristica_tipo = sequelize.define('infra_caracteristica_tipo', {
    caracteristica: DataTypes.STRING,
    fecha_registro: DataTypes.STRING,
    fecha_modificacion: DataTypes.STRING,
    es_vigente: DataTypes.BOOLEAN
  }, {
    tableName: 'infra_caracteristica_tipo',
    timestamps: false
  });
  Infra_caracteristica_tipo.associate = function(models) {
    // associations can be defined here
  };
  return Infra_caracteristica_tipo;
};