'use strict';
module.exports = (sequelize, DataTypes) => {
	const InfraServicioOtroCategoriaTipo = sequelize.define('infraServicioOtroCategoriaTipo', {
		id: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		servicioCategoria: {
			type: DataTypes.STRING,
			allowNull: true,
			field: 'servicio_categoria'
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
		esVigente: {
			type: DataTypes.BOOLEAN,
			allowNull: true,
			field: 'es_vigente'
		}
	}, {
		tableName: 'infra_servicio_otro_categoria_tipo',
		timestamps: false
	});	    
		
	return InfraServicioOtroCategoriaTipo;

};
