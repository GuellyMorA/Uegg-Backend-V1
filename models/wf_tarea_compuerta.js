'use strict';
module.exports = (sequelize, DataTypes) => {
  const WfTareaCompuerta = sequelize.define('wf_tarea_compuerta', {
    flujo_proceso_id: DataTypes.INTEGER,
    wf_compuerta_id: DataTypes.INTEGER,
    condicion: DataTypes.STRING,
    condicion_tarea_siguiente: DataTypes.INTEGER
  }, {
    tableName: 'wf_tarea_compuerta',
    timestamps: false,
  });
  WfTareaCompuerta.associate = function(models) {
    WfTareaCompuerta.belongsTo(models.flujo_proceso, {
    	foreignKey: 'flujo_proceso_id'
    });
    WfTareaCompuerta.belongsTo(models.wf_compuerta, {
    	foreignKey: 'wf_compuerta_id'
    });
  };
  return WfTareaCompuerta;
};