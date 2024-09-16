'use strict';
module.exports = (sequelize, DataTypes) => {
  const EstadoCivilTipo = sequelize.define('estado_civil_tipo', {
    estado_civil: DataTypes.STRING,
    esactivo: DataTypes.BOOLEAN
  }, {
    tableName: 'estado_civil_tipo',
    timestamps: false,
  });
  EstadoCivilTipo.associate = function(models) {
  };
  return EstadoCivilTipo;
};