'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraCaracteristicaEdificacion =  sequelize.define('infraCaracteristicaEdificacion', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		infraEdificacionTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_edificacion_tipo',
				key: 'id'
			},
			field: 'infra_edificacion_tipo_id'
		},
		infraPredioId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_predio',
				key: 'id'
			},
			field: 'infra_predio_id'
		}
	}, {
		tableName: 'infra_caracteristica_edificacion',
		timestamps: false
	});
	InfraCaracteristicaEdificacion.associate = (models) => {
		InfraCaracteristicaEdificacion.belongsTo(models.infraEdificacionTipo, {
			foreignKey: 'infraEdificacionTipoId',
			as: 'infraEdificacionTipo',
		});
	};
	return InfraCaracteristicaEdificacion;
};
