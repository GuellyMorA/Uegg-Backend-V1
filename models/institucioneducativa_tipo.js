'use strict';
module.exports = (sequelize, DataTypes) => {
  const InstitucioneducativaTipo = sequelize.define('institucioneducativa_tipo', {
    descripcion: DataTypes.STRING,
    obs: DataTypes.STRING,
    orgcurricular_tipo_id: DataTypes.INTEGER,
  }, {
    tableName: 'institucioneducativa_tipo',
    timestamps: false
  });
  InstitucioneducativaTipo.associate = function(models) {
    // associations can be defined here
  };
  return InstitucioneducativaTipo;
};