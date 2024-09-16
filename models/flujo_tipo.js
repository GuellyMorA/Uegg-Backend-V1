'use strict';
module.exports = (sequelize, DataTypes) => {
  const FlujoTipo = sequelize.define('flujo_tipo', {
    flujo: DataTypes.STRING,
    obs: DataTypes.STRING
  }, {
    tableName: 'flujo_tipo',
    timestamps: false,
  });
  FlujoTipo.associate = function(models) {
  };
  return FlujoTipo;
};