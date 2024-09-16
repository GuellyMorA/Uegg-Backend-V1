'use strict';
module.exports = (sequelize, DataTypes) => {
    const FlujoProceso = sequelize.define('flujo_proceso', {
        flujo_tipo_id: DataTypes.INTEGER,
        proceso_id: DataTypes.INTEGER,
        obs: DataTypes.STRING,
        rol_tipo_id: DataTypes.INTEGER,
        orden: DataTypes.INTEGER,
        es_evaluacion: DataTypes.BOOLEAN,
        plazo: DataTypes.INTEGER,
        wf_asignacion_tarea_tipo_id: DataTypes.INTEGER,
        tarea_ant_id: DataTypes.INTEGER,
        tarea_sig_id: DataTypes.INTEGER,
        variable_evaluacion: DataTypes.STRING,
        ruta_formulario: DataTypes.STRING,
        ruta_reporte: DataTypes.STRING,
    }, {
        tableName: 'flujo_proceso',
        timestamps: false,
    });
    FlujoProceso.associate = function(models) {
        FlujoProceso.belongsTo(models.flujo_tipo, {
            foreignKey: 'flujo_tipo_id'
        });
        FlujoProceso.belongsTo(models.proceso_tipo, {
            foreignKey: 'proceso_id'
        });
        FlujoProceso.belongsTo(models.rol_tipo, {
            foreignKey: 'rol_tipo_id'
        });
        FlujoProceso.belongsTo(models.wf_asignacion_tarea_tipo, {
            foreignKey: 'wf_asignacion_tarea_tipo_id'
        });
    };
    return FlujoProceso;
};