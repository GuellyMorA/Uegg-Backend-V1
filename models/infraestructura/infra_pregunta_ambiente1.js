'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraPreguntaAmbiente = sequelize.define('infraPreguntaAmbiente', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		infraPreguntaTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_pregunta_tipo',
				key: 'id'
			},
			field: 'infra_pregunta_tipo_id'
		},
		infraAmbienteCategoriaTipoId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'infra_ambiente_categoria_tipo',
				key: 'id'
			},
			field: 'infra_ambiente_categoria_tipo_id'
		}
	}, {
		tableName: 'infra_pregunta_ambiente',
		timestamps: false
	});
	return InfraPreguntaAmbiente;
};
