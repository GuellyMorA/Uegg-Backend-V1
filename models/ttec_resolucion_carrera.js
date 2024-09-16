'use strict';
module.exports = (sequelize, DataTypes) => {
  const TtecResolucionCarrera = sequelize.define('ttec_resolucion_carrera', {
    descripcion: DataTypes.TEXT,
    numero: DataTypes.TEXT,
    path: DataTypes.TEXT,
    fecha: DataTypes.DATE,
    resuelve: DataTypes.TEXT,
    ttec_resolucion_tipo_id: DataTypes.INTEGER,
    ttec_institucioneducativa_carrera_autorizada_id: DataTypes.INTEGER,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE,
    tiempo_estudio: DataTypes.INTEGER,
    carga_horaria: DataTypes.INTEGER,
    operacion: DataTypes.STRING,
    nivel_tipo_id: DataTypes.INTEGER,
    ttec_regimen_estudio_tipo_id: DataTypes.INTEGER
  }, {
    tableName: 'ttec_resolucion_carrera',
    timestamps: false,
  });
  TtecResolucionCarrera.associate = function(models) {
    // TtecResolucionCarrera.belongsTo(models.ttec_resolucion_tipo, {
    // 	foreignKey: 'ttec_resolucion_tipo_id'
    // });
    TtecResolucionCarrera.belongsTo(models.ttec_institucioneducativa_carrera_autorizada, {
      foreignKey: 'ttec_institucioneducativa_carrera_autorizada_id'
    });
    // TtecResolucionCarrera.belongsTo(models.nivel_tipo, {
    //   foreignKey: 'nivel_tipo_id'
    // });
    // TtecResolucionCarrera.belongsTo(models.ttec_regimen_estudio_tipo, {
    //   foreignKey: 'ttec_regimen_estudio_tipo_id'
    // });
  };
  return TtecResolucionCarrera;
};