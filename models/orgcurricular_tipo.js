'use strict';
module.exports = (sequelize, DataTypes) => {
  const OrgcurricularTipo = sequelize.define('orgcurricular_tipo', {
    orgcurricula: DataTypes.STRING,
    obs: DataTypes.STRING
  }, {
      tableName: 'orgcurricular_tipo',
      timestamps: false
    });
    OrgcurricularTipo.associate = function(models) {
 
    };
  
  return OrgcurricularTipo;
};