'use strict';
module.exports = (sequelize, DataTypes) =>{
	const InfraGradaRampaCuentaTipo =  sequelize.define('infraGradaRampaCuentaTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		caracteristicaGrada: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'caracteristica_grada'
		},
		esVigente: {
			type: DataTypes.BOOLEAN,
			allowNull: true,
			field: 'es_vigente'
		},
		fechaRegistro: {
			type: DataTypes.DATE,
			allowNull: true,
			field: 'fecha_registro'
		},
		fechaModificacion: {
			type: DataTypes.DATE,
			allowNull: true,
			field: 'fecha_modificacion'
		}
	}, {
		tableName: 'infra_grada_rampa_cuenta_tipo',
		timestamps: false
	});
	return InfraGradaRampaCuentaTipo;
};
