'use strict';
module.exports = (sequelize, DataTypes) => {
  const TtecRegimenEstudioTipo = sequelize.define('ttec_regimen_estudio_tipo', {
    regimen_estudio: DataTypes.STRING,
    descripcion: DataTypes.STRING,
  }, {
    tableName: 'ttec_regimen_estudio_tipo',
    timestamps: false,
  });
  TtecRegimenEstudioTipo.associate = function(models) {
  };
  return TtecRegimenEstudioTipo;
}