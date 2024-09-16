'use strict';
module.exports = (sequelize, DataTypes) => {
  const JurisdiccionGeograficaAcreditacionTipo = sequelize.define('jurisdiccion_geografica_acreditacion_tipo', {
    jurisdiccion_geografica_acreditacion: DataTypes.STRING,
    obs: DataTypes.STRING,
  }, {
    tableName: 'jurisdiccion_geografica_acreditacion_tipo',
    timestamps: false
  });
  JurisdiccionGeograficaAcreditacionTipo.associate = function(models) {

  };
  return JurisdiccionGeograficaAcreditacionTipo;
};