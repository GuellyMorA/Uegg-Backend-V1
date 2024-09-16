'use strict';

module.exports = (sequelize, DataTypes) => {
  const InstitucioneducativaSucursal = sequelize.define('institucioneducativa_sucursal', {
  	sucursal_tipo_id: DataTypes.INTEGER,
	institucioneducativa_id: DataTypes.INTEGER,
	gestion_tipo_id: DataTypes.INTEGER,
	le_juridicciongeografica_id: DataTypes.INTEGER,
	nombre_subcea: DataTypes.STRING,
	telefono1: DataTypes.STRING,
	telefono2: DataTypes.STRING,
	referencia_telefono2: DataTypes.STRING,
	fax: DataTypes.STRING,
	email: DataTypes.STRING,
	casilla: DataTypes.STRING,
	cod_cerrada_id: DataTypes.INTEGER,
	periodo_tipo_id: DataTypes.INTEGER,
	turno_tipo_id: DataTypes.INTEGER,
	direccion: DataTypes.STRING,
	zona: DataTypes.STRING,
	esabierta: DataTypes.BOOLEAN
  }, {
    tableName: 'institucioneducativa_sucursal',
    timestamps: false
  });
  InstitucioneducativaSucursal.associate = function(models) {
    // associations can be defined here
  };
  return InstitucioneducativaSucursal;
};