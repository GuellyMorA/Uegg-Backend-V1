'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_ambiente_tipo = sequelize.define('infra_ambiente_tipo', {
    ambiente: DataTypes.STRING,
    es_vigente: DataTypes.BOOLEAN,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE,
    infra_ambiente_categoria_tipo_id: DataTypes.INTEGER
  }, {
  	tableName: 'infra_ambiente_tipo',
	timestamps: false
  });
  Infra_ambiente_tipo.associate = function(models) {
    // associations can be defined here
  };
  return Infra_ambiente_tipo;
};