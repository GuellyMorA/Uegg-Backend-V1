'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_no_pedagogico_internado = sequelize.define('infra_no_pedagogico_internado', {
    infra_ambiente_id: DataTypes.INTEGER,
    funciona_internado: DataTypes.STRING,
    distancia: DataTypes.STRING,
    infra_responsable_tipo_id: DataTypes.INTEGER,
    litera: DataTypes.STRING,
    cama: DataTypes.STRING
  }, {
  	tableName: 'infra_no_pedagogico_internado',
	timestamps: false
  });
  Infra_no_pedagogico_internado.associate = function(models) {
    Infra_no_pedagogico_internado.belongsTo(models.infra_responsable_tipo, {
    	foreignKey: 'infra_responsable_tipo_id',
    	as: 'infra_responsable_tipo',
    });
  };
  return Infra_no_pedagogico_internado;
};