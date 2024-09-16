'use strict';
module.exports = (sequelize, DataTypes) => {
  const DependenciaTipo = sequelize.define('dependencia_tipo', {
    dependencia: DataTypes.STRING,
    id_tipo_administracion: DataTypes.INTEGER
  }, {
      tableName: 'dependencia_tipo',
      timestamps: false
    });
    DependenciaTipo.associate = function(models) {
    };
  
  return DependenciaTipo;
};