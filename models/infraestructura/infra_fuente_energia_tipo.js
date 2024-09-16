'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraFuenteEnergiaTipo = sequelize.define('infraFuenteEnergiaTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		fuenteEnergia: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'fuente_energia'
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
		tableName: 'infra_fuente_energia_tipo',
		timestamps: false
	});
	return InfraFuenteEnergiaTipo;
};
