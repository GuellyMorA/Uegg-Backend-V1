'use strict';
module.exports = (sequelize, DataTypes) => {
  const infra_construccion = sequelize.define('infra_construccion', {
    infra_gestion_construccion_tipo_id: DataTypes.INTEGER,
    infra_entidad_ejecutora_id: DataTypes.INTEGER,
    gestion: DataTypes.INTEGER,
    discapacidad: DataTypes.STRING,
    detalle: DataTypes.STRING,
    infra_caracteristica_construccion_id: DataTypes.INTEGER
  }, {tableName: 'infra_construccion',
    timestamps: false});
  infra_construccion.associate = function(models) {
    // associations can be defined here
  };
  return infra_construccion;
};