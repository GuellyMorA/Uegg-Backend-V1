'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraBloque = sequelize.define('infraBloque', {
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
		bloque: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'bloque'
		},
		areaAprox: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'area_aprox'
		}
	}, {
		tableName: 'infra_bloque',
		timestamps: false
	});
	
	return InfraBloque;

};
