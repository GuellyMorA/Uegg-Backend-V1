'use strict';
module.exports = (sequelize, DataTypes) => {
  const InstitucioneducativaCurso = sequelize.define('institucioneducativa_curso', {
    periodo_tipo_id: DataTypes.INTEGER,
      ciclo_tipo_id: DataTypes.INTEGER,
      grado_tipo_id: DataTypes.INTEGER,
      paralelo_tipo_id: DataTypes.STRING,
      gestion_tipo_id: DataTypes.INTEGER,
      nivel_tipo_id: DataTypes.INTEGER,
      sucursal_tipo_id: DataTypes.INTEGER,
      turno_tipo_id: DataTypes.INTEGER,
      institucioneducativa_id: DataTypes.INTEGER,
      multigrado: DataTypes.INTEGER,
      desayuno_escolar: DataTypes.INTEGER,
      modalidad_ensenanza: DataTypes.INTEGER,
      idioma_mas_hablado_tipo_id: DataTypes.INTEGER,
      idioma_reg_hablado_tipo_id: DataTypes.INTEGER,
      idioma_men_hablado_tipo_id: DataTypes.INTEGER,
      pri_len_ensenanza_tipo_id: DataTypes.INTEGER,
      seg_len_ensenanza_tipo_id: DataTypes.INTEGER,
      ter_len_ensenanza_tipo_id: DataTypes.INTEGER,
      fin_des_escolar_tipo_id: DataTypes.INTEGER,
      nro_materias: DataTypes.INTEGER,
      consolidado: DataTypes.INTEGER,
      periodicidad_tipo_id: DataTypes.INTEGER,
      resolucion: DataTypes.INTEGER,
      periodicidad: DataTypes.STRING,
      carreraespecialidad_tipo_id: DataTypes.INTEGER,
      modalidad_tipo_id: DataTypes.INTEGER,
      programa_tipo_id: DataTypes.INTEGER,
      nivelacreditacion_tipo_id: DataTypes.INTEGER,
      lugartipo_id: DataTypes.INTEGER,
      fecha_inicio: DataTypes.DATE,
      fecha_fin: DataTypes.DATE,
      fecharegistro_cuso: DataTypes.DATE,
      lugar: DataTypes.STRING,
      duracionhoras: DataTypes.INTEGER,
      numeroperiodo: DataTypes.INTEGER,
      programa_tipo_otros: DataTypes.STRING,
      facilitador: DataTypes.STRING,
      maestro_inscripcion_id_asesor: DataTypes.INTEGER,
      nota_periodo_tipo_id: DataTypes.INTEGER,
      superior_institucioneducativa_periodo_id: DataTypes.INTEGER,
      obs: DataTypes.STRING
  }, {
      tableName: 'institucioneducativa_curso',
      timestamps: false
    });
  InstitucioneducativaCurso.associate = function(models) {
    /*Institucioneducativa.belongsTo(models.jurisdiccion_geografica, {
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
    });*/
  };
  
  return InstitucioneducativaCurso;
};