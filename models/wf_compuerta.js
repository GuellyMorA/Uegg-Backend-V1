'use strict';
module.exports = (sequelize, DataTypes) => {
  const WfCompuerta = sequelize.define('wf_compuerta', {
    nombre: DataTypes.STRING
  }, {
    tableName: 'wf_compuerta',
    timestamps: false,
  });
  WfCompuerta.associate = function(models) {
  };
  return WfCompuerta;
};