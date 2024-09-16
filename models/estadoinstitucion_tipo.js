'use strict';
module.exports = (sequelize, DataTypes) => {
  const EstadoinstitucionTipo = sequelize.define('estadoinstitucion_tipo', {
    estadoinstitucion: DataTypes.STRING,
    obs_cerrada: DataTypes.STRING,
  }, {
      tableName: 'estadoinstitucion_tipo',
      timestamps: false
    });
    EstadoinstitucionTipo.associate = function(models) {
  };
  
  return EstadoinstitucionTipo;
};