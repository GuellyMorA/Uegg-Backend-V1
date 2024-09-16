'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraInstalacionTipo =  sequelize.define('infraInstalacionTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		instalacion: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'instalacion'
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
		tableName: 'infra_instalacion_tipo',
		timestamps: false
	});
	return InfraInstalacionTipo;
};
