/*
 Navicat Premium Data Transfer

 Source Server         : sqliteprueba
 Source Server Type    : SQLite
 Source Server Version : 3030001
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3030001
 File Encoding         : 65001

 Date: 07/09/2022 17:12:46
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for SequelizeMeta
-- ----------------------------
DROP TABLE IF EXISTS "SequelizeMeta";
CREATE TABLE "SequelizeMeta" (
  "name" VARCHAR(255) NOT NULL,
  PRIMARY KEY ("name"),
  UNIQUE ("name" ASC)
);

-- ----------------------------
-- Table structure for especialidad_tecnico_humanistico_tipo
-- ----------------------------
DROP TABLE IF EXISTS "especialidad_tecnico_humanistico_tipo";
CREATE TABLE "especialidad_tecnico_humanistico_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "especialidad" VARCHAR(255)
);

-- ----------------------------
-- Table structure for gestion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "gestion_tipo";
CREATE TABLE "gestion_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "gestion" VARCHAR(255)
);

-- ----------------------------
-- Table structure for infra_acceso_edificacion
-- ----------------------------
DROP TABLE IF EXISTS "infra_acceso_edificacion";
CREATE TABLE "infra_acceso_edificacion" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "ascensor" TINYINT(1),
  "acceso_universal" TINYINT(1),
  "conoce_normativa" TINYINT(1),
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_acceso_edificacion_senialetica
-- ----------------------------
DROP TABLE IF EXISTS "infra_acceso_edificacion_senialetica";
CREATE TABLE "infra_acceso_edificacion_senialetica" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_acceso_medio_id" INTEGER,
  "infra_senialetica_tipo_id" INTEGER,
  "idioma_tipo_id" INTEGER,
  FOREIGN KEY ("infra_acceso_medio_id") REFERENCES "infra_acceso_medio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_senialetica_tipo_id") REFERENCES "infra_senialetica_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_acceso_medio
-- ----------------------------
DROP TABLE IF EXISTS "infra_acceso_medio";
CREATE TABLE "infra_acceso_medio" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_acceso_edificacion_id" INTEGER,
  "infra_medio_acceso_tipo_id" INTEGER,
  "infra_ubicacion_tipo_id" INTEGER,
  FOREIGN KEY ("infra_acceso_edificacion_id") REFERENCES "infra_acceso_edificacion" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_medio_acceso_tipo_id") REFERENCES "infra_medio_acceso_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_ubicacion_tipo_id") REFERENCES "infra_ubicacion_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_acceso_medio_grada_rampa
-- ----------------------------
DROP TABLE IF EXISTS "infra_acceso_medio_grada_rampa";
CREATE TABLE "infra_acceso_medio_grada_rampa" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_acceso_medio_id" INTEGER,
  "infra_grada_rampa_id" INTEGER,
  FOREIGN KEY ("infra_acceso_medio_id") REFERENCES "infra_acceso_medio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_grada_rampa_id") REFERENCES "infra_grada_rampa_cuenta_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_acceso_predio_transporte
-- ----------------------------
DROP TABLE IF EXISTS "infra_acceso_predio_transporte";
CREATE TABLE "infra_acceso_predio_transporte" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "medio_transporte_tipo_id" INTEGER,
  "dias" INTEGER,
  "horas" INTEGER,
  "minutos" INTEGER,
  "costo" INTEGER,
  "infra_acceso_tipo_id" INTEGER,
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("medio_transporte_tipo_id") REFERENCES "infra_medio_transporte_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_acceso_tipo_id") REFERENCES "infra_acceso_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_acceso_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_acceso_tipo";
CREATE TABLE "infra_acceso_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "acceso" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_agua_uso_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_agua_uso_tipo";
CREATE TABLE "infra_agua_uso_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "agua_uso" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_ambiente
-- ----------------------------
DROP TABLE IF EXISTS "infra_ambiente";
CREATE TABLE "infra_ambiente" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "cantidad" INTEGER,
  "capacidad" INTEGER,
  "area" INTEGER,
  "largo" INTEGER,
  "ancho" INTEGER,
  "es_utilizado" TINYINT(1),
  "es_universal" TINYINT(1),
  "infra_ambiente_tipo_id" INTEGER,
  "es_servicio" TINYINT(1),
  "infra_estado_tipo_id" INTEGER,
  "servicio_electrico" TINYINT(1),
  "servicio_agua" TINYINT(1),
  "infra_bloque_id" INTEGER,
  "infra_piso_id" INTEGER,
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_ambiente_tipo_id") REFERENCES "infra_ambiente_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_estado_tipo_id") REFERENCES "infra_estado_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_bloque_id") REFERENCES "infra_bloque" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_piso_id") REFERENCES "infra_piso" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_ambiente_categoria_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_ambiente_categoria_tipo";
CREATE TABLE "infra_ambiente_categoria_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "ambiente_categoria" VARCHAR(255),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME,
  "es_vigente" TINYINT(1)
);

-- ----------------------------
-- Table structure for infra_ambiente_condicion
-- ----------------------------
DROP TABLE IF EXISTS "infra_ambiente_condicion";
CREATE TABLE "infra_ambiente_condicion" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_condicion_id" INTEGER,
  "infra_ambiente_id" INTEGER,
  FOREIGN KEY ("infra_condicion_id") REFERENCES "infra_condicion" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_ambiente_id") REFERENCES "infra_ambiente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_ambiente_destinado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_ambiente_destinado_tipo";
CREATE TABLE "infra_ambiente_destinado_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "destinado" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_ambiente_especialidad
-- ----------------------------
DROP TABLE IF EXISTS "infra_ambiente_especialidad";
CREATE TABLE "infra_ambiente_especialidad" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_pedagogico_id" INTEGER,
  "especialidad_tecnico_humanistico_tipo_id" INTEGER,
  FOREIGN KEY ("infra_pedagogico_id") REFERENCES "infra_pedagogico" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_ambiente_mobiliario
-- ----------------------------
DROP TABLE IF EXISTS "infra_ambiente_mobiliario";
CREATE TABLE "infra_ambiente_mobiliario" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_ambiente_id" INTEGER,
  "infra_mobiliario_tipo_id" INTEGER,
  "cantidad" INTEGER,
  "infra_estado_tipo_id" INTEGER,
  FOREIGN KEY ("infra_ambiente_id") REFERENCES "infra_ambiente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_mobiliario_tipo_id") REFERENCES "infra_mobiliario_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_estado_tipo_id") REFERENCES "infra_estado_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_ambiente_predio_institucioneducativa
-- ----------------------------
DROP TABLE IF EXISTS "infra_ambiente_predio_institucioneducativa";
CREATE TABLE "infra_ambiente_predio_institucioneducativa" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_ambiente_id" INTEGER,
  "infra_predio_institucioneducativa" INTEGER,
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME,
  FOREIGN KEY ("infra_ambiente_id") REFERENCES "infra_ambiente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_ambiente_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_ambiente_tipo";
CREATE TABLE "infra_ambiente_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "ambiente" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME,
  "infra_ambiente_categoria_tipo_id" INTEGER,
  FOREIGN KEY ("infra_ambiente_categoria_tipo_id") REFERENCES "infra_ambiente_categoria_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_amurallado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_amurallado_tipo";
CREATE TABLE "infra_amurallado_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "amurallado" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_area_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_area_tipo";
CREATE TABLE "infra_area_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "area" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_artefacto_banio_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_artefacto_banio_tipo";
CREATE TABLE "infra_artefacto_banio_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "artefacto_banio" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_bateria_artefacto_banio
-- ----------------------------
DROP TABLE IF EXISTS "infra_bateria_artefacto_banio";
CREATE TABLE "infra_bateria_artefacto_banio" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_artefacto_banio_tipo_id" INTEGER,
  "infra_ambiente_id" INTEGER,
  "cantidad_funciona" INTEGER,
  "cantidad_no_funciona" INTEGER,
  "servicio_saneamiento" TINYINT(1),
  FOREIGN KEY ("infra_artefacto_banio_tipo_id") REFERENCES "infra_artefacto_banio_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_ambiente_id") REFERENCES "infra_ambiente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_bloque
-- ----------------------------
DROP TABLE IF EXISTS "infra_bloque";
CREATE TABLE "infra_bloque" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "bloque" VARCHAR(255),
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_caracteristica_construccion
-- ----------------------------
DROP TABLE IF EXISTS "infra_caracteristica_construccion";
CREATE TABLE "infra_caracteristica_construccion" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "infra_propiedad_tipo_id" INTEGER,
  "razon_social" VARCHAR(255),
  "otro_documentacion" VARCHAR(255),
  "infra_documentacion_tipo_id" INTEGER,
  "folio" VARCHAR(255),
  "partida" VARCHAR(255),
  "plano_aprobado" TINYINT(1),
  "infra_edificacion_tipo_id" INTEGER,
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_propiedad_tipo_id") REFERENCES "infra_propiedad_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_documentacion_tipo_id") REFERENCES "infra_documentacion_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_edificacion_tipo_id") REFERENCES "infra_edificacion_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_caracteristica_edificacion
-- ----------------------------
DROP TABLE IF EXISTS "infra_caracteristica_edificacion";
CREATE TABLE "infra_caracteristica_edificacion" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_edificacion_tipo_id" INTEGER,
  "infra_predio_id" INTEGER,
  FOREIGN KEY ("infra_edificacion_tipo_id") REFERENCES "infra_edificacion_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_caracteristica_terreno
-- ----------------------------
DROP TABLE IF EXISTS "infra_caracteristica_terreno";
CREATE TABLE "infra_caracteristica_terreno" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "area_total" INTEGER,
  "area_construida" INTEGER,
  "infra_topografia_tipo_id" INTEGER,
  "infra_amurallado_tipo_id" INTEGER,
  "infra_predio_id" INTEGER,
  FOREIGN KEY ("infra_topografia_tipo_id") REFERENCES "infra_topografia_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_amurallado_tipo_id") REFERENCES "infra_amurallado_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_caracteristica_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_caracteristica_tipo";
CREATE TABLE "infra_caracteristica_tipo" (
  "id" INTEGER,
  "caracteristica" VARCHAR(255),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME,
  "es_vigente" TINYINT(1),
  PRIMARY KEY ("id")
);

-- ----------------------------
-- Table structure for infra_caracteristicas_espacio
-- ----------------------------
DROP TABLE IF EXISTS "infra_caracteristicas_espacio";
CREATE TABLE "infra_caracteristicas_espacio" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_caracteristica_terreno_id" INTEGER,
  "infra_espacio_tipo_id" INTEGER,
  FOREIGN KEY ("infra_caracteristica_terreno_id") REFERENCES "infra_caracteristica_terreno" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_espacio_tipo_id") REFERENCES "infra_espacios_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_condicion
-- ----------------------------
DROP TABLE IF EXISTS "infra_condicion";
CREATE TABLE "infra_condicion" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_material_tipo_id" INTEGER,
  "infra_caracteristica_tipo_id" INTEGER,
  "infra_pregunta_tipo_id" INTEGER,
  FOREIGN KEY ("infra_material_tipo_id") REFERENCES "infra_material_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_caracteristica_tipo_id") REFERENCES "infra_caracteristica_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_pregunta_tipo_id") REFERENCES "infra_pregunta_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_construccion
-- ----------------------------
DROP TABLE IF EXISTS "infra_construccion";
CREATE TABLE "infra_construccion" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_gestion_construccion_tipo_id" INTEGER,
  "infra_entidad_ejecutora_id" INTEGER,
  "gestion" INTEGER,
  "discapacidad" TINYINT(1),
  "detalle" VARCHAR(255),
  "infra_caracteristica_construccion_id" INTEGER,
  FOREIGN KEY ("infra_gestion_construccion_tipo_id") REFERENCES "infra_gestion_construccion_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_entidad_ejecutora_id") REFERENCES "infra_entidad_ejecutora_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_caracteristica_construccion_id") REFERENCES "infra_caracteristica_construccion" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_disponibilidad_servicio_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_disponibilidad_servicio_tipo";
CREATE TABLE "infra_disponibilidad_servicio_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "disponibilidad_servicio" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_documentacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_documentacion_tipo";
CREATE TABLE "infra_documentacion_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "documentacion" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_edificacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_edificacion_tipo";
CREATE TABLE "infra_edificacion_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "edificacion" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_entidad_ejecutora_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_entidad_ejecutora_tipo";
CREATE TABLE "infra_entidad_ejecutora_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "entidad_ejecutora" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_equipamiento_brigada_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_equipamiento_brigada_tipo";
CREATE TABLE "infra_equipamiento_brigada_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "brigada" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_equipamiento_categoria_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_equipamiento_categoria_tipo";
CREATE TABLE "infra_equipamiento_categoria_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "equipamiento_categoria" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_equipamiento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_equipamiento_tipo";
CREATE TABLE "infra_equipamiento_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "equipamiento" VARCHAR(255),
  "infra_equipamiento_categoria_tipo" INTEGER,
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME,
  FOREIGN KEY ("infra_equipamiento_categoria_tipo") REFERENCES "infra_equipamiento_categoria_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_espacios_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_espacios_tipo";
CREATE TABLE "infra_espacios_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "espacio" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_estado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_estado_tipo";
CREATE TABLE "infra_estado_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "estado" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_evacuacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_evacuacion_tipo";
CREATE TABLE "infra_evacuacion_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "evacuacion" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_fuente_energia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_fuente_energia_tipo";
CREATE TABLE "infra_fuente_energia_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "fuente_energia" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_gestion_construccion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_gestion_construccion_tipo";
CREATE TABLE "infra_gestion_construccion_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "gestion_construccion" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_grada_rampa_cuenta_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_grada_rampa_cuenta_tipo";
CREATE TABLE "infra_grada_rampa_cuenta_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "caracteristica_grada" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_hecho_delictivo
-- ----------------------------
DROP TABLE IF EXISTS "infra_hecho_delictivo";
CREATE TABLE "infra_hecho_delictivo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "hecho_delictivo" VARCHAR(255),
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_hurto_delictivo
-- ----------------------------
DROP TABLE IF EXISTS "infra_hurto_delictivo";
CREATE TABLE "infra_hurto_delictivo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "hurto_delictivo" TINYINT(1),
  "gestion_tipo_id" INTEGER,
  "turno_tipo_id" INTEGER,
  "ambiente" VARCHAR(255),
  "mobiliario" VARCHAR(255),
  "acciones" VARCHAR(255),
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("gestion_tipo_id") REFERENCES "gestion_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("turno_tipo_id") REFERENCES "turno_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_instalacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_instalacion_tipo";
CREATE TABLE "infra_instalacion_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "instalacion" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_institucioneducativa_equipamiento_brigada
-- ----------------------------
DROP TABLE IF EXISTS "infra_institucioneducativa_equipamiento_brigada";
CREATE TABLE "infra_institucioneducativa_equipamiento_brigada" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_equipamiento_brigada_tipo_id" INTEGER,
  "infra_institucioneducativa_prevencion_id" INTEGER,
  "equipamiento_brigada_otro" VARCHAR(255),
  FOREIGN KEY ("infra_equipamiento_brigada_tipo_id") REFERENCES "infra_equipamiento_brigada_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_institucioneducativa_prevencion_id") REFERENCES "infra_institucioneducativa_prevencion" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_institucioneducativa_prevencion
-- ----------------------------
DROP TABLE IF EXISTS "infra_institucioneducativa_prevencion";
CREATE TABLE "infra_institucioneducativa_prevencion" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_institucioneducativa_id" INTEGER,
  "disponible_formulario" TINYINT(1),
  "personal_capacitado" TINYINT(1),
  "formulario_edan_e" TINYINT(1),
  FOREIGN KEY ("infra_predio_institucioneducativa_id") REFERENCES "infra_predio_institucioneducativa" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_material_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_material_tipo";
CREATE TABLE "infra_material_tipo" (
  "id" INTEGER,
  "material" VARCHAR(255),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME,
  "es_vigente" TINYINT(1),
  PRIMARY KEY ("id")
);

-- ----------------------------
-- Table structure for infra_medio_acceso_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_medio_acceso_tipo";
CREATE TABLE "infra_medio_acceso_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "medio_acceso" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_medio_eliminacion_basura_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_medio_eliminacion_basura_tipo";
CREATE TABLE "infra_medio_eliminacion_basura_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "medio_eliminacion_basura" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_medio_eliminacion_exc_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_medio_eliminacion_exc_tipo";
CREATE TABLE "infra_medio_eliminacion_exc_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "medio_eliminacion_exc" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_medio_suministro_agua_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_medio_suministro_agua_tipo";
CREATE TABLE "infra_medio_suministro_agua_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "medio_suministro_agua" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_medio_transporte_categoria_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_medio_transporte_categoria_tipo";
CREATE TABLE "infra_medio_transporte_categoria_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "medio_transporte_categoria" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_medio_transporte_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_medio_transporte_tipo";
CREATE TABLE "infra_medio_transporte_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "descripcion_medio_transporte" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME,
  "infra_medio_transporte_tipo_id" INTEGER,
  FOREIGN KEY ("infra_medio_transporte_tipo_id") REFERENCES "infra_medio_transporte_categoria_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_mobiliario_predio_institucioneducativa
-- ----------------------------
DROP TABLE IF EXISTS "infra_mobiliario_predio_institucioneducativa";
CREATE TABLE "infra_mobiliario_predio_institucioneducativa" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_ambiente_mobiliario_id" INTEGER,
  "infra_predio_institucioneducativa" INTEGER,
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME,
  FOREIGN KEY ("infra_ambiente_mobiliario_id") REFERENCES "infra_ambiente_mobiliario" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_predio_institucioneducativa") REFERENCES "infra_predio_institucioneducativa" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_mobiliario_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_mobiliario_tipo";
CREATE TABLE "infra_mobiliario_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "mobiliario" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_no_pedagogico_internado
-- ----------------------------
DROP TABLE IF EXISTS "infra_no_pedagogico_internado";
CREATE TABLE "infra_no_pedagogico_internado" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_ambiente_id" INTEGER,
  "funciona_internado" VARCHAR(255),
  "distancia" VARCHAR(255),
  "infra_responsable_tipo_id" INTEGER,
  "litera" VARCHAR(255),
  "cama" VARCHAR(255),
  FOREIGN KEY ("infra_ambiente_id") REFERENCES "infra_ambiente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_responsable_tipo_id") REFERENCES "infra_responsable_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_no_pedagogico_vivienda
-- ----------------------------
DROP TABLE IF EXISTS "infra_no_pedagogico_vivienda";
CREATE TABLE "infra_no_pedagogico_vivienda" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_ambiente_id" INTEGER,
  "habitante" VARCHAR(255),
  "banio" VARCHAR(255),
  "ducha" VARCHAR(255),
  "cocina" VARCHAR(255),
  FOREIGN KEY ("infra_ambiente_id") REFERENCES "infra_ambiente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_pedagogico
-- ----------------------------
DROP TABLE IF EXISTS "infra_pedagogico";
CREATE TABLE "infra_pedagogico" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_area_tipo_id" INTEGER,
  "infra_ambiente_id" INTEGER,
  FOREIGN KEY ("infra_area_tipo_id") REFERENCES "infra_area_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_ambiente_id") REFERENCES "infra_ambiente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_pedagogico_recreativo
-- ----------------------------
DROP TABLE IF EXISTS "infra_pedagogico_recreativo";
CREATE TABLE "infra_pedagogico_recreativo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_ambiente_id" INTEGER,
  "infra_destinado_tipo_id" INTEGER,
  FOREIGN KEY ("infra_ambiente_id") REFERENCES "infra_ambiente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_destinado_tipo_id") REFERENCES "infra_ambiente_destinado_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_periodicidad_eliminacion_basura_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_periodicidad_eliminacion_basura_tipo";
CREATE TABLE "infra_periodicidad_eliminacion_basura_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "periodicidad_eliminacion_basura" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_piso
-- ----------------------------
DROP TABLE IF EXISTS "infra_piso";
CREATE TABLE "infra_piso" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "piso" INTEGER,
  "cantidad_ambiente_pedagogico" VARCHAR(255),
  "cantidad_ambiente_no_pedagogico" VARCHAR(255),
  "cantidad_banios" VARCHAR(255),
  "total" VARCHAR(255),
  "infra_bloque_id" INTEGER,
  FOREIGN KEY ("infra_bloque_id") REFERENCES "infra_bloque" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_predio
-- ----------------------------
DROP TABLE IF EXISTS "infra_predio";
CREATE TABLE "infra_predio" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "jurisdiccion_geografica_id" INTEGER,
  "latitud_x" VARCHAR(255),
  "longitud_y" VARCHAR(255),
  "direccion" VARCHAR(255),
  "zona" VARCHAR(255),
  "gestion_tipo_id" INTEGER,
  "fecha_registro" DATETIME,
  "tramo_troncal" VARCHAR(255),
  "tramo_complementario" VARCHAR(255),
  "tramo_vecinal" VARCHAR(255),
  "infra_predio_tipo_id" INTEGER,
  FOREIGN KEY ("gestion_tipo_id") REFERENCES "gestion_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_predio_tipo_id") REFERENCES "infra_predio_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_predio_foto
-- ----------------------------
DROP TABLE IF EXISTS "infra_predio_foto";
CREATE TABLE "infra_predio_foto" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "imagen" VARCHAR(255),
  "fecha_registro" DATETIME,
  "descripcion" VARCHAR(255),
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_predio_institucioneducativa
-- ----------------------------
DROP TABLE IF EXISTS "infra_predio_institucioneducativa";
CREATE TABLE "infra_predio_institucioneducativa" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "infra_tenencia_tipo_id" INTEGER,
  "persona_id" INTEGER,
  "bth_especialidad" TINYINT(1),
  "obs" VARCHAR(255),
  "institucioneducativa_id" INTEGER,
  "representante" VARCHAR(255),
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_tenencia_tipo_id") REFERENCES "infra_tenencia_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_predio_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_predio_tipo";
CREATE TABLE "infra_predio_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "nivel" VARCHAR(255),
  "es_vigente" VARCHAR(255),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_pregunta_ambiente
-- ----------------------------
DROP TABLE IF EXISTS "infra_pregunta_ambiente";
CREATE TABLE "infra_pregunta_ambiente" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_pregunta_tipo_id" INTEGER,
  "infra_ambiente_categoria_tipo_id" INTEGER,
  FOREIGN KEY ("infra_pregunta_tipo_id") REFERENCES "infra_pregunta_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_ambiente_categoria_tipo_id") REFERENCES "infra_ambiente_categoria_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_pregunta_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_pregunta_tipo";
CREATE TABLE "infra_pregunta_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "pregunta" VARCHAR(255),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME,
  "es_vigente" TINYINT(1)
);

-- ----------------------------
-- Table structure for infra_prevencion_equipamiento
-- ----------------------------
DROP TABLE IF EXISTS "infra_prevencion_equipamiento";
CREATE TABLE "infra_prevencion_equipamiento" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_equipamiento_tipo" INTEGER,
  "infra_institucioneducativa_prevencion_id" INTEGER,
  "funciona" INTEGER,
  "no_funciona" INTEGER,
  "anio_colaboracion" INTEGER,
  FOREIGN KEY ("infra_equipamiento_tipo") REFERENCES "infra_equipamiento_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_institucioneducativa_prevencion_id") REFERENCES "infra_institucioneducativa_prevencion" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_propiedad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_propiedad_tipo";
CREATE TABLE "infra_propiedad_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "propiedad" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_proximo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_proximo_tipo";
CREATE TABLE "infra_proximo_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "proximo" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_purificador_agua_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_purificador_agua_tipo";
CREATE TABLE "infra_purificador_agua_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "purificador_agua" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_responsable_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_responsable_tipo";
CREATE TABLE "infra_responsable_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "responsable" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_riesgo
-- ----------------------------
DROP TABLE IF EXISTS "infra_riesgo";
CREATE TABLE "infra_riesgo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "clase_suspendida" TINYINT(1),
  "infra_tiempo_suspendido_tipo_id" INTEGER,
  "utilizado_albergue" TINYINT(1),
  "cantidad_timbre_panico" INTEGER,
  "cantidad_extintores" INTEGER,
  "cantidad_salidas_emergencias" INTEGER,
  "infra_evacuacion_tipo_id" INTEGER,
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_tiempo_suspendido_tipo_id") REFERENCES "infra_tiempo_suspendido_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_evacuacion_tipo_id") REFERENCES "infra_evacuacion_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_riesgo_evento
-- ----------------------------
DROP TABLE IF EXISTS "infra_riesgo_evento";
CREATE TABLE "infra_riesgo_evento" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_riesgo_evento_tipo_id" INTEGER,
  "infra_riesgo_id" INTEGER,
  "mes_inicial" VARCHAR(255),
  "mes_final" VARCHAR(255),
  "evento_otro" VARCHAR(255),
  FOREIGN KEY ("infra_riesgo_evento_tipo_id") REFERENCES "infra_riesgo_evento_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_riesgo_id") REFERENCES "infra_riesgo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_riesgo_evento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_riesgo_evento_tipo";
CREATE TABLE "infra_riesgo_evento_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "evento" VARCHAR(255),
  "es_vigente" VARCHAR(255),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_riesgo_proximo
-- ----------------------------
DROP TABLE IF EXISTS "infra_riesgo_proximo";
CREATE TABLE "infra_riesgo_proximo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_riesgo_id" INTEGER,
  "infra_proximo_tipo_id" INTEGER,
  FOREIGN KEY ("infra_riesgo_id") REFERENCES "infra_riesgo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_proximo_tipo_id") REFERENCES "infra_proximo_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_senialetica_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_senialetica_tipo";
CREATE TABLE "infra_senialetica_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "senialetica" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_servicio_agua
-- ----------------------------
DROP TABLE IF EXISTS "infra_servicio_agua";
CREATE TABLE "infra_servicio_agua" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "infra_medio_suministro_agua_id" INTEGER,
  "tanque_almacenamiento" TINYINT(1),
  "bomba_agua" TINYINT(1),
  "infra_disponibilidad_servicio_tipo_id" INTEGER,
  "infra_agua_uso_tipo_id" INTEGER,
  "infra_purificador_agua_tipo_id" INTEGER,
  "cantidad_ambientes_agua" INTEGER,
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_medio_suministro_agua_id") REFERENCES "infra_medio_suministro_agua_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_disponibilidad_servicio_tipo_id") REFERENCES "infra_disponibilidad_servicio_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_agua_uso_tipo_id") REFERENCES "infra_agua_uso_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_purificador_agua_tipo_id") REFERENCES "infra_purificador_agua_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_servicio_electrico
-- ----------------------------
DROP TABLE IF EXISTS "infra_servicio_electrico";
CREATE TABLE "infra_servicio_electrico" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "infra_fuente_energia_tipo_id" INTEGER,
  "infra_instalacion_tipo_id" INTEGER,
  "infra_disponibilidad_servicio_tipo_id" INTEGER,
  "cantidad_ambiente_pedagogico" INTEGER,
  "cantidad_ambiente_no_pedagogico" INTEGER,
  "cantidad_banos" INTEGER,
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_fuente_energia_tipo_id") REFERENCES "infra_fuente_energia_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_instalacion_tipo_id") REFERENCES "infra_instalacion_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_disponibilidad_servicio_tipo_id") REFERENCES "infra_disponibilidad_servicio_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_servicio_otro_categoria_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_servicio_otro_categoria_tipo";
CREATE TABLE "infra_servicio_otro_categoria_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "servicio_categoria" VARCHAR(255),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME,
  "es_vigente" TINYINT(1)
);

-- ----------------------------
-- Table structure for infra_servicio_otro_condicion
-- ----------------------------
DROP TABLE IF EXISTS "infra_servicio_otro_condicion";
CREATE TABLE "infra_servicio_otro_condicion" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "infra_condicion_id" INTEGER,
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_condicion_id") REFERENCES "infra_condicion" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_servicio_otro_cuenta
-- ----------------------------
DROP TABLE IF EXISTS "infra_servicio_otro_cuenta";
CREATE TABLE "infra_servicio_otro_cuenta" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "infra_servicio_otro_tipo_id" INTEGER,
  "infra_predio_institucioneducativa_id" INTEGER,
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_servicio_otro_tipo_id") REFERENCES "infra_servicio_otro_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_predio_institucioneducativa_id") REFERENCES "infra_predio_institucioneducativa" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_servicio_otro_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_servicio_otro_tipo";
CREATE TABLE "infra_servicio_otro_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "servicio" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME,
  "infra_servicio_otro_categoria_tipo_id" INTEGER,
  FOREIGN KEY ("infra_servicio_otro_categoria_tipo_id") REFERENCES "infra_servicio_otro_categoria_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_servicio_saneamiento
-- ----------------------------
DROP TABLE IF EXISTS "infra_servicio_saneamiento";
CREATE TABLE "infra_servicio_saneamiento" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_predio_id" INTEGER,
  "infra_medio_eliminacion_basura_tipo_id" INTEGER,
  "infra_periodicidad_eliminacion_basura_tipo_id" INTEGER,
  FOREIGN KEY ("infra_predio_id") REFERENCES "infra_predio" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_medio_eliminacion_basura_tipo_id") REFERENCES "infra_medio_eliminacion_basura_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_periodicidad_eliminacion_basura_tipo_id") REFERENCES "infra_periodicidad_eliminacion_basura_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_servicio_saneamiento_medio_eliminacion_exc
-- ----------------------------
DROP TABLE IF EXISTS "infra_servicio_saneamiento_medio_eliminacion_exc";
CREATE TABLE "infra_servicio_saneamiento_medio_eliminacion_exc" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "infra_servicio_saneamiento_id" INTEGER,
  "infra_medio_eliminacion_exc_tipo_id" INTEGER,
  "otros" VARCHAR(255),
  FOREIGN KEY ("infra_servicio_saneamiento_id") REFERENCES "infra_servicio_saneamiento" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY ("infra_medio_eliminacion_exc_tipo_id") REFERENCES "infra_medio_eliminacion_exc_tipo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- ----------------------------
-- Table structure for infra_tenencia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_tenencia_tipo";
CREATE TABLE "infra_tenencia_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "tenencia" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_tiempo_suspendido_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_tiempo_suspendido_tipo";
CREATE TABLE "infra_tiempo_suspendido_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "tiempo_suspendido" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_topografia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_topografia_tipo";
CREATE TABLE "infra_topografia_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "topografia" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for infra_ubicacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "infra_ubicacion_tipo";
CREATE TABLE "infra_ubicacion_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "ubicacion" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for institucioneducativa
-- ----------------------------
DROP TABLE IF EXISTS "institucioneducativa";
CREATE TABLE "institucioneducativa" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "codigo_sie" INTEGER,
  "institucioneducativa" VARCHAR(255),
  "jurisdiccion_id" INTEGER,
  "codigo_departamento" VARCHAR(255),
  "departamento" VARCHAR(255),
  "codigo_provincia" VARCHAR(255),
  "provincia" VARCHAR(255),
  "codigo_municipio" VARCHAR(255),
  "municipio" VARCHAR(255),
  "codigo_canton" VARCHAR(255),
  "canton" VARCHAR(255),
  "codigo_localidad" VARCHAR(255),
  "localidad" VARCHAR(255),
  "codigo_distrito" INTEGER,
  "distrito" VARCHAR(255),
  "zona" VARCHAR(255),
  "direccion" VARCHAR(255),
  "bth" VARCHAR(255),
  "subsistema_id" INTEGER,
  "subsistema" VARCHAR(255),
  "telefono_director" VARCHAR(255),
  "nombre_director" VARCHAR(255)
);

-- ----------------------------
-- Table structure for mes_tipo
-- ----------------------------
DROP TABLE IF EXISTS "mes_tipo";
CREATE TABLE "mes_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "mes" VARCHAR(255)
);

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS "sqlite_sequence";
CREATE TABLE "sqlite_sequence" (
  "name",
  "seq"
);

-- ----------------------------
-- Table structure for sqlite_stat1
-- ----------------------------
DROP TABLE IF EXISTS "sqlite_stat1";
CREATE TABLE "sqlite_stat1" (
  "tbl",
  "idx",
  "stat"
);

-- ----------------------------
-- Table structure for turno_tipo
-- ----------------------------
DROP TABLE IF EXISTS "turno_tipo";
CREATE TABLE "turno_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "turno" VARCHAR(255),
  "es_vigente" TINYINT(1),
  "fecha_registro" DATETIME,
  "fecha_modificacion" DATETIME
);

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS "usuario";
CREATE TABLE "usuario" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "ci" VARCHAR(255),
  "nombre" VARCHAR(255),
  "paterno" VARCHAR(255),
  "materno" VARCHAR(255),
  "codigo_sie" INTEGER,
  "jurisdiccion_id" INTEGER,
  "cargo_id" INTEGER,
  "cargo_tipo" VARCHAR(255)
);

-- ----------------------------
-- Auto increment value for especialidad_tecnico_humanistico_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 41 WHERE name = 'especialidad_tecnico_humanistico_tipo';

-- ----------------------------
-- Auto increment value for gestion_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 1 WHERE name = 'gestion_tipo';

-- ----------------------------
-- Auto increment value for infra_acceso_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 4 WHERE name = 'infra_acceso_tipo';

-- ----------------------------
-- Auto increment value for infra_agua_uso_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 5 WHERE name = 'infra_agua_uso_tipo';

-- ----------------------------
-- Auto increment value for infra_ambiente_categoria_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 9 WHERE name = 'infra_ambiente_categoria_tipo';

-- ----------------------------
-- Auto increment value for infra_ambiente_destinado_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 6 WHERE name = 'infra_ambiente_destinado_tipo';

-- ----------------------------
-- Auto increment value for infra_ambiente_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 46 WHERE name = 'infra_ambiente_tipo';

-- ----------------------------
-- Auto increment value for infra_amurallado_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'infra_amurallado_tipo';

-- ----------------------------
-- Auto increment value for infra_area_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 2 WHERE name = 'infra_area_tipo';

-- ----------------------------
-- Auto increment value for infra_artefacto_banio_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 5 WHERE name = 'infra_artefacto_banio_tipo';

-- ----------------------------
-- Auto increment value for infra_condicion
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 300 WHERE name = 'infra_condicion';

-- ----------------------------
-- Auto increment value for infra_disponibilidad_servicio_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 2 WHERE name = 'infra_disponibilidad_servicio_tipo';

-- ----------------------------
-- Auto increment value for infra_documentacion_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 11 WHERE name = 'infra_documentacion_tipo';

-- ----------------------------
-- Auto increment value for infra_edificacion_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 7 WHERE name = 'infra_edificacion_tipo';

-- ----------------------------
-- Auto increment value for infra_entidad_ejecutora_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 7 WHERE name = 'infra_entidad_ejecutora_tipo';

-- ----------------------------
-- Auto increment value for infra_equipamiento_brigada_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 5 WHERE name = 'infra_equipamiento_brigada_tipo';

-- ----------------------------
-- Auto increment value for infra_equipamiento_categoria_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 5 WHERE name = 'infra_equipamiento_categoria_tipo';

-- ----------------------------
-- Auto increment value for infra_equipamiento_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 20 WHERE name = 'infra_equipamiento_tipo';

-- ----------------------------
-- Auto increment value for infra_espacios_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 6 WHERE name = 'infra_espacios_tipo';

-- ----------------------------
-- Auto increment value for infra_estado_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 6 WHERE name = 'infra_estado_tipo';

-- ----------------------------
-- Auto increment value for infra_evacuacion_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'infra_evacuacion_tipo';

-- ----------------------------
-- Auto increment value for infra_fuente_energia_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 5 WHERE name = 'infra_fuente_energia_tipo';

-- ----------------------------
-- Auto increment value for infra_gestion_construccion_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'infra_gestion_construccion_tipo';

-- ----------------------------
-- Auto increment value for infra_grada_rampa_cuenta_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'infra_grada_rampa_cuenta_tipo';

-- ----------------------------
-- Auto increment value for infra_instalacion_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 2 WHERE name = 'infra_instalacion_tipo';

-- ----------------------------
-- Auto increment value for infra_medio_acceso_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'infra_medio_acceso_tipo';

-- ----------------------------
-- Auto increment value for infra_medio_eliminacion_basura_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 5 WHERE name = 'infra_medio_eliminacion_basura_tipo';

-- ----------------------------
-- Auto increment value for infra_medio_eliminacion_exc_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 5 WHERE name = 'infra_medio_eliminacion_exc_tipo';

-- ----------------------------
-- Auto increment value for infra_medio_suministro_agua_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 7 WHERE name = 'infra_medio_suministro_agua_tipo';

-- ----------------------------
-- Auto increment value for infra_medio_transporte_categoria_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'infra_medio_transporte_categoria_tipo';

-- ----------------------------
-- Auto increment value for infra_medio_transporte_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 14 WHERE name = 'infra_medio_transporte_tipo';

-- ----------------------------
-- Auto increment value for infra_mobiliario_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 16 WHERE name = 'infra_mobiliario_tipo';

-- ----------------------------
-- Auto increment value for infra_periodicidad_eliminacion_basura_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 4 WHERE name = 'infra_periodicidad_eliminacion_basura_tipo';

-- ----------------------------
-- Auto increment value for infra_predio_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 2 WHERE name = 'infra_predio_tipo';

-- ----------------------------
-- Auto increment value for infra_pregunta_ambiente
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 73 WHERE name = 'infra_pregunta_ambiente';

-- ----------------------------
-- Auto increment value for infra_pregunta_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 23 WHERE name = 'infra_pregunta_tipo';

-- ----------------------------
-- Auto increment value for infra_propiedad_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 4 WHERE name = 'infra_propiedad_tipo';

-- ----------------------------
-- Auto increment value for infra_proximo_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 14 WHERE name = 'infra_proximo_tipo';

-- ----------------------------
-- Auto increment value for infra_purificador_agua_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 4 WHERE name = 'infra_purificador_agua_tipo';

-- ----------------------------
-- Auto increment value for infra_responsable_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 4 WHERE name = 'infra_responsable_tipo';

-- ----------------------------
-- Auto increment value for infra_riesgo_evento_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 11 WHERE name = 'infra_riesgo_evento_tipo';

-- ----------------------------
-- Auto increment value for infra_senialetica_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 7 WHERE name = 'infra_senialetica_tipo';

-- ----------------------------
-- Auto increment value for infra_servicio_otro_categoria_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 4 WHERE name = 'infra_servicio_otro_categoria_tipo';

-- ----------------------------
-- Auto increment value for infra_servicio_otro_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 10 WHERE name = 'infra_servicio_otro_tipo';

-- ----------------------------
-- Auto increment value for infra_tenencia_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 7 WHERE name = 'infra_tenencia_tipo';

-- ----------------------------
-- Auto increment value for infra_tiempo_suspendido_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 4 WHERE name = 'infra_tiempo_suspendido_tipo';

-- ----------------------------
-- Auto increment value for infra_topografia_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'infra_topografia_tipo';

-- ----------------------------
-- Auto increment value for infra_ubicacion_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 6 WHERE name = 'infra_ubicacion_tipo';

-- ----------------------------
-- Auto increment value for mes_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 12 WHERE name = 'mes_tipo';

-- ----------------------------
-- Auto increment value for turno_tipo
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 11 WHERE name = 'turno_tipo';

-- ----------------------------
-- Auto increment value for usuario
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 1 WHERE name = 'usuario';

PRAGMA foreign_keys = true;
