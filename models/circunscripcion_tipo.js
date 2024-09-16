'use strict';
module.exports = (sequelize, DataTypes) => {
  const CircunscripcionTipo = sequelize.define('circunscripcion_tipo', {
    circunscripcion: DataTypes.STRING,
    obs: DataTypes.STRING,
  }, {
    tableName: 'circunscripcion_tipo',
    timestamps: false
  });
  CircunscripcionTipo.associate = function(models) {
    
  };
  return CircunscripcionTipo;
};