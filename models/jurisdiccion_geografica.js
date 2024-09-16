'use strict';
module.exports = (sequelize, DataTypes) => {
  const JurisdiccionGeografica = sequelize.define('jurisdiccion_geografica', {
    lugar_tipo_id_localidad: DataTypes.INTEGER,
    lugar_tipo_id_distrito: DataTypes.INTEGER,
    obs: DataTypes.STRING,
    cordx: DataTypes.STRING,
    cordy: DataTypes.STRING,
    distrito_tipo_id: DataTypes.INTEGER,
    lugar_tipo_id_localidad2012: DataTypes.INTEGER,
    circunscripcion_tipo_id: DataTypes.INTEGER,
    cod_nuc: DataTypes.STRING,
    des_nuc: DataTypes.STRING,
    direccion: DataTypes.STRING,
    zona: DataTypes.STRING,
    juridiccion_acreditacion_tipo_id: DataTypes.INTEGER,
    validacion_geografica_tipo_id: DataTypes.INTEGER,
    fecha_modificacion_localizacion: DataTypes.DATE,
    fecha_modificacion_coordenada: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE,
    fecha_registro: DataTypes.DATE,
    usuario_id: DataTypes.INTEGER
  }, {
    tableName: 'jurisdiccion_geografica',
    timestamps: false
  });
  JurisdiccionGeografica.associate = function(models) {
    JurisdiccionGeografica.belongsTo(models.jurisdiccion_geografica_acreditacion_tipo, {
    	foreignKey: 'juridiccion_acreditacion_tipo_id'
    });
    JurisdiccionGeografica.belongsTo(models.circunscripcion_tipo, {
    	foreignKey: 'circunscripcion_tipo_id'
    });
    JurisdiccionGeografica.belongsTo(models.distrito_tipo, {
    	foreignKey: 'distrito_tipo_id'
    });
    JurisdiccionGeografica.belongsTo(models.lugar_tipo, {
    	foreignKey: 'lugar_tipo_id_localidad'
    });
    /* JurisdiccionGeografica.belongsTo(models.validacion_geografica_tipo, {
    	foreignKey: 'validacion_geografica_tipo_id'
    }); */
  };
  return JurisdiccionGeografica;
};