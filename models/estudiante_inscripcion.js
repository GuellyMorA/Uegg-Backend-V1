'use strict';
module.exports = (sequelize, DataTypes) => {
  const EstudianteInscripcion = sequelize.define('estudiante_inscripcion', {
		estadomatricula_tipo_id: DataTypes.INTEGER,
		estudiante_id: DataTypes.INTEGER,
		num_matricula: DataTypes.INTEGER,
		observacion_id: DataTypes.INTEGER,
		observacion: DataTypes.STRING,
		fecha_inscripcion: DataTypes.DATE,
		apreciacion_final: DataTypes.STRING,
		operativo_id: DataTypes.INTEGER,
		fecha_registro: DataTypes.DATE,
		organizacion: DataTypes.STRING,
		facilitadorpermanente: DataTypes.STRING,
		modalidad_tipo_id: DataTypes.INTEGER,
		acreditacionnivel_tipo_id: DataTypes.INTEGER,
		permanenteprograma_tipo_id: DataTypes.INTEGER,
		fecha_inicio: DataTypes.DATE,
		fecha_fin: DataTypes.DATE,
		cursonombre: DataTypes.STRING,
		lugar: DataTypes.STRING,
		lugarcurso: DataTypes.STRING,
		facilitadorcurso: DataTypes.STRING,
		fechainiciocurso: DataTypes.DATE,
		fechafincurso: DataTypes.DATE,
		cod_ue_procedencia_id: DataTypes.INTEGER,
		institucioneducativa_curso_id: DataTypes.INTEGER,
		estadomatricula_inicio_tipo_id: DataTypes.INTEGER
  }, {
    tableName: 'estudiante_inscripcion',
    timestamps: false,
  });
  EstudianteInscripcion.associate = function(models) {
  };
  return EstudianteInscripcion;
};