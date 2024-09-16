'use strict';
module.exports = (sequelize, DataTypes) => {
  const infra_servicio_otro_tipo = sequelize.define('infra_servicio_otro_tipo', {
    servicio: DataTypes.STRING,
    es_vigente: DataTypes.BOOLEAN,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE,
    infra_servicio_otro_categoria_tipo_id: DataTypes.INTEGER
  }, {
      tableName: 'infra_servicio_otro_tipo',
      timestamps: false
  });
  infra_servicio_otro_tipo.associate = function(models) {
    // associations can be defined here
  };
  return infra_servicio_otro_tipo;
};