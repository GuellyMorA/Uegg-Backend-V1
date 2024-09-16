'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraConstruccion =  sequelize.define('infraConstruccion', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		infraGestionConstruccionTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_gestion_construccion_tipo',
				key: 'id'
			},
			field: 'infra_gestion_construccion_tipo_id'
		},
		infraEntidadEjecutoraId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_entidad_ejecutora_tipo',
				key: 'id'
			},
			field: 'infra_entidad_ejecutora_id'
		},
		gestion: {
			type: DataTypes.INTEGER,
			allowNull: true,
			field: 'gestion'
		},
		discapacidad: {
			type: DataTypes.BOOLEAN,
			allowNull: true,
			field: 'discapacidad'
		},
		detalle: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'detalle'
		},
		infraCaracteristicaConstruccionId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_caracteristica_construccion',
				key: 'id'
			},
			field: 'infra_caracteristica_construccion_id'
		}
	}, {
		tableName: 'infra_construccion',
		timestamps: false
	});
	InfraConstruccion.associate = (models) => {
		InfraConstruccion.belongsTo(models.infraEntidadEjecutoraTipo, {
			foreignKey: 'infraEntidadEjecutoraId',
			as: 'infraEntidadEjecutoraTipo',
		});

		InfraConstruccion.belongsTo(models.infraGestionConstruccionTipo, {
			foreignKey: 'infraGestionConstruccionTipoId',
			as: 'infraGestionConstruccionTipo',
		});

	};
	return InfraConstruccion;
};
