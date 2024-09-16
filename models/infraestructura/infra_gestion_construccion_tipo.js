'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraGestionConstruccionTipo = sequelize.define('infraGestionConstruccionTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		gestionConstruccion: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'gestion_construccion'
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
		tableName: 'infra_gestion_construccion_tipo',
		timestamps: false
	});
	return InfraGestionConstruccionTipo
};
