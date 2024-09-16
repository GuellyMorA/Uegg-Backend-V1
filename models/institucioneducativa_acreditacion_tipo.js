'use strict';
module.exports = (sequelize, DataTypes) => {
  const InstitucioneducativaAcreditacionTipo = sequelize.define('institucioneducativa_acreditacion_tipo', {
    institucioneducativa_acreditacion: DataTypes.STRING,
    obs: DataTypes.STRING
  }, {
      tableName: 'institucioneducativa_acreditacion_tipo',
      timestamps: false
    });
    InstitucioneducativaAcreditacionTipo.associate = function(models) {
    
    };
  
  return InstitucioneducativaAcreditacionTipo;
};