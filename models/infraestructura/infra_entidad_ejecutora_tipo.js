'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraEntidadEjecutoraTipo = sequelize.define('infraEntidadEjecutoraTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		entidadEjecutora: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'entidad_ejecutora'
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
		tableName: 'infra_entidad_ejecutora_tipo',
		timestamps: false
	});
	return InfraEntidadEjecutoraTipo;
};
