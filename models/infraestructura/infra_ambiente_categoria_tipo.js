'use strict';
module.exports = (sequelize, DataTypes) => {
	 const  InfraAmbienteCategoriaTipo = sequelize.define('infraAmbienteCategoriaTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		ambienteCategoria: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'ambiente_categoria'
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
		},
		esVigente: {
			type: DataTypes.BOOLEAN,
			allowNull: true,
			field: 'es_vigente'
		}
	}, {
		tableName: 'infra_ambiente_categoria_tipo',
		timestamps: false
	});
	 return InfraAmbienteCategoriaTipo;
};
