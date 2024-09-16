'use strict';
module.exports = (sequelize, DataTypes) => {
  const TtecCarreraTipo = sequelize.define('ttec_carrera_tipo', {
    nombre: DataTypes.STRING,
    codigo: DataTypes.STRING,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE,
    ttec_area_formacion_tipo_id: DataTypes.INTEGER,
    ttec_estado_carrera_tipo_id: DataTypes.INTEGER
  }, {
    tableName: 'ttec_carrera_tipo',
    timestamps: false,
  });
  TtecCarreraTipo.associate = function(models) {
    /*TtecCarreraTipo.belongsTo(models.ttec_area_formacion_tipo, {
    	foreignKey: 'ttec_area_formacion_tipo_id'
    });
    TtecCarreraTipo.belongsTo(models.ttec_estado_carrera_tipo, {
      foreignKey: 'ttec_estado_carrera_tipo_id'
    });*/
  };
  return TtecCarreraTipo;
};