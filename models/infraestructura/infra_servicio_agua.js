'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraServicioAgua = sequelize.define('infraServicioAgua', {
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
		infraMedioSuministroAguaId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_medio_suministro_agua_tipo  ',
				key: 'id'
			},
			field: 'infra_medio_suministro_agua_id'
		},
		tanqueAlmacenamiento: {
			type: DataTypes.BOOLEAN,
			allowNull: true,
			field: 'tanque_almacenamiento'
		},
		bombaAgua: {
			type: DataTypes.BOOLEAN,
			allowNull: true,
			field: 'bomba_agua'
		},
		infraDisponibilidadServicioTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_disponibilidad_servicio_tipo ',
				key: 'id'
			},
			field: 'infra_disponibilidad_servicio_tipo_id'
		},
		infraAguaUsoTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_agua_uso_tipo ',
				key: 'id'
			},
			field: 'infra_agua_uso_tipo_id'
		},
		infraPurificadorAguaTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_purificador_agua_tipo ',
				key: 'id'
			},
			field: 'infra_purificador_agua_tipo_id'
		},
		cantidadAmbientesAgua: {
			type: DataTypes.INTEGER,
			allowNull: true,
			field: 'cantidad_ambientes_agua'
		}
	}, {
		tableName: 'infra_servicio_agua',
		timestamps: false
	});
	InfraServicioAgua.associate = (models) => {
		InfraServicioAgua.belongsTo(models.infraPurificadorAguaTipo, {
	    	foreignKey: 'infraPurificadorAguaTipoId',
	    	as: 'infraPurificadorAguaTipo',
	    });	
	    InfraServicioAgua.belongsTo(models.infraAguaUsoTipo, {
	    	foreignKey: 'infraAguaUsoTipoId',
	    	as: 'infraAguaUsoTipo',
	    }); 
	    InfraServicioAgua.belongsTo(models.infraMedioSuministroAguaTipo, {
	    	foreignKey: 'infraMedioSuministroAguaId',
	    	as: 'infraMedioSuministroAgua',
	    });   
	};
	return InfraServicioAgua;
};
