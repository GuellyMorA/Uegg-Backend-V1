'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_no_pedagogico_vivienda = sequelize.define('infra_no_pedagogico_vivienda', {
    infra_ambiente_id: DataTypes.INTEGER,
    habitante: DataTypes.STRING,
    banio: DataTypes.STRING,
    ducha: DataTypes.STRING,
    cocina: DataTypes.STRING
  }, {
    tableName: 'infra_no_pedagogico_vivienda',
    timestamps: false
  });
  Infra_no_pedagogico_vivienda.associate = function(models) {
    // associations can be defined here
  };
  return Infra_no_pedagogico_vivienda;
};