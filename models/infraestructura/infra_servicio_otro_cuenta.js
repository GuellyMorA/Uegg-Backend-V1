'use strict';
module.exports = (sequelize, DataTypes) => {
	const  infra_servicio_otro_cuenta = sequelize.define('infra_servicio_otro_cuenta', {		
		infra_predio_id:DataTypes.INTEGER,
		infra_servicio_otro_tipo_id:DataTypes.INTEGER,
		infra_predio_institucioneducativa_id:DataTypes.INTEGER
	}, {
		tableName: 'infra_servicio_otro_cuenta',
		timestamps: false
	});
	return infra_servicio_otro_cuenta;
};

