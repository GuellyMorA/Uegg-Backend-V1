'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraMedioAccesoTipo = sequelize.define('infraMedioAccesoTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		medioAcceso: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'medio_acceso'
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
		tableName: 'infra_medio_acceso_tipo',
		timestamps: false
	});
	return InfraMedioAccesoTipo;
};
