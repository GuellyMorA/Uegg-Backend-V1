'use strict';
module.exports = (sequelize, DataTypes) => {
  const WfPasosTipo = sequelize.define('wf_pasos_tipo', {
    nombre: DataTypes.STRING
  }, {
    tableName: 'wf_pasos_tipo',
    timestamps: false,
  });
  WfPasosTipo.associate = function(models) {
  };
  return WfPasosTipo;
};