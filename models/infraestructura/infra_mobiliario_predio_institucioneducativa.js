'use strict';
module.exports = (sequelize, DataTypes) => {
  const infra_mobiliario_predio_institucioneducativa = sequelize.define('infra_mobiliario_predio_institucioneducativa', {
    infra_ambiente_mobiliario_id: DataTypes.INTEGER,
    infra_predio_institucioneducativa: DataTypes.INTEGER,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE
  }, {
    tableName: 'infra_mobiliario_predio_institucioneducativa',
    timestamps: false
  });
  infra_mobiliario_predio_institucioneducativa.associate = function(models) {
    // associations can be defined here
  };
  return infra_mobiliario_predio_institucioneducativa;
};