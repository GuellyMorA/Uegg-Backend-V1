'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_ambiente_predio_institucioneducativa = sequelize.define('infra_ambiente_predio_institucioneducativa', {
    infra_ambiente_id: DataTypes.INTEGER,
    infra_predio_institucioneducativa: DataTypes.INTEGER,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE
  }, {
    tableName: 'infra_ambiente_predio_institucioneducativa',
    timestamps: false
  });
  Infra_ambiente_predio_institucioneducativa.associate = function(models) {
    // associations can be defined here
  };
  return Infra_ambiente_predio_institucioneducativa;
};