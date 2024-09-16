'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraEvacuacionTipo = sequelize.define('infraEvacuacionTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		evacuacion: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'evacuacion'
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
		tableName: 'infra_evacuacion_tipo',
		timestamps: false
	});
	return InfraEvacuacionTipo;
};
