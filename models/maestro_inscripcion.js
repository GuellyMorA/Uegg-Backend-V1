'use strict';
module.exports = (sequelize, DataTypes) => {
  const MaestroInscripcion = sequelize.define('maestro_inscripcion', {
	cargo_tipo_id: DataTypes.INTEGER,
	formacion_tipo_id: DataTypes.INTEGER,
	institucioneducativa_id: DataTypes.INTEGER,
	rda_planillas_id: DataTypes.STRING,
	persona_id: DataTypes.INTEGER,
	gestion_tipo_id: DataTypes.INTEGER,
	especialidad_tipo_id: DataTypes.INTEGER,
	financiamiento_tipo_id: DataTypes.INTEGER,
	periodo_tipo_id: DataTypes.INTEGER,
	ref: DataTypes.STRING,
	estadomaestro_id: DataTypes.INTEGER,
	rol_tipo_id: DataTypes.INTEGER,
	institucioneducativa_sucursal_id: DataTypes.INTEGER,
	normalista: DataTypes.BOOLEAN,
	idioma_materno_id: DataTypes.INTEGER,
	leeescribebraile: DataTypes.BOOLEAN,
	estudia_idioma_materno_id: DataTypes.INTEGER,
	formaciondescripcion: DataTypes.STRING,
	lugar_tipo: DataTypes.INTEGER,
	item_director: DataTypes.INTEGER,
	horas: DataTypes.INTEGER,
	item: DataTypes.STRING,
	fecha_registro: DataTypes.DATE,
	fecha_modificacion: DataTypes.DATE,
	es_vigente_administrativo: DataTypes.BOOLEAN,
	unidad_militar_tipo_id: DataTypes.INTEGER,
	recinto_penitenciario_tipo_id: DataTypes.INTEGER,
	educacion_diversa_tipo_id: DataTypes.INTEGER,
  }, {
    tableName: 'maestro_inscripcion',
    timestamps: false,
  });
  MaestroInscripcion.associate = function(models) {
	MaestroInscripcion.belongsTo(models.persona, {
    	foreignKey: 'persona_id'
	});
  };
  return MaestroInscripcion;
};