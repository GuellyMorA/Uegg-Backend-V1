'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraRiesgoEventoTipo = sequelize.define('infraRiesgoEventoTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		evento: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'evento'
		},
		esVigente: {
			type: DataTypes.STRING,
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
		tableName: 'infra_riesgo_evento_tipo',
		timestamps: false
	});
	return InfraRiesgoEventoTipo;
};
