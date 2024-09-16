'use strict';
module.exports = (sequelize, DataTypes) => {
  const infra_acceso_medio = sequelize.define('infra_acceso_medio', {
    infra_acceso_edificacion_id: DataTypes.INTEGER,
    infra_medio_acceso_tipo_id: DataTypes.INTEGER,
    infra_ubicacion_tipo_id: DataTypes.INTEGER
  }, {
  	tableName: 'infra_acceso_medio',
	timestamps: false
  });
  infra_acceso_medio.associate = function(models) {
    // associations can be defined here
  };
  return infra_acceso_medio;
};