'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_pedagogico = sequelize.define('infra_pedagogico', {
    infra_area_tipo_id: DataTypes.INTEGER,
    infra_ambiente_id: DataTypes.INTEGER
  }, {
  	tableName: 'infra_pedagogico',
	timestamps: false
  });
  Infra_pedagogico.associate = function(models) {
    // associations can be defined here
  };
  return Infra_pedagogico;
};