'use strict';
module.exports = (sequelize, DataTypes) => {
  const WfSolicitudTramite = sequelize.define('wf_solicitud_tramite', {
    datos: DataTypes.TEXT,
    es_valido: DataTypes.BOOLEAN,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE,
    tramite_detalle_id: DataTypes.INTEGER,
    lugar_tipo_localidad_id: DataTypes.INTEGER,
    lugar_tipo_distrito_id: DataTypes.INTEGER
  }, {
    tableName: 'wf_solicitud_tramite',
    timestamps: false,
  });
  WfSolicitudTramite.associate = function(models) {
    WfSolicitudTramite.belongsTo(models.tramite_detalle, {
    	foreignKey: 'tramite_detalle_id'
    });
  };
  return WfSolicitudTramite;
};