'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraDocumentacionTipo = sequelize.define('infraDocumentacionTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		documentacion: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'documentacion'
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
		tableName: 'infra_documentacion_tipo',
		timestamps: false
	});
	return InfraDocumentacionTipo;
};
