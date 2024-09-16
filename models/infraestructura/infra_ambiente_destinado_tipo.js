'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_ambiente_destinado_tipo = sequelize.define('infra_ambiente_destinado_tipo', {
    destinado: DataTypes.STRING,
    es_vigente: DataTypes.BOOLEAN,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE
  }, {
    tableName: 'infra_ambiente_destinado_tipo',
    timestamps: false
  });
  Infra_ambiente_destinado_tipo.associate = function(models) {
    // associations can be defined here
  };
  return Infra_ambiente_destinado_tipo;
};