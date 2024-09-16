'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraRiesgo = sequelize.define('infraRiesgo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		infraPredioId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_predio',
				key: 'id'
			},
			field: 'infra_predio_id'
		},
		claseSuspendida: {
			type: DataTypes.BOOLEAN,
			allowNull: true,
			field: 'clase_suspendida'
		},
		infraTiempoSuspendidoTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_tiempo_suspendido_tipo',
				key: 'id'
			},
			field: 'infra_tiempo_suspendido_tipo_id'
		},
		utilizadoAlbergue: {
			type: DataTypes.BOOLEAN,
			allowNull: true,
			field: 'utilizado_albergue'
		},
		cantidadTimbrePanico: {
			type: DataTypes.INTEGER,
			allowNull: true,
			field: 'cantidad_timbre_panico'
		},
		cantidadExtintores: {
			type: DataTypes.INTEGER,
			allowNull: true,
			field: 'cantidad_extintores'
		},
		cantidadSalidasEmergencias: {
			type: DataTypes.INTEGER,
			allowNull: true,
			field: 'cantidad_salidas_emergencias'
		},
		infraEvacuacionTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_evacuacion_tipo',
				key: 'id'
			},
			field: 'infra_evacuacion_tipo_id'
		}
	}, {
		tableName: 'infra_riesgo',
		timestamps: false
	});
	InfraRiesgo.associate = (models) => {
		InfraRiesgo.belongsTo(models.infraTiempoSuspendidoTipo, {
			foreignKey: 'infraTiempoSuspendidoTipoId',
			as: 'infraTiempoSuspendidoTipo',
		});

		InfraRiesgo.belongsTo(models.infraEvacuacionTipo, {
			foreignKey: 'infraEvacuacionTipoId',
			as: 'infraEvacuacionTipo',
		});

	};
	return InfraRiesgo;
};
