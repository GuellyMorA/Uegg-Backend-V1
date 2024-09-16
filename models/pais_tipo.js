'use strict';
module.exports = (sequelize, DataTypes) => {
  const PaisTipo = sequelize.define('pais_tipo', {
	pais: DataTypes.STRING,
	desc_abreviada: DataTypes.STRING,
  }, {
    tableName: 'pais_tipo',
    timestamps: false,
  });
  PaisTipo.associate = function(models) {
  };
  return PaisTipo;
};