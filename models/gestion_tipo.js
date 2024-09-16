'use strict';
module.exports = (sequelize, DataTypes) => {
  const GestionTipo = sequelize.define('gestion_tipo', {
    gestion: DataTypes.STRING,
    obs: DataTypes.STRING
  }, {
    tableName: 'gestion_tipo',
    timestamps: false,
  });
  GestionTipo.associate = function(models) {
  };
  return GestionTipo;
};