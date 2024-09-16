'use strict';
module.exports = (sequelize, DataTypes) => {
  const TtecDocentePersona = sequelize.define('ttec_docente_persona', {
    institucioneducativa_id: DataTypes.INTEGER,
    doc_experiencia_laboral: DataTypes.BOOLEAN,
    doc_cursos_respaldo: DataTypes.BOOLEAN,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE,
    persona_id: DataTypes.INTEGER,
    es_vigente: DataTypes.BOOLEAN,
    gestion_tipo_id: DataTypes.INTEGER,
    item: DataTypes.INTEGER,
    ttec_cargo_designacion_tipo_id: DataTypes.INTEGER,
    financiamiento_tipo_id: DataTypes.INTEGER,
    ttec_cargo_tipo_id: DataTypes.INTEGER,
    ttec_formacion_tipo_id: DataTypes.INTEGER,
    tipo_contrato: DataTypes.STRING
  }, {
    tableName: 'ttec_docente_persona',
    timestamps: false,
  });
  TtecDocentePersona.associate = function(models) {
    TtecDocentePersona.belongsTo(models.institucioneducativa, {
    	foreignKey: 'institucioneducativa_id'
    });
    TtecDocentePersona.belongsTo(models.persona, {
      foreignKey: 'persona_id'
    });
    /*TtecDocentePersona.belongsTo(models.ttec_cargo_designacion_tipo, {
      foreignKey: 'ttec_cargo_designacion_tipo_id'
    });
    TtecDocentePersona.belongsTo(models.financiamiento_tipo, {
      foreignKey: 'financiamiento_tipo_id'
    });*/
  };
  return TtecDocentePersona;
};