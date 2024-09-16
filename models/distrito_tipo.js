'use strict';
module.exports = (sequelize, DataTypes) => {
  const DistritoTipo = sequelize.define('distrito_tipo', {
    departamento_tipo_id: DataTypes.INTEGER,
    cod_planillas: DataTypes.INTEGER,
    tipo: DataTypes.STRING,
    obs: DataTypes.STRING,
    distrito: DataTypes.STRING
  }, {
    tableName: 'distrito_tipo',
    timestamps: false,
  });
  DistritoTipo.associate = function(models) {
    DistritoTipo.belongsTo(models.departamento_tipo, {
    	foreignKey: 'departamento_tipo_id'
    });
  };
  return DistritoTipo;
};