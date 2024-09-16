'use strict';
module.exports = (sequelize, DataTypes) => {
  const TramiteDetalle = sequelize.define('tramite_detalle', {
    obs: DataTypes.TEXT,
    tramite_detalle_id: DataTypes.INTEGER,
    tramite_id: DataTypes.INTEGER,
    tramite_estado_id: DataTypes.INTEGER,
    flujo_proceso_id: DataTypes.INTEGER,
    usuario_destinatario_id: DataTypes.INTEGER,
    fecha_registro: DataTypes.DATE,
    fecha_envio: DataTypes.DATE,
    fecha_recepcion: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE,
    usuario_remitente_id: DataTypes.INTEGER,
    valor_evaluacion: DataTypes.STRING,
  }, {
    tableName: 'tramite_detalle',
    timestamps: false,
  });
  TramiteDetalle.associate = function(models) {
    TramiteDetalle.belongsTo(models.flujo_proceso, {
    	foreignKey: 'flujo_proceso_id'
    });
    TramiteDetalle.belongsTo(models.tramite_detalle, {
    	foreignKey: 'tramite_detalle_id'
    });
    TramiteDetalle.belongsTo(models.tramite_estado, {
    	foreignKey: 'tramite_estado_id'
    });
    TramiteDetalle.belongsTo(models.tramite, {
    	foreignKey: 'tramite_id'
    });
    TramiteDetalle.belongsTo(models.usuario, {
    	foreignKey: 'usuario_destinatario_id'
    });
    TramiteDetalle.belongsTo(models.usuario, {
    	foreignKey: 'usuario_remitente_id'
    });
  };
  return TramiteDetalle;
};