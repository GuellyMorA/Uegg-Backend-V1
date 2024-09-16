'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraHechoDelictivo = sequelize.define('infraHechoDelictivo', {
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
		hechoDelictivo: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'hecho_delictivo'
		}
	}, {
		tableName: 'infra_hecho_delictivo',
		timestamps: false
	});
	return InfraHechoDelictivo;
};
