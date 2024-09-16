'use strict';
module.exports = (sequelize, DataTypes) => {
  const ApoderadoInscripcion = sequelize.define('apoderado_inscripcion', {
		apoderado_tipo_id: DataTypes.INTEGER,
		persona_id: DataTypes.INTEGER,
		estudiante_inscripcion_id: DataTypes.INTEGER,
		obs: DataTypes.STRING,
		es_validado: DataTypes.INTEGER,
  }, {
    tableName: 'apoderado_inscripcion',
    timestamps: false,
  });
  ApoderadoInscripcion.associate = function(models) {
  };
  return ApoderadoInscripcion;
};