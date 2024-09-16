'use strict';
module.exports = (sequelize, DataTypes) => {
  const TramiteTipo = sequelize.define('tramite_tipo', {
    tramite_tipo: DataTypes.STRING,
    obs: DataTypes.STRING
  }, {
    tableName: 'tramite_tipo',
    timestamps: false,
  });
  TramiteTipo.associate = function(models) {
  };
  return TramiteTipo;
};