'use strict';
module.exports = (sequelize, DataTypes) => {
	const  InfraRiesgoEvento = sequelize.define('infraRiesgoEvento', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		infraRiesgoEventoTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_riesgo_evento_tipo',
				key: 'id'
			},
			field: 'infra_riesgo_evento_tipo_id'
		},
		infraRiesgoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_riesgo',
				key: 'id'
			},
			field: 'infra_riesgo_id'
		},
		mesInicial: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'mes_inicial'
		},
		mesFinal: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'mes_final'
		},
		eventoOtro: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'evento_otro'
		}
	}, {
		tableName: 'infra_riesgo_evento',
		timestamps: false
	});
	return InfraRiesgoEvento;
};
