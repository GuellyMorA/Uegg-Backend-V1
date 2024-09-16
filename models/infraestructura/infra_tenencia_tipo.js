'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_tenencia_tipo = sequelize.define('infra_tenencia_tipo', {
    tenencia: DataTypes.STRING,
    es_vigente: DataTypes.BOOLEAN,
    feha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE
  }, {
    tableName: 'infra_tenencia_tipo',
    timestamps: false
  });
  Infra_tenencia_tipo.associate = function(models) {
    // associations can be defined here
  };
  return Infra_tenencia_tipo;
};