'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_artefacto_banio_tipo = sequelize.define('infra_artefacto_banio_tipo', {
    artefacto_banio: DataTypes.STRING,
    es_vigente: DataTypes.BOOLEAN,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE
  }, {
  	tableName: 'infra_artefacto_banio_tipo',
	timestamps: false
  });
  Infra_artefacto_banio_tipo.associate = function(models) {
    // associations can be defined here
  };
  return Infra_artefacto_banio_tipo;
};