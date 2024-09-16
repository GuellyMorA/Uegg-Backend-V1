'use strict';
module.exports = (sequelize, DataTypes) => {
  const TtecInstitucioneducativaSede = sequelize.define('ttec_institucioneducativa_sede', {
    institucioneducativa_id: DataTypes.INTEGER,
    sede: DataTypes.INTEGER,
    fecha_cierre: DataTypes.DATE,
    estado: DataTypes.BOOLEAN,
    observacion: DataTypes.STRING,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE
  }, {
    tableName: 'ttec_institucioneducativa_sede',
    timestamps: false,
  });
  TtecInstitucioneducativaSede.associate = function(models) {
    TtecInstitucioneducativaSede.belongsTo(models.institucioneducativa, {
    	foreignKey: 'institucioneducativa_id'
    });
  };
  return TtecInstitucioneducativaSede;
};