'use strict';
module.exports = (sequelize, DataTypes) => {
  const TramiteEstado = sequelize.define('tramite_estado', {
    tramite_estado: DataTypes.STRING,
    obs: DataTypes.STRING
  }, {
    tableName: 'tramite_estado',
    timestamps: false,
  });
  TramiteEstado.associate = function(models) {
  };
  return TramiteEstado;
};