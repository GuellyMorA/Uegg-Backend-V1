'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraTiempoSuspendidoTipo = sequelize.define('infraTiempoSuspendidoTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		tiempoSuspendido: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'tiempo_suspendido'
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
		tableName: 'infra_tiempo_suspendido_tipo',
		timestamps: false
	});
	return InfraTiempoSuspendidoTipo;
};
