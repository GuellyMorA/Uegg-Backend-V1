'use strict';
module.exports = (sequelize, DataTypes) => {
  const TtecAreaFormacionTipo = sequelize.define('ttec_area_formacion_tipo', {
    institucioneducativa_tipo_id: DataTypes.INTEGER,
    area_formacion: DataTypes.STRING,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE,
  }, {
    tableName: 'ttec_area_formacion_tipo',
    timestamps: false,
  });
  TtecAreaFormacionTipo.associate = function(models) {
    TtecAreaFormacionTipo.belongsTo(models.institucioneducativa_tipo, {
    	foreignKey: 'institucioneducativa_tipo_id'
    });
  };
  return TtecAreaFormacionTipo;
};