/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('institucioneducativaEspecialidadTecnicoHumanistico', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		institucioneducativaId: {
			type: DataTypes.INTEGER,
			allowNull: false,
			references: {
				model: 'institucioneducativa',
				key: 'id'
			},
			field: 'institucioneducativa_id'
		},
		especialidadTecnicoHumanisticoTipoId: {
			type: DataTypes.INTEGER,
			allowNull: false,
			references: {
				model: 'especialidad_tecnico_humanistico_tipo',
				key: 'id'
			},
			field: 'especialidad_tecnico_humanistico_tipo_id'
		},
		gestionTipoId: {
			type: DataTypes.INTEGER,
			allowNull: false,
			references: {
				model: 'gestion_tipo',
				key: 'id'
			},
			field: 'gestion_tipo_id'
		},
		fechaRegistro: {
			type: DataTypes.DATEONLY,
			allowNull: false,
			defaultValue: sequelize.fn('now'),
			field: 'fecha_registro'
		},
		obs: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'obs'
		}
	}, {
		tableName: 'institucioneducativa_especialidad_tecnico_humanistico'
	});
};
