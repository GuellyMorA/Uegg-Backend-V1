'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraAccesoTipo = sequelize.define('infraAccesoTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		acceso: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'acceso'
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
		},
		infraAccesoPredioId: {
			type: DataTypes.INTEGER,
			allowNull: true,
			field: 'infra_acceso_predio_id'
		}
	}, {
		tableName: 'infra_acceso_tipo',
		timestamps: false
	});
	InfraAccesoTipo.associate = function(models) {
    // associations can be defined here
  };
	return InfraAccesoTipo;
};
