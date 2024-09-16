'use strict';
module.exports = (sequelize, DataTypes) => {
  const infra_medio_transporte_tipo = sequelize.define('infra_medio_transporte_tipo', {
    descripcion_medio_transporte: DataTypes.STRING,
    es_vigente: DataTypes.STRING,
    fecha_registro: DataTypes.STRING,
    fecha_modificacion: DataTypes.STRING,
    infra_medio_transporte_tipo_id: DataTypes.INTEGER
  }, {
    tableName: 'infra_medio_transporte_tipo',
    timestamps: false
  });
  infra_medio_transporte_tipo.associate = function(models) {
    // associations can be defined here
  };
  return infra_medio_transporte_tipo;
};