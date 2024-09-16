'use strict';
module.exports = (sequelize, DataTypes) => {
  const TtecFormacionTipo = sequelize.define('ttec_formacion_tipo', {
    formacion: DataTypes.STRING,
    obs: DataTypes.STRING,
    subsistema: DataTypes.STRING
  }, {
    tableName: 'ttec_formacion_tipo',
    timestamps: false,
  });
  TtecFormacionTipo.associate = function(models) {
  };
  return TtecFormacionTipo;
};