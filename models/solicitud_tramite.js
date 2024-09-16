'use strict';
module.exports = (sequelize, DataTypes) => {
  const SolicitudTramite = sequelize.define('solicitud_tramite', {
    datos: DataTypes.TEXT,
    codigo: DataTypes.STRING,
    fecha_registro: DataTypes.DATE,
    estado: DataTypes.BOOLEAN
  }, {
    tableName: 'solicitud_tramite',
    timestamps: false,
  });
  SolicitudTramite.associate = function(models) {
  };
  return SolicitudTramite;
};