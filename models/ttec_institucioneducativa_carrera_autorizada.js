'use strict';
module.exports = (sequelize, DataTypes) => {
  const TtecInstitucioneducativaCarreraAutorizada = sequelize.define('ttec_institucioneducativa_carrera_autorizada', {
    institucioneducativa_id: DataTypes.INTEGER,
    ttec_carrera_tipo_id: DataTypes.INTEGER,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE,
    es_enviado: DataTypes.BOOLEAN,
    es_vigente: DataTypes.BOOLEAN
  }, {
    tableName: 'ttec_institucioneducativa_carrera_autorizada',
    timestamps: false,
  });
  TtecInstitucioneducativaCarreraAutorizada.associate = function(models) {
    TtecInstitucioneducativaCarreraAutorizada.belongsTo(models.institucioneducativa, {
    	foreignKey: 'institucioneducativa_id'
    });
    TtecInstitucioneducativaCarreraAutorizada.belongsTo(models.ttec_carrera_tipo, {
      foreignKey: 'ttec_carrera_tipo_id'
    });
    TtecInstitucioneducativaCarreraAutorizada.hasOne(models.ttec_resolucion_carrera, { 
      foreignKey: 'ttec_institucioneducativa_carrera_autorizada_id'
    });
  };
  return TtecInstitucioneducativaCarreraAutorizada;
};