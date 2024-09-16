'use strict';
module.exports = (sequelize, DataTypes) => {
  const infra_servicio_otro = sequelize.define('infra_servicio_otro', {
    infra_predio_id: DataTypes.INTEGER
  }, {
  	tableName: 'infra_servicio_otro',
	timestamps: false
  });
  infra_servicio_otro.associate = function(models) {
    // associations can be defined here
  };
  return infra_servicio_otro;
};