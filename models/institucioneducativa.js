'use strict';
module.exports = (sequelize, DataTypes) => {
  const Institucioneducativa = sequelize.define('institucioneducativa', {
    le_juridicciongeografica_id: DataTypes.INTEGER,
    estadoinstitucion_tipo_id: DataTypes.INTEGER,
    convenio_tipo_id: DataTypes.INTEGER,
    dependencia_tipo_id: DataTypes.INTEGER,
    institucioneducativa_tipo_id: DataTypes.INTEGER,
    orgcurricular_tipo_id: DataTypes.INTEGER,
    institucioneducativa: DataTypes.INTEGER,
    rue_ue: DataTypes.INTEGER,
    fecha_resolucion: DataTypes.DATE,
    nro_resolucion: DataTypes.STRING,
    obs_rue: DataTypes.STRING,
    des_ue_antes: DataTypes.STRING,
    fecha_creacion: DataTypes.DATE,
    fecha_cierre: DataTypes.STRING,
    institucioneducativa_acreditacion_tipo_id: DataTypes.INTEGER,
    obs_rue2: DataTypes.STRING,
    des_ue_antes2: DataTypes.STRING,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE
  }, {
      tableName: 'institucioneducativa',
      timestamps: false
    });
  Institucioneducativa.associate = function(models) {
    Institucioneducativa.belongsTo(models.jurisdiccion_geografica, {
    	foreignKey: 'le_juridicciongeografica_id'
    });
    Institucioneducativa.belongsTo(models.estadoinstitucion_tipo, {
    	foreignKey: 'estadoinstitucion_tipo_id'
    });
    Institucioneducativa.belongsTo(models.convenio_tipo, {
    	foreignKey: 'convenio_tipo_id'
    });
    Institucioneducativa.belongsTo(models.dependencia_tipo, {
    	foreignKey: 'dependencia_tipo_id'
    });
    Institucioneducativa.belongsTo(models.institucioneducativa_tipo, {
    	foreignKey: 'institucioneducativa_tipo_id'
    });
    Institucioneducativa.belongsTo(models.orgcurricular_tipo, {
    	foreignKey: 'orgcurricular_tipo_id'
    });
    Institucioneducativa.belongsTo(models.institucioneducativa_acreditacion_tipo, {
    	foreignKey: 'institucioneducativa_acreditacion_tipo_id'
    });
  };
  
  return Institucioneducativa;
};