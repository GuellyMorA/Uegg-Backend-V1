'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraPeriodicidadEliminacionBasuraTipo = sequelize.define('infraPeriodicidadEliminacionBasuraTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		periodicidadEliminacionBasura: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'periodicidad_eliminacion_basura'
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
		tableName: 'infra_periodicidad_eliminacion_basura_tipo',
		timestamps: false
	});
	return InfraPeriodicidadEliminacionBasuraTipo;
};
