'use strict';
module.exports = (sequelize, DataTypes) => {
  const WfUsuarioFlujoProceso = sequelize.define('wf_usuario_flujo_proceso', {
    usuario_id: DataTypes.INTEGER,
    flujo_proceso_id: DataTypes.INTEGER,
    esactivo: DataTypes.BOOLEAN,
    lugar_tipo_id: DataTypes.INTEGER
  }, {
    tableName: 'wf_usuario_flujo_proceso',
    timestamps: false,
  });
  WfUsuarioFlujoProceso.associate = function(models) {
    WfUsuarioFlujoProceso.belongsTo(models.flujo_proceso, {
    	foreignKey: 'flujo_proceso_id'
    });
    WfUsuarioFlujoProceso.belongsTo(models.usuario, {
    	foreignKey: 'usuario_id'
    });
  };
  return WfUsuarioFlujoProceso;
};