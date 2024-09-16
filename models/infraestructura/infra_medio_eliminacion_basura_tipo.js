'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraMedioEliminacionBasuraTipo = sequelize.define('infraMedioEliminacionBasuraTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		medioEliminacionBasura: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'medio_eliminacion_basura'
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
		tableName: 'infra_medio_eliminacion_basura_tipo',
		timestamps: false
	});
	return InfraMedioEliminacionBasuraTipo;
};
