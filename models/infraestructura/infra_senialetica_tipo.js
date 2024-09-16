'use strict';
module.exports = (sequelize, DataTypes) => {
	const  InfraSenialeticaTipo = sequelize.define('infraSenialeticaTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		senialetica: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'senialetica'
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
		tableName: 'infra_senialetica_tipo',
		timestamps: false
	});
	return InfraSenialeticaTipo;
};
