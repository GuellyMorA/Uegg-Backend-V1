'use strict';
module.exports = (sequelize, DataTypes) =>{
	const InfraCaracteristicasEspacio = sequelize.define('infraCaracteristicasEspacio', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		infraCaracteristicaTerrenoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_caracteristica_terreno',
				key: 'id'
			},
			field: 'infra_caracteristica_terreno_id'
		},
		infraEspacioTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_espacios_tipo',
				key: 'id'
			},
			field: 'infra_espacio_tipo_id'
		}
	}, {
		tableName: 'infra_caracteristicas_espacio',
		timestamps: false
	});
	InfraCaracteristicasEspacio.associate = (models) => {
		InfraCaracteristicasEspacio.belongsTo(models.infraEspaciosTipo, {
			foreignKey: 'infraEspacioTipoId',
			as: 'infraEspaciosTipo',
		});
	};
	return InfraCaracteristicasEspacio;
};
