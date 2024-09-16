'use strict';
module.exports = (sequelize, DataTypes) => {
  const GeneroTipo = sequelize.define('genero_tipo', {
    genero: DataTypes.STRING,
    obs: DataTypes.STRING
  }, {
    tableName: 'genero_tipo',
    timestamps: false,
  });
  GeneroTipo.associate = function(models) {
  };
  return GeneroTipo;
};