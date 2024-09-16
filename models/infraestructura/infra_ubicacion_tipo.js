'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraUbicacionTipo = sequelize.define('infraUbicacionTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		ubicacion: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'ubicacion'
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
		tableName: 'infra_ubicacion_tipo',
		timestamps: false
	});
	return InfraUbicacionTipo;
};
