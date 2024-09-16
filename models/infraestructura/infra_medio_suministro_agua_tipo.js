'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraMedioSuministroAguaTipo = sequelize.define('infraMedioSuministroAguaTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		medioSuministroAgua: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'medio_suministro_agua'
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
		tableName: 'infra_medio_suministro_agua_tipo',
		timestamps: false
	});
	return InfraMedioSuministroAguaTipo;
};
