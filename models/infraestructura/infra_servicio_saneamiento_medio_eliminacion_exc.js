'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraServicioSaneamientoMedioEliminacionExc = sequelize.define('infraServicioSaneamientoMedioEliminacionExc', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		infraServicioSaneamientoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_servicio_saneamiento',
				key: 'id'
			},
			field: 'infra_servicio_saneamiento_id'
		},
		infraMedioEliminacionExcTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_medio_eliminacion_exc_tipo ',
				key: 'id'
			},
			field: 'infra_medio_eliminacion_exc_tipo_id'
		},
		otros: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'otros'
		}
	}, {
		tableName: 'infra_servicio_saneamiento_medio_eliminacion_exc',
		timestamps: false
	});
	InfraServicioSaneamientoMedioEliminacionExc.associate = (models) => {
		InfraServicioSaneamientoMedioEliminacionExc.belongsTo(models.infraMedioEliminacionExcTipo, {
	    	foreignKey: 'infraMedioEliminacionExcTipoId',
	    	as: 'infraMedioEliminacionExcTipo',
	    });	    
	};
	return InfraServicioSaneamientoMedioEliminacionExc;
};
