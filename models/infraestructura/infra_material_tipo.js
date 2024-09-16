'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_material_tipo = sequelize.define('infra_material_tipo', {
    material: DataTypes.STRING,
    fecha_registro: DataTypes.STRING,
    fecha_modificacion: DataTypes.STRING,
    es_vigente: DataTypes.BOOLEAN
  }, {
    tableName: 'infra_material_tipo',
    timestamps: false
  });
  Infra_material_tipo.associate = function(models) {
    // associations can be defined here
  };
  return Infra_material_tipo;
};