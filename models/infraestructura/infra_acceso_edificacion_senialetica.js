'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraAccesoEdificacionSenialetica = sequelize.define('infraAccesoEdificacionSenialetica', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		infraAccesoMedioId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_acceso_medio',
				key: 'id'
			},
			field: 'infra_acceso_medio_id'
		},
		infraSenialeticaTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_senialetica_tipo',
				key: 'id'
			},
			field: 'infra_senialetica_tipo_id'
		},
		idiomaTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'idioma_tipo',
				key: 'id'
			},
			field: 'idioma_tipo_id'
		}
	}, {
		tableName: 'infra_acceso_edificacion_senialetica',
		timestamps: false
	});
	InfraAccesoEdificacionSenialetica.associate = function(models) {
    // associations can be defined here
  };
  return InfraAccesoEdificacionSenialetica;
};
