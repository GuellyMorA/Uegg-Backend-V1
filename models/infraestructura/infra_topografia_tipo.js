'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraTopografiaTipo = sequelize.define('infraTopografiaTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		topografia: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'topografia'
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
		tableName: 'infra_topografia_tipo',
		timestamps: false
	});
	return InfraTopografiaTipo;
};
