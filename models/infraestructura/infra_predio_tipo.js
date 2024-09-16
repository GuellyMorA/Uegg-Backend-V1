'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraPredioTipo = sequelize.define('infraPredioTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		nivel: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'nivel'
		},
		esVigente: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'es_vigente'
		},
		fechaRegistro2: {
			type: DataTypes.DATE,
			allowNull: true,
			field: 'fecha_registro2'
		},
		fechaModificacion: {
			type: DataTypes.DATE,
			allowNull: true,
			field: 'fecha_modificacion'
		}
	}, {
		tableName: 'infra_predio_tipo',
		timestamps: false
	});
	return InfraPredioTipo;
};
