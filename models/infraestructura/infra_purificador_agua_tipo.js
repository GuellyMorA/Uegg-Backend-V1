'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraPurificadorAguaTipo = sequelize.define('infraPurificadorAguaTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		purificadorAgua: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'purificador_agua'
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
		tableName: 'infra_purificador_agua_tipo',
		timestamps: false
	});
	return InfraPurificadorAguaTipo;
};
