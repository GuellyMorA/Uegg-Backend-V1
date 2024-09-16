'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraEstadoTipo = sequelize.define('infraEstadoTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		estado: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'estado'
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
		tableName: 'infra_estado_tipo',
		timestamps: false
	});
	return InfraEstadoTipo;
};
