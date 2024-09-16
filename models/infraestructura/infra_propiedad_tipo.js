'use strict';
module.exports = (sequelize, DataTypes) => {
	const  InfraPropiedadTipo = sequelize.define('infraPropiedadTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		propiedad: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'propiedad'
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
		tableName: 'infra_propiedad_tipo',
		timestamps: false
	});
	return InfraPropiedadTipo;
};
