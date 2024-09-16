'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraProximoTipo = sequelize.define('infraProximoTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		proximo: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'proximo'
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
		tableName: 'infra_proximo_tipo',
		timestamps: false
	});
	return InfraProximoTipo;
};
