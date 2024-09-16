'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraMobiliarioTipo = sequelize.define('infraMobiliarioTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		mobiliario: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'mobiliario'
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
		tableName: 'infra_mobiliario_tipo',
		timestamps: false
	});
	return InfraMobiliarioTipo;
};
