'use strict';
module.exports = (sequelize, DataTypes) => {
  const IdiomaTipo = sequelize.define('idioma_tipo', {
    idioma: DataTypes.STRING,
	obs: DataTypes.STRING,
	es_vigente: DataTypes.BOOLEAN
  }, {
    tableName: 'idioma_tipo',
    timestamps: false,
  });
  IdiomaTipo.associate = function(models) {
  };
  return IdiomaTipo;
};