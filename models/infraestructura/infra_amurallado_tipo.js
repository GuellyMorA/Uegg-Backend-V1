'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraAmuralladoTipo =  sequelize.define('infraAmuralladoTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		amurallado: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'amurallado'
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
		tableName: 'infra_amurallado_tipo',
		timestamps: false
	});
	return InfraAmuralladoTipo;
};
