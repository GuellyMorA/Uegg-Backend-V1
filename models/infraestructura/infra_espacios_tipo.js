'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraEspaciosTipo = sequelize.define('infraEspaciosTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		espacio: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'espacio'
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
		tableName: 'infra_espacios_tipo',
		timestamps: false
	});
	return InfraEspaciosTipo;
};
