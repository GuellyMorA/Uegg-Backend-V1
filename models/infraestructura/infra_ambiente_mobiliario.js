'use strict';
module.exports = (sequelize, DataTypes) => {
  const infra_ambiente_mobiliario = sequelize.define('infra_ambiente_mobiliario', {
    infra_ambiente_id: DataTypes.INTEGER,
    infra_mobiliario_tipo_id: DataTypes.INTEGER,
    cantidad: DataTypes.INTEGER,
    infra_estado_tipo_id: DataTypes.INTEGER
  }, {
    tableName: 'infra_ambiente_mobiliario',
    timestamps: false
  });
  infra_ambiente_mobiliario.associate = function(models) {
    // associations can be defined here
  };
  return infra_ambiente_mobiliario;
};