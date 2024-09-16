'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_pedagogico_recreativo = sequelize.define('infra_pedagogico_recreativo', {
    infra_ambiente_id: DataTypes.INTEGER,
    infra_destinado_tipo_id: DataTypes.INTEGER
  }, {
  	tableName: 'infra_pedagogico_recreativo',
	timestamps: false
  });
  Infra_pedagogico_recreativo.associate = function(models) {
    Infra_pedagogico_recreativo.belongsTo(models.infra_ambiente_destinado_tipo, {
    	foreignKey: 'infra_destinado_tipo_id',
    	as: 'infra_destinado_tipo',
    });
  };
  return Infra_pedagogico_recreativo;
};