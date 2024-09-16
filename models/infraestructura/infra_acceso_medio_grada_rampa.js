'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraAccesoMedioGradaRampa = sequelize.define('infraAccesoMedioGradaRampa', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		infraAccesoMedioId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_acceso_medio',
				key: 'id'
			},
			field: 'infra_acceso_medio_id'
		},
		infraGradaRampaId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_grada_rampa_cuenta_tipo',
				key: 'id'
			},
			field: 'infra_grada_rampa_id'
		}
	}, {
		tableName: 'infra_acceso_medio_grada_rampa',
		timestamps: false
	});
	InfraAccesoMedioGradaRampa.associate = function(models){

	}
	return InfraAccesoMedioGradaRampa;
};
