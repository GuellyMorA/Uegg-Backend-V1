'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_pregunta_ambiente = sequelize.define('infra_pregunta_ambiente', {
    infra_pregunta_tipo_id: DataTypes.INTEGER,
    infra_ambiente_categoria_tipo_id: DataTypes.INTEGER
  }, {
  	tableName: 'infra_pregunta_ambiente',
	timestamps: false
  });
  Infra_pregunta_ambiente.associate = function(models) {
    // associations can be defined here
  };
  return Infra_pregunta_ambiente;
};