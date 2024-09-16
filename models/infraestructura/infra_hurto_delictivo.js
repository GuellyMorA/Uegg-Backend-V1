'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraHurtoDelictivo =  sequelize.define('infraHurtoDelictivo', {
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
		hurtoDelictivo: {
			type: DataTypes.BOOLEAN,
			allowNull: true,
			field: 'hurto_delictivo'
		},
		gestionTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'gestion_tipo',
				key: 'id'
			},
			field: 'gestion_tipo_id'
		},
		turnoTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			field: 'turno_tipo_id'
		},
		ambiente: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'ambiente'
		},
		mobiliario: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'mobiliario'
		},
		acciones: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'acciones'
		}
	}, {
		tableName: 'infra_hurto_delictivo',
		timestamps: false
	});
	return InfraHurtoDelictivo;
};
