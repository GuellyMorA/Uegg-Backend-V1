'use strict';
module.exports = (sequelize, DataTypes) => {
	const MedioTransporteTipo = sequelize.define('medioTransporteTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		descripcionMedioTrasnporte: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'descripcion_medio_trasnporte'
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
		tableName: 'medio_transporte_tipo',
		timestamps: false
	});
	return MedioTransporteTipo;
};
