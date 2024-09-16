'use strict';
module.exports = (sequelize, DataTypes) => {
  const Tramite = sequelize.define('tramite', {
    tramite: DataTypes.STRING,
    estudiante_inscripcion_id: DataTypes.INTEGER,
    flujo_tipo_id: DataTypes.INTEGER,
    tramite_tipo: DataTypes.INTEGER,
    fecha_tramite: DataTypes.DATE,
    fecha_registro: DataTypes.DATE,
    fecha_fin: DataTypes.DATE,
    esactivo: DataTypes.BOOLEAN,
    gestion_id: DataTypes.INTEGER,
    apoderado_inscripcion_id: DataTypes.INTEGER,
    maestro_inscripcion_id: DataTypes.INTEGER,
    institucioneducativa_id: DataTypes.INTEGER
  }, {
    tableName: 'tramite',
    timestamps: false,
  });
  Tramite.associate = function(models) {
    Tramite.belongsTo(models.estudiante_inscripcion, {
    	foreignKey: 'estudiante_inscripcion_id'
    });
    Tramite.belongsTo(models.apoderado_inscripcion, {
    	foreignKey: 'apoderado_inscripcion_id'
    });
    Tramite.belongsTo(models.maestro_inscripcion, {
    	foreignKey: 'maestro_inscripcion_id'
    });
    Tramite.belongsTo(models.institucioneducativa, {
    	foreignKey: 'institucioneducativa_id'
    });
    Tramite.belongsTo(models.flujo_tipo, {
    	foreignKey: 'flujo_tipo_id'
    });
    /* Tramite.belongsTo(models.tramite_tipo, {
    	foreignKey: 'tramite_tipo_id'
    }); */
  };
  return Tramite;
};