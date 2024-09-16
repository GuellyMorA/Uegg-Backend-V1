'use strict';
module.exports = (sequelize, DataTypes) => {
  const ProcesoTipo = sequelize.define('proceso_tipo', {
    proceso_tipo: DataTypes.STRING,
    obs: DataTypes.STRING,
  }, {
    tableName: 'proceso_tipo',
    timestamps: false,
  });
  ProcesoTipo.associate = function(models) {
  };
  return ProcesoTipo;
};