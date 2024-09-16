'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraEdificacionTipo = sequelize.define('infraEdificacionTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		edificacion: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'edificacion'
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
		tableName: 'infra_edificacion_tipo',
		timestamps: false
	});
	return InfraEdificacionTipo;
};
