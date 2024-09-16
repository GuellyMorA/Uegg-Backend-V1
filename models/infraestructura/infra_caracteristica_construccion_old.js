'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraCaracteristicaConstruccion =  sequelize.define('infraCaracteristicaConstruccion', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		infraCaracteristicaEdificacionId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_caracteristica_edificacion',
				key: 'id'
			},
			field: 'infra_caracteristica_edificacion_id'
		},
		infraPropiedadTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_propiedad_tipo',
				key: 'id'
			},
			field: 'infra_propiedad_tipo_id'
		},
		razonSocial: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'razon_social'
		},
		otroDocumentacion: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'otro_documentacion'
		},
		infraDocumentacionTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_documentacion_tipo',
				key: 'id'
			},
			field: 'infra_documentacion_tipo_id'
		},
		folio: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'folio'
		},
		partida: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'partida'
		},
		planoAprobado: {
			type: DataTypes.BOOLEAN,
			allowNull: true,
			field: 'plano_aprobado'
		}
	}, {
		tableName: 'infra_caracteristica_construccion',
		timestamps: false
	});
	InfraCaracteristicaConstruccion.associate = (models) => {
		InfraCaracteristicaConstruccion.belongsTo(models.infraDocumentacionTipo, {
			foreignKey: 'infraDocumentacionTipoId',
			as: 'infraDocumentacionTipo',
		});

		InfraCaracteristicaConstruccion.belongsTo(models.infraPropiedadTipo, {
			foreignKey: 'infraPropiedadTipoId',
			as: 'infraPropiedadTipo',
		});

	};
	return InfraCaracteristicaConstruccion;
};
