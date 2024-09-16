'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraEquipamientoTipo = sequelize.define('infraEquipamientoTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		equipamiento: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'equipamiento'
		},
		infraEquipamientoCategoriaTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_equipamiento_categoria_tipo',
				key: 'id'
			},
			field: 'infra_equipamiento_categoria_tipo'
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
		tableName: 'infra_equipamiento_tipo',
		timestamps: false
	});
	InfraEquipamientoTipo.associate = (models) => {
		InfraEquipamientoTipo.belongsTo(models.infraEquipamientoCategoriaTipo, {
	    	foreignKey: 'infraEquipamientoCategoriaTipoId',
	    	as: 'infraEquipamientoCategoriaTipo',
	    });	    
	};
	return InfraEquipamientoTipo;
};
