'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraRiesgoProximo = sequelize.define('infraRiesgoProximo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
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
		infraProximoTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_proximo_tipo',
				key: 'id'
			},
			field: 'infra_proximo_tipo_id'
		}
	}, {
		tableName: 'infra_riesgo_proximo',
		timestamps: false
	});
	InfraRiesgoProximo.associate = (models) => {
		InfraRiesgoProximo.belongsTo(models.infraProximoTipo, {
			foreignKey: 'infraProximoTipoId',
			as: 'infraProximoTipo',
		});
	};
	return InfraRiesgoProximo;
};
