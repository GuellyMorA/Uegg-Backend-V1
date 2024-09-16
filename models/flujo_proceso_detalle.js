'use strict';
module.exports = (sequelize, DataTypes) => {
  const FlujoProcesoDetalle = sequelize.define('flujo_proceso_detalle', {
    flujo_proceso_id_sig: DataTypes.INTEGER,
    flujo_proceso_id_ant: DataTypes.INTEGER,
    obs: DataTypes.STRING
  }, {
    tableName: 'flujo_proceso_detalle',
    timestamps: false,
  });
  FlujoProcesoDetalle.associate = function(models) {
    FlujoProcesoDetalle.belongsTo(models.flujo_proceso, {
    	foreignKey: 'flujo_proceso_id_sig'
    });
    FlujoProcesoDetalle.belongsTo(models.flujo_proceso, {
    	foreignKey: 'flujo_proceso_id_ant'
    });
  };
  return FlujoProcesoDetalle;
};