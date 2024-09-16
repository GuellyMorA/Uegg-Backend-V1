'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_ambiente_condicion = sequelize.define('infra_ambiente_condicion', {
    infra_condicion_id: DataTypes.INTEGER,
    infra_ambiente_id: DataTypes.INTEGER
  }, {
  	tableName: 'infra_ambiente_condicion',
	timestamps: false
  });
  Infra_ambiente_condicion.associate = function(models) {
    // associations can be defined here
  };
  return Infra_ambiente_condicion;
};