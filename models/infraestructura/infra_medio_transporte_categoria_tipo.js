'use strict';
module.exports = (sequelize, DataTypes) => {
  const infra_medio_transporte_categoria_tipo = sequelize.define('infra_medio_transporte_categoria_tipo', {
    medio_transporte_categoria: DataTypes.STRING,
    es_vigente: DataTypes.STRING,
    fecha_registro: DataTypes.STRING,
    fecha_modificacion: DataTypes.STRING
  }, {
    tableName: 'infra_medio_transporte_categoria_tipo',
    timestamps: false
  });
  infra_medio_transporte_categoria_tipo.associate = function(models) {
    // associations can be defined here
  };
  return infra_medio_transporte_categoria_tipo;
};