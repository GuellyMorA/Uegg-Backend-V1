'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraEquipamientoBrigadaTipo =  sequelize.define('infraEquipamientoBrigadaTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		brigada: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'brigada'
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
		tableName: 'infra_equipamiento_brigada_tipo',
		timestamps: false
	});
	return InfraEquipamientoBrigadaTipo;
};
