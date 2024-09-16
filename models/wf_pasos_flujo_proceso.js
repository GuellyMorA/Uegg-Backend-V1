'use strict';
module.exports = (sequelize, DataTypes) => {
  const WfPasosFlujoProceso = sequelize.define('wf_pasos_flujo_proceso', {
    wf_pasos_tipo_id: DataTypes.INTEGER,
    flujo_proceso_id: DataTypes.INTEGER,
    nombre: DataTypes.STRING,
    posicion: DataTypes.INTEGER,
  }, {
    tableName: 'wf_pasos_flujo_proceso',
    timestamps: false,
  });
  WfPasosFlujoProceso.associate = function(models) {
    WfPasosFlujoProceso.belongsTo(models.wf_pasos_tipo, {
    	foreignKey: 'wf_pasos_tipo_id'
    });
    WfPasosFlujoProceso.belongsTo(models.flujo_proceso, {
    	foreignKey: 'flujo_proceso_id'
    });
  };
  return WfPasosFlujoProceso;
};