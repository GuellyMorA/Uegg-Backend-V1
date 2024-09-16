'use strict';
module.exports = (sequelize, DataTypes) => {
  const WfFlujoInstitucioneducativaTipo = sequelize.define('wf_flujo_institucioneducativa_tipo', {
    flujo_tipo_id: DataTypes.INTEGER,
    institucioneducativa_tipo_id: DataTypes.INTEGER,
    esactivo: DataTypes.BOOLEAN
  }, {
    tableName: 'wf_flujo_institucioneducativa_tipo',
    timestamps: false,
  });
  WfFlujoInstitucioneducativaTipo.associate = function(models) {
    WfFlujoInstitucioneducativaTipo.belongsTo(models.flujo_tipo, {
    	foreignKey: 'flujo_tipo_id'
    });
    WfFlujoInstitucioneducativaTipo.belongsTo(models.institucioneducativa_tipo, {
    	foreignKey: 'institucioneducativa_tipo_id'
    });
  };
  return WfFlujoInstitucioneducativaTipo;
};