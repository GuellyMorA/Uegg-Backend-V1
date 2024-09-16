'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraPreguntaTipo = sequelize.define('infraPreguntaTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		pregunta: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'pregunta'
		},
		fechaRegistro: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'fecha_registro'
		},
		fechaModificacion: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'fecha_modificacion'
		},
		esVigente: {
			type: DataTypes.BOOLEAN,
			allowNull: true,
			field: 'es_vigente'
		}
	}, {
		tableName: 'infra_pregunta_tipo',
		timestamps: false
	});
	return InfraPreguntaTipo;
};
