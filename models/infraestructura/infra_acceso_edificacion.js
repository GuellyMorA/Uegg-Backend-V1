'use strict';
module.exports = (sequelize, DataTypes) => {
  const infra_acceso_edificacion = sequelize.define('infra_acceso_edificacion', {
    infra_predio_id: DataTypes.INTEGER,
    ascensor: DataTypes.BOOLEAN,
    acceso_universal: DataTypes.BOOLEAN,
    conoce_normativa: DataTypes.BOOLEAN
  }, {
    tableName: 'infra_acceso_edificacion',
    timestamps: false
  });
  infra_acceso_edificacion.associate = function(models) {
    // associations can be defined here
  };
  return infra_acceso_edificacion;
};