'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraPiso = sequelize.define('infraPiso', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		piso: {
			type: DataTypes.INTEGER,
			allowNull: true,
			field: 'piso'
		},
		cantidadAmbientePedagogico: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'cantidad_ambiente_pedagogico'
		},
		cantidadAmbienteNoPedagogico: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'cantidad_ambiente_no_pedagogico'
		},
		cantidadBanios: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'cantidad_banios'
		},
		total: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'total'
		},
		infraBloqueId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_bloque',
				key: 'id'
			},
			field: 'infra_bloque_id'
		}
	}, {
		tableName: 'infra_piso',
		timestamps: false
	});
	return InfraPiso;
};
