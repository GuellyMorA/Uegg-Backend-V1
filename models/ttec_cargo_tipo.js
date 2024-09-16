'use strict';
module.exports = (sequelize, DataTypes) => {
  const TtecCargoTipo = sequelize.define('ttec_cargo_tipo', {
    cargo: DataTypes.STRING,
    obs: DataTypes.STRING,
    subsistema: DataTypes.STRING
  }, {
    tableName: 'ttec_cargo_tipo',
    timestamps: false,
  });
  TtecCargoTipo.associate = function(models) {
  };
  return TtecCargoTipo;
};