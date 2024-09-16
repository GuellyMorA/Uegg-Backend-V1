'use strict';
module.exports = (sequelize, DataTypes) => {
  const WfAsignacionTareaTipo = sequelize.define('wf_asignacion_tarea_tipo', {
    nombre: DataTypes.STRING
  }, {
    tableName: 'wf_asignacion_tarea_tipo',
    timestamps: false,
  });
  WfAsignacionTareaTipo.associate = function(models) {
  };
  return WfAsignacionTareaTipo;
};