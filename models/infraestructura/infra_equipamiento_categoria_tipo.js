'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraEquipamientoCategoriaTipo =  sequelize.define('infraEquipamientoCategoriaTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		equipamientoCategoria: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'equipamiento_categoria'
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
		tableName: 'infra_equipamiento_categoria_tipo',
		timestamps: false
	});
	return InfraEquipamientoCategoriaTipo;
};
