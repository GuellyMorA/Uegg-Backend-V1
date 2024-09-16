'use strict';

module.exports = (sequelize, DataTypes) => {
  const Estudiante = sequelize.define('estudiante', {
    codigo_rude: DataTypes.STRING,
    carnet_identidad: DataTypes.STRING,
    pasaporte: DataTypes.STRING,
    paterno: DataTypes.STRING,
    materno: DataTypes.STRING,
    nombre: DataTypes.STRING,
    genero_tipo_id: DataTypes.INTEGER,
    estado_civil_id: DataTypes.INTEGER,
    lugar_nac_tipo_id: DataTypes.INTEGER,
    oficialia: DataTypes.STRING,
    libro: DataTypes.STRING,
    partida: DataTypes.STRING,
    folio: DataTypes.STRING,
    sangre_tipo_id: DataTypes.INTEGER,
    idioma_materno_id: DataTypes.INTEGER,
    segip_id: DataTypes.INTEGER,
    complemento: DataTypes.STRING,
    bolean: DataTypes.INTEGER,
    fecha_nacimiento: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE,
    correo: DataTypes.STRING,
    pais_tipo_id: DataTypes.INTEGER,
    localidad_nac: DataTypes.STRING,
    foto: DataTypes.STRING,
    celular: DataTypes.STRING,
    resolucionaprovatoria: DataTypes.STRING,
    carnet_codepedis: DataTypes.STRING,
    observacionadicional: DataTypes.STRING,
    carnet_ibc: DataTypes.STRING,
    lugar_prov_nac_tipo_id: DataTypes.INTEGER,
    libreta_militar: DataTypes.STRING,
    es_doble_nacionalidad: DataTypes.BOOLEAN,
    observacion: DataTypes.STRING,
    expedido_id: DataTypes.INTEGER
  }, {
    tableName: 'estudiante',
    timestamps: false,
  });

  Estudiante.associate = function(models) {
  };
  return Estudiante;
};