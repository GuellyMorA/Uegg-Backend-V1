'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraDisponibilidadServicioTipo = sequelize.define('infraDisponibilidadServicioTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		disponibilidadServicio: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'disponibilidad_servicio'
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
		tableName: 'infra_disponibilidad_servicio_tipo',
		timestamps: false
	});
	return InfraDisponibilidadServicioTipo;
};
