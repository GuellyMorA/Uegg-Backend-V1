'use strict';
module.exports = (sequelize, DataTypes) => {
  const infra_servicio_otro_condicion = sequelize.define('infra_servicio_otro_condicion', {
    infra_predio_id: DataTypes.INTEGER,
    infra_condicion_id: DataTypes.INTEGER
  }, {
  	tableName: 'infra_servicio_otro_condicion',
	timestamps: false
  });
  infra_servicio_otro_condicion.associate = function(models) {
    // associations can be defined here
  };
  return infra_servicio_otro_condicion;
};