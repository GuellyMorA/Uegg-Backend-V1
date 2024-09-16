'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_responsable_tipo = sequelize.define('infra_responsable_tipo', {
    responsable: DataTypes.STRING,
    es_vigente: DataTypes.BOOLEAN,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE
  }, {
    tableName: 'infra_responsable_tipo',
    timestamps: false
  });
  Infra_responsable_tipo.associate = function(models) {
    // associations can be defined here
  };
  return Infra_responsable_tipo;
};