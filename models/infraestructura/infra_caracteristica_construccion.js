'use strict';
module.exports = (sequelize, DataTypes) => {
  const infra_caracteristica_construccion = sequelize.define('infra_caracteristica_construccion', {
    infra_predio_id: DataTypes.INTEGER,
    infra_propiedad_tipo_id: DataTypes.INTEGER,
    razon_social: DataTypes.STRING,
    otro_documentacion: DataTypes.STRING,
    infra_documentacion_tipo_id: DataTypes.INTEGER,
    folio: DataTypes.STRING,
    partida: DataTypes.STRING,
    plano_aprobado: DataTypes.STRING,
    infra_edificacion_tipo_id: DataTypes.INTEGER
  }, {tableName: 'infra_caracteristica_construccion',
    timestamps: false
    });
  infra_caracteristica_construccion.associate = function(models) {
    // associations can be defined here
  };
  return infra_caracteristica_construccion;
};