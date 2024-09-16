'use strict';
module.exports = (sequelize, DataTypes) =>{
	const InfraServicioSaneamiento = sequelize.define('infraServicioSaneamiento', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		infraPredioId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_predio',
				key: 'id'
			},
			field: 'infra_predio_id'
		},
		infraMedioEliminacionBasuraTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_medio_eliminacion_basura_tipo',
				key: 'id'
			},
			field: 'infra_medio_eliminacion_basura_tipo_id'
		},
		infraPeriodicidadEliminacionBasuraTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_periodicidad_eliminacion_basura_tipo',
				key: 'id'
			},
			field: 'infra_periodicidad_eliminacion_basura_tipo_id'
		}
	}, {
		tableName: 'infra_servicio_saneamiento',
		timestamps: false
	});
	InfraServicioSaneamiento.associate = (models) => {
		InfraServicioSaneamiento.belongsTo(models.infraMedioEliminacionBasuraTipo, {
	    	foreignKey: 'infraMedioEliminacionBasuraTipoId',
	    	as: 'infraMedioEliminacionBasuraTipo',
	    });	    
	};
	return InfraServicioSaneamiento;
};
