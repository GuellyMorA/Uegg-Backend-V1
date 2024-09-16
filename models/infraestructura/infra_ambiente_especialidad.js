'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_ambiente_especialidad = sequelize.define('infra_ambiente_especialidad', {
    infra_pedagogico_id: DataTypes.INTEGER,
    especialidad_tecnico_humanistico_tipo_id: DataTypes.INTEGER
  }, {
  	tableName: 'infra_ambiente_especialidad',
	timestamps: false
  });
  Infra_ambiente_especialidad.associate = function(models) {
    // associations can be defined here
  };
  return Infra_ambiente_especialidad;
};