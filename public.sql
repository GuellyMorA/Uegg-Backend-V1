/*
 Navicat Premium Data Transfer

 Source Server         : sie_produccion
 Source Server Type    : PostgreSQL
 Source Server Version : 90425
 Source Host           : 100.0.100.56:5432
 Source Catalog        : sie_desarrollo2
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90425
 File Encoding         : 65001

 Date: 24/06/2022 16:41:53
*/


-- ----------------------------
-- Type structure for addbandarg
-- ----------------------------
DROP TYPE IF EXISTS "public"."addbandarg";
CREATE TYPE "public"."addbandarg" AS (
  "index" int4,
  "pixeltype" text COLLATE "pg_catalog"."default",
  "initialvalue" float8,
  "nodataval" float8
);
COMMENT ON TYPE "public"."addbandarg" IS 'postgis raster type: A composite type used as input into the ST_AddBand function defining the attributes and initial value of the new band.';

-- ----------------------------
-- Type structure for agg_count
-- ----------------------------
DROP TYPE IF EXISTS "public"."agg_count";
CREATE TYPE "public"."agg_count" AS (
  "count" int8,
  "nband" int4,
  "exclude_nodata_value" bool,
  "sample_percent" float8
);

-- ----------------------------
-- Type structure for agg_samealignment
-- ----------------------------
DROP TYPE IF EXISTS "public"."agg_samealignment";
CREATE TYPE "public"."agg_samealignment" AS (
  "refraster" "public"."raster",
  "aligned" bool
);

-- ----------------------------
-- Type structure for box2d
-- ----------------------------
DROP TYPE IF EXISTS "public"."box2d";
CREATE TYPE "public"."box2d" (
  INPUT = "public"."box2d_in",
  OUTPUT = "public"."box2d_out",
  INTERNALLENGTH = 65,
  CATEGORY = U,
  DELIMITER = ','
);
COMMENT ON TYPE "public"."box2d" IS 'postgis type: A box composed of x min, ymin, xmax, ymax. Often used to return the 2d enclosing box of a geometry.';

-- ----------------------------
-- Type structure for box2df
-- ----------------------------
DROP TYPE IF EXISTS "public"."box2df";
CREATE TYPE "public"."box2df" (
  INPUT = "public"."box2df_in",
  OUTPUT = "public"."box2df_out",
  INTERNALLENGTH = 16,
  ALIGNMENT = double,
  CATEGORY = U,
  DELIMITER = ','
);

-- ----------------------------
-- Type structure for box3d
-- ----------------------------
DROP TYPE IF EXISTS "public"."box3d";
CREATE TYPE "public"."box3d" (
  INPUT = "public"."box3d_in",
  OUTPUT = "public"."box3d_out",
  INTERNALLENGTH = 52,
  ALIGNMENT = double,
  CATEGORY = U,
  DELIMITER = ','
);
COMMENT ON TYPE "public"."box3d" IS 'postgis type: A box composed of x min, ymin, zmin, xmax, ymax, zmax. Often used to return the 3d extent of a geometry or collection of geometries.';

-- ----------------------------
-- Type structure for dblink_pkey_results
-- ----------------------------
DROP TYPE IF EXISTS "public"."dblink_pkey_results";
CREATE TYPE "public"."dblink_pkey_results" AS (
  "position" int4,
  "colname" text COLLATE "pg_catalog"."default"
);

-- ----------------------------
-- Type structure for deteccion_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."deteccion_enum";
CREATE TYPE "public"."deteccion_enum" AS ENUM (
  'NINGUNO',
  'UNIDAD EDUCATIVA',
  'OLIMPIADAS CIENTIFICAS',
  'JUEGOS DEPORTIVOS PLURINACIONALES',
  'ENCUENTRO ARTISTICO',
  ''
);

-- ----------------------------
-- Type structure for dificultad_aprendizaje_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."dificultad_aprendizaje_enum";
CREATE TYPE "public"."dificultad_aprendizaje_enum" AS ENUM (
  'DIFICULTADES GENERALES',
  'DIFICULTADES ESPECIFICAS',
  'SIGNOS DE RIESGO',
  ''
);

-- ----------------------------
-- Type structure for discapacidad_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."discapacidad_enum";
CREATE TYPE "public"."discapacidad_enum" AS ENUM (
  'NINGUNO',
  'AUDITIVA',
  'VISUAL',
  'INTELECTUAL',
  'SINDROME DE DOWN',
  'AUTISMO',
  'FISICO-MOTORA',
  'MULTIPLE',
  'SORDOCEGUERA'
);

-- ----------------------------
-- Type structure for geography
-- ----------------------------
DROP TYPE IF EXISTS "public"."geography";
CREATE TYPE "public"."geography" (
  INPUT = "public"."geography_in",
  OUTPUT = "public"."geography_out",
  RECEIVE = "public"."geography_recv",
  SEND = "public"."geography_send",
  TYPMOD_IN = "public"."geography_typmod_in",
  TYPMOD_OUT = "public"."geography_typmod_out",
  ANALYZE = "public"."geography_analyze",
  INTERNALLENGTH = VARIABLE,
  ALIGNMENT = double,
  STORAGE = main,
  CATEGORY = U,
  DELIMITER = ':'
);
COMMENT ON TYPE "public"."geography" IS 'postgis type: Ellipsoidal spatial data type.';

-- ----------------------------
-- Type structure for geometry
-- ----------------------------
DROP TYPE IF EXISTS "public"."geometry";
CREATE TYPE "public"."geometry" (
  INPUT = "public"."geometry_in",
  OUTPUT = "public"."geometry_out",
  RECEIVE = "public"."geometry_recv",
  SEND = "public"."geometry_send",
  TYPMOD_IN = "public"."geometry_typmod_in",
  TYPMOD_OUT = "public"."geometry_typmod_out",
  ANALYZE = "public"."geometry_analyze",
  INTERNALLENGTH = VARIABLE,
  ALIGNMENT = double,
  STORAGE = main,
  CATEGORY = U,
  DELIMITER = ':'
);
COMMENT ON TYPE "public"."geometry" IS 'postgis type: Planar spatial data type.';

-- ----------------------------
-- Type structure for geometry_dump
-- ----------------------------
DROP TYPE IF EXISTS "public"."geometry_dump";
CREATE TYPE "public"."geometry_dump" AS (
  "path" int4[],
  "geom" "public"."geometry"
);
COMMENT ON TYPE "public"."geometry_dump" IS 'postgis type: A spatial datatype with two fields - geom (holding a geometry object) and path[] (a 1-d array holding the position of the geometry within the dumped object.)';

-- ----------------------------
-- Type structure for geomval
-- ----------------------------
DROP TYPE IF EXISTS "public"."geomval";
CREATE TYPE "public"."geomval" AS (
  "geom" "public"."geometry",
  "val" float8
);
COMMENT ON TYPE "public"."geomval" IS 'postgis raster type: A spatial datatype with two fields - geom (holding a geometry object) and val (holding a double precision pixel value from a raster band).';

-- ----------------------------
-- Type structure for ghstore
-- ----------------------------
DROP TYPE IF EXISTS "public"."ghstore";
CREATE TYPE "public"."ghstore" (
  INPUT = "public"."ghstore_in",
  OUTPUT = "public"."ghstore_out",
  INTERNALLENGTH = VARIABLE,
  CATEGORY = U,
  DELIMITER = ','
);

-- ----------------------------
-- Type structure for gidx
-- ----------------------------
DROP TYPE IF EXISTS "public"."gidx";
CREATE TYPE "public"."gidx" (
  INPUT = "public"."gidx_in",
  OUTPUT = "public"."gidx_out",
  INTERNALLENGTH = VARIABLE,
  ALIGNMENT = double,
  CATEGORY = U,
  DELIMITER = ','
);

-- ----------------------------
-- Type structure for grado_discapacidad_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."grado_discapacidad_enum";
CREATE TYPE "public"."grado_discapacidad_enum" AS ENUM (
  'LEVE',
  'MODERADA',
  'SEVERA',
  'PROFUNDA',
  'BAJA VISION',
  'CEGUERA TOTAL',
  'GRAVE',
  'ASPERGER',
  'TGD',
  'AUTISMO',
  'RETT'
);

-- ----------------------------
-- Type structure for grado_parentesco_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."grado_parentesco_enum";
CREATE TYPE "public"."grado_parentesco_enum" AS ENUM (
  '1ER GRADO',
  '2DO GRADO'
);

-- ----------------------------
-- Type structure for grado_talento_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."grado_talento_enum";
CREATE TYPE "public"."grado_talento_enum" AS ENUM (
  'TALENTO EXTRAORDINARIO GENERAL',
  'TALENTO EXTRAORDINARIO ESPECIFICO',
  ''
);

-- ----------------------------
-- Type structure for hstore
-- ----------------------------
DROP TYPE IF EXISTS "public"."hstore";
CREATE TYPE "public"."hstore" (
  INPUT = "public"."hstore_in",
  OUTPUT = "public"."hstore_out",
  RECEIVE = "public"."hstore_recv",
  SEND = "public"."hstore_send",
  INTERNALLENGTH = VARIABLE,
  STORAGE = extended,
  CATEGORY = U,
  DELIMITER = ','
);

-- ----------------------------
-- Type structure for lugartype
-- ----------------------------
DROP TYPE IF EXISTS "public"."lugartype";
CREATE TYPE "public"."lugartype" AS (
  "id" int8,
  "lugar" text COLLATE "pg_catalog"."default",
  "lugar_tipo_id" int8
);

-- ----------------------------
-- Type structure for modalidad_atencion_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."modalidad_atencion_enum";
CREATE TYPE "public"."modalidad_atencion_enum" AS ENUM (
  'DIRECTA',
  'INDIRECTA',
  ''
);

-- ----------------------------
-- Type structure for operacion_rue_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."operacion_rue_enum";
CREATE TYPE "public"."operacion_rue_enum" AS ENUM (
  'CREACION',
  'MODIFICACION',
  'CIERRE',
  'REAPERTURA',
  'AMPLIACION',
  'REDUCCION',
  'DEPENDENCIA',
  'JUSRISDICCION',
  'SUBSISTEMA',
  'NOMBRE',
  'EDIFICIO'
);

-- ----------------------------
-- Type structure for pgis_abs
-- ----------------------------
DROP TYPE IF EXISTS "public"."pgis_abs";
CREATE TYPE "public"."pgis_abs" (
  INPUT = "public"."pgis_abs_in",
  OUTPUT = "public"."pgis_abs_out",
  INTERNALLENGTH = 16,
  ALIGNMENT = double,
  CATEGORY = U,
  DELIMITER = ','
);

-- ----------------------------
-- Type structure for rastbandarg
-- ----------------------------
DROP TYPE IF EXISTS "public"."rastbandarg";
CREATE TYPE "public"."rastbandarg" AS (
  "rast" "public"."raster",
  "nband" int4
);
COMMENT ON TYPE "public"."rastbandarg" IS 'postgis raster type: A composite type for use when needing to express a raster and a band index of that raster.';

-- ----------------------------
-- Type structure for raster
-- ----------------------------
DROP TYPE IF EXISTS "public"."raster";
CREATE TYPE "public"."raster" (
  INPUT = "public"."raster_in",
  OUTPUT = "public"."raster_out",
  INTERNALLENGTH = VARIABLE,
  ALIGNMENT = double,
  STORAGE = extended,
  CATEGORY = U,
  DELIMITER = ','
);
COMMENT ON TYPE "public"."raster" IS 'postgis raster type: raster spatial data type.';

-- ----------------------------
-- Type structure for reclassarg
-- ----------------------------
DROP TYPE IF EXISTS "public"."reclassarg";
CREATE TYPE "public"."reclassarg" AS (
  "nband" int4,
  "reclassexpr" text COLLATE "pg_catalog"."default",
  "pixeltype" text COLLATE "pg_catalog"."default",
  "nodataval" float8
);
COMMENT ON TYPE "public"."reclassarg" IS 'postgis raster type: A composite type used as input into the ST_Reclass function defining the behavior of reclassification.';

-- ----------------------------
-- Type structure for socioeconomicolugartype
-- ----------------------------
DROP TYPE IF EXISTS "public"."socioeconomicolugartype";
CREATE TYPE "public"."socioeconomicolugartype" AS (
  "id" int8,
  "lugar" text COLLATE "pg_catalog"."default",
  "lugar_tipo_id" int8
);

-- ----------------------------
-- Type structure for spheroid
-- ----------------------------
DROP TYPE IF EXISTS "public"."spheroid";
CREATE TYPE "public"."spheroid" (
  INPUT = "public"."spheroid_in",
  OUTPUT = "public"."spheroid_out",
  INTERNALLENGTH = 65,
  ALIGNMENT = double,
  CATEGORY = U,
  DELIMITER = ','
);

-- ----------------------------
-- Type structure for stdaddr
-- ----------------------------
DROP TYPE IF EXISTS "public"."stdaddr";
CREATE TYPE "public"."stdaddr" AS (
  "building" text COLLATE "pg_catalog"."default",
  "house_num" text COLLATE "pg_catalog"."default",
  "predir" text COLLATE "pg_catalog"."default",
  "qual" text COLLATE "pg_catalog"."default",
  "pretype" text COLLATE "pg_catalog"."default",
  "name" text COLLATE "pg_catalog"."default",
  "suftype" text COLLATE "pg_catalog"."default",
  "sufdir" text COLLATE "pg_catalog"."default",
  "ruralroute" text COLLATE "pg_catalog"."default",
  "extra" text COLLATE "pg_catalog"."default",
  "city" text COLLATE "pg_catalog"."default",
  "state" text COLLATE "pg_catalog"."default",
  "country" text COLLATE "pg_catalog"."default",
  "postcode" text COLLATE "pg_catalog"."default",
  "box" text COLLATE "pg_catalog"."default",
  "unit" text COLLATE "pg_catalog"."default"
);

-- ----------------------------
-- Type structure for summarystats
-- ----------------------------
DROP TYPE IF EXISTS "public"."summarystats";
CREATE TYPE "public"."summarystats" AS (
  "count" int8,
  "sum" float8,
  "mean" float8,
  "stddev" float8,
  "min" float8,
  "max" float8
);
COMMENT ON TYPE "public"."summarystats" IS 'postgis raster type: A composite type returned by the ST_SummaryStats and ST_SummaryStatsAgg functions.';

-- ----------------------------
-- Type structure for tablefunc_crosstab_2
-- ----------------------------
DROP TYPE IF EXISTS "public"."tablefunc_crosstab_2";
CREATE TYPE "public"."tablefunc_crosstab_2" AS (
  "row_name" text COLLATE "pg_catalog"."default",
  "category_1" text COLLATE "pg_catalog"."default",
  "category_2" text COLLATE "pg_catalog"."default"
);

-- ----------------------------
-- Type structure for tablefunc_crosstab_3
-- ----------------------------
DROP TYPE IF EXISTS "public"."tablefunc_crosstab_3";
CREATE TYPE "public"."tablefunc_crosstab_3" AS (
  "row_name" text COLLATE "pg_catalog"."default",
  "category_1" text COLLATE "pg_catalog"."default",
  "category_2" text COLLATE "pg_catalog"."default",
  "category_3" text COLLATE "pg_catalog"."default"
);

-- ----------------------------
-- Type structure for tablefunc_crosstab_4
-- ----------------------------
DROP TYPE IF EXISTS "public"."tablefunc_crosstab_4";
CREATE TYPE "public"."tablefunc_crosstab_4" AS (
  "row_name" text COLLATE "pg_catalog"."default",
  "category_1" text COLLATE "pg_catalog"."default",
  "category_2" text COLLATE "pg_catalog"."default",
  "category_3" text COLLATE "pg_catalog"."default",
  "category_4" text COLLATE "pg_catalog"."default"
);

-- ----------------------------
-- Type structure for tipo_discapacidad_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."tipo_discapacidad_enum";
CREATE TYPE "public"."tipo_discapacidad_enum" AS ENUM (
  'ANTES DEL NACIMIENTO',
  'DURANTE EL PARTO',
  'DESPUES DEL NACIMIENTO',
  ''
);

-- ----------------------------
-- Type structure for tipo_talento_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."tipo_talento_enum";
CREATE TYPE "public"."tipo_talento_enum" AS ENUM (
  'LOGICO, MATEMATICO Y ECNOLOGICO',
  'HUMANISTICO SOCIAL',
  'ARTISTICO',
  'DEPORTIVO',
  ''
);

-- ----------------------------
-- Type structure for unionarg
-- ----------------------------
DROP TYPE IF EXISTS "public"."unionarg";
CREATE TYPE "public"."unionarg" AS (
  "nband" int4,
  "uniontype" text COLLATE "pg_catalog"."default"
);
COMMENT ON TYPE "public"."unionarg" IS 'postgis raster type: A composite type used as input into the ST_Union function defining the bands to be processed and behavior of the UNION operation.';

-- ----------------------------
-- Type structure for valid_detail
-- ----------------------------
DROP TYPE IF EXISTS "public"."valid_detail";
CREATE TYPE "public"."valid_detail" AS (
  "valid" bool,
  "reason" varchar COLLATE "pg_catalog"."default",
  "location" "public"."geometry"
);

-- ----------------------------
-- Type structure for vive_con_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."vive_con_enum";
CREATE TYPE "public"."vive_con_enum" AS ENUM (
  'NINGUNO',
  'PADRE',
  'MADRE',
  'ABUELO',
  'ABUELA',
  'AMBOS PADRES',
  'TIOS',
  'OTROS'
);

-- ----------------------------
-- Type structure for x
-- ----------------------------
DROP TYPE IF EXISTS "public"."x";
CREATE TYPE "public"."x" AS (
  "id" int4,
  "infra_riesgo_id" int4,
  "infra_proximo_tipo_id" int4
);

-- ----------------------------
-- Sequence structure for __inventory_flow___inventory_flow_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."__inventory_flow___inventory_flow_id_seq";
CREATE SEQUENCE "public"."__inventory_flow___inventory_flow_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for __inventory_item_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."__inventory_item_id_seq";
CREATE SEQUENCE "public"."__inventory_item_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for _temptreecctp_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."_temptreecctp_id_seq";
CREATE SEQUENCE "public"."_temptreecctp_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for alt_moduloemergente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."alt_moduloemergente_id_seq";
CREATE SEQUENCE "public"."alt_moduloemergente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for apoderado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."apoderado_id_seq";
CREATE SEQUENCE "public"."apoderado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 55135450
CACHE 1;

-- ----------------------------
-- Sequence structure for apoderado_inscripcion_datos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."apoderado_inscripcion_datos_id_seq";
CREATE SEQUENCE "public"."apoderado_inscripcion_datos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for apoderado_inscripcion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."apoderado_inscripcion_id_seq";
CREATE SEQUENCE "public"."apoderado_inscripcion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for atencionmedica_tipo_id_atencionmedica_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."atencionmedica_tipo_id_atencionmedica_seq";
CREATE SEQUENCE "public"."atencionmedica_tipo_id_atencionmedica_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_id_seq";
CREATE SEQUENCE "public"."auth_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for bjp_validacionue_proceso_apertura_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bjp_validacionue_proceso_apertura_id_seq";
CREATE SEQUENCE "public"."bjp_validacionue_proceso_apertura_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for bonojuancito_estudiante_validacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bonojuancito_estudiante_validacion_id_seq";
CREATE SEQUENCE "public"."bonojuancito_estudiante_validacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2191536
CACHE 1;

-- ----------------------------
-- Sequence structure for bonojuancito_fuerza_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bonojuancito_fuerza_tipo_id_seq";
CREATE SEQUENCE "public"."bonojuancito_fuerza_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for bonojuancito_gran_unidadmilitar_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bonojuancito_gran_unidadmilitar_id_seq";
CREATE SEQUENCE "public"."bonojuancito_gran_unidadmilitar_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for bonojuancito_institucioneducativa_curso_validacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bonojuancito_institucioneducativa_curso_validacion_id_seq";
CREATE SEQUENCE "public"."bonojuancito_institucioneducativa_curso_validacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for bonojuancito_institucioneducativa_id
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bonojuancito_institucioneducativa_id";
CREATE SEQUENCE "public"."bonojuancito_institucioneducativa_id" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for bonojuancito_institucioneducativa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bonojuancito_institucioneducativa_id_seq";
CREATE SEQUENCE "public"."bonojuancito_institucioneducativa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 63324
CACHE 1;

-- ----------------------------
-- Sequence structure for bonojuancito_institucioneducativa_validacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bonojuancito_institucioneducativa_validacion_id_seq";
CREATE SEQUENCE "public"."bonojuancito_institucioneducativa_validacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 126481
CACHE 1;

-- ----------------------------
-- Sequence structure for bonojuancito_paga_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bonojuancito_paga_id_seq";
CREATE SEQUENCE "public"."bonojuancito_paga_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for bonojuancito_unidadmilitar_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bonojuancito_unidadmilitar_id_seq";
CREATE SEQUENCE "public"."bonojuancito_unidadmilitar_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for bth_estudiante_nivelacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bth_estudiante_nivelacion_id_seq";
CREATE SEQUENCE "public"."bth_estudiante_nivelacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for carrera_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."carrera_id_seq";
CREATE SEQUENCE "public"."carrera_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for catalogo_maestro_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."catalogo_maestro_tipo_id_seq";
CREATE SEQUENCE "public"."catalogo_maestro_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cdl_club_lectura_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cdl_club_lectura_id_seq";
CREATE SEQUENCE "public"."cdl_club_lectura_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cdl_eventos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cdl_eventos_id_seq";
CREATE SEQUENCE "public"."cdl_eventos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cdl_integrantes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cdl_integrantes_id_seq";
CREATE SEQUENCE "public"."cdl_integrantes_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cdl_productoimagen_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cdl_productoimagen_id_seq";
CREATE SEQUENCE "public"."cdl_productoimagen_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cdl_productos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cdl_productos_id_seq";
CREATE SEQUENCE "public"."cdl_productos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for certificado_rue_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."certificado_rue_id_seq";
CREATE SEQUENCE "public"."certificado_rue_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 17
CACHE 1;

-- ----------------------------
-- Sequence structure for certificado_rue_institucioneducativa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."certificado_rue_institucioneducativa_id_seq";
CREATE SEQUENCE "public"."certificado_rue_institucioneducativa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 39894
CACHE 1;

-- ----------------------------
-- Sequence structure for ciclo_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ciclo_tipo_id_seq";
CREATE SEQUENCE "public"."ciclo_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 40
CACHE 1;

-- ----------------------------
-- Sequence structure for comision_juegos_cupo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."comision_juegos_cupo_seq";
CREATE SEQUENCE "public"."comision_juegos_cupo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for comision_juegos_datos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."comision_juegos_datos_id_seq";
CREATE SEQUENCE "public"."comision_juegos_datos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for comision_juegos_datos_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."comision_juegos_datos_seq";
CREATE SEQUENCE "public"."comision_juegos_datos_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for consolidacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."consolidacion_id_seq";
CREATE SEQUENCE "public"."consolidacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for control_archivos_bajada_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."control_archivos_bajada_id_seq";
CREATE SEQUENCE "public"."control_archivos_bajada_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for control_instalador_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."control_instalador_id_seq";
CREATE SEQUENCE "public"."control_instalador_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for control_operativo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."control_operativo_id_seq";
CREATE SEQUENCE "public"."control_operativo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for datos_personales_iddatos_personales_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."datos_personales_iddatos_personales_seq";
CREATE SEQUENCE "public"."datos_personales_iddatos_personales_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for distrito_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."distrito_tipo_id_seq";
CREATE SEQUENCE "public"."distrito_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for documento_firma_autorizada_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."documento_firma_autorizada_id_seq";
CREATE SEQUENCE "public"."documento_firma_autorizada_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for documento_firma_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."documento_firma_id_seq";
CREATE SEQUENCE "public"."documento_firma_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for documento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."documento_id_seq";
CREATE SEQUENCE "public"."documento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for download_file_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."download_file_id_seq";
CREATE SEQUENCE "public"."download_file_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for entidadfinanciera_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."entidadfinanciera_tipo_id_seq";
CREATE SEQUENCE "public"."entidadfinanciera_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for equip_labo_fisi_quim_correos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."equip_labo_fisi_quim_correos_id_seq";
CREATE SEQUENCE "public"."equip_labo_fisi_quim_correos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for equip_labo_fisi_quim_fotos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."equip_labo_fisi_quim_fotos_id_seq";
CREATE SEQUENCE "public"."equip_labo_fisi_quim_fotos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for equip_labo_fisi_quim_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."equip_labo_fisi_quim_id_seq";
CREATE SEQUENCE "public"."equip_labo_fisi_quim_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for especialidad_tipo_humnistico_tecnico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."especialidad_tipo_humnistico_tecnico_id_seq";
CREATE SEQUENCE "public"."especialidad_tipo_humnistico_tecnico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 104
CACHE 1;

-- ----------------------------
-- Sequence structure for estadomatricula_regla_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estadomatricula_regla_id_seq";
CREATE SEQUENCE "public"."estadomatricula_regla_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estructura_educativa_asignatura_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estructura_educativa_asignatura_id_seq";
CREATE SEQUENCE "public"."estructura_educativa_asignatura_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estructura_educativa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estructura_educativa_id_seq";
CREATE SEQUENCE "public"."estructura_educativa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estructura_educativa_regla_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estructura_educativa_regla_id_seq";
CREATE SEQUENCE "public"."estructura_educativa_regla_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiant_banco_preguntas_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiant_banco_preguntas_id_seq";
CREATE SEQUENCE "public"."estudiant_banco_preguntas_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_apoderado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_apoderado_id_seq";
CREATE SEQUENCE "public"."estudiante_apoderado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_asignatura_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_asignatura_id_seq";
CREATE SEQUENCE "public"."estudiante_asignatura_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 93588659
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_back_detalle_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_back_detalle_id_seq";
CREATE SEQUENCE "public"."estudiante_back_detalle_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_back_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_back_id_seq";
CREATE SEQUENCE "public"."estudiante_back_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_cambio_genero_detalle_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_cambio_genero_detalle_id_seq";
CREATE SEQUENCE "public"."estudiante_cambio_genero_detalle_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_cambio_genero_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_cambio_genero_id_seq";
CREATE SEQUENCE "public"."estudiante_cambio_genero_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_cambio_genero_total_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_cambio_genero_total_id_seq";
CREATE SEQUENCE "public"."estudiante_cambio_genero_total_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_cambio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_cambio_id_seq";
CREATE SEQUENCE "public"."estudiante_cambio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_datopersonal_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_datopersonal_id_seq";
CREATE SEQUENCE "public"."estudiante_datopersonal_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_destacado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_destacado_id_seq";
CREATE SEQUENCE "public"."estudiante_destacado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 80
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_esp_indir_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_esp_indir_id_seq";
CREATE SEQUENCE "public"."estudiante_esp_indir_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_especial_indirecta_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_especial_indirecta_id_seq";
CREATE SEQUENCE "public"."estudiante_especial_indirecta_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 16
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_historial_modificacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_historial_modificacion_id_seq";
CREATE SEQUENCE "public"."estudiante_historial_modificacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_id_seq";
CREATE SEQUENCE "public"."estudiante_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5573357
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_adulto_especial_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_adulto_especial_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_adulto_especial_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_alternativa_excepcional_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_alternativa_excepcional_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_alternativa_excepcional_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 10
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_alternativa_excepcional_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_alternativa_excepcional_tipo_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_alternativa_excepcional_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_asistencia_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_asistencia_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_asistencia_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_cambioestado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_cambioestado_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_cambioestado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_diplomatico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_diplomatico_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_diplomatico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_documento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_documento_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_documento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_eliminados_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_eliminados_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_eliminados_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_especial_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_especial_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_especial_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_extranjero_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_extranjero_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_extranjero_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_humnistico_tecnico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_humnistico_tecnico_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_humnistico_tecnico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5726921
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_jue_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_jue_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_jue_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2337083
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_juegos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_juegos_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_juegos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 100000000
START 2351066
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_alt_acceso_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_acceso_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_alt_acceso_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_alt_habla_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_habla_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_alt_habla_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_alt_modalidad_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_modalidad_tipo_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_alt_modalidad_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_alt_ocupacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_ocupacion_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_alt_ocupacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_alt_transporte_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_transporte_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_alt_transporte_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_alternativa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alternativa_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_alternativa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_actividad_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_actividad_tipo_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_actividad_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_aguaproviene_t_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_aguaproviene_t_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_aguaproviene_t_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_cant_centrosal_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_cant_centrosal_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_cant_centrosal_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_desague_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_desague_tipo_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_desague_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_discapacidad_t_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_discapacidad_t_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_discapacidad_t_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_est_discapacid_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_est_discapacid_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_est_discapacid_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_frec_internet__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_frec_internet__id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_frec_internet__id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_habla_frec_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_habla_frec_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_habla_frec_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_internet_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_internet_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_internet_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_internet_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_internet_tipo_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_internet_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_llega_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_llega_tipo_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_llega_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_nacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_nacion_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_nacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_reg_tiempotrans_ti_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_tiempotrans_ti_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_reg_tiempotrans_ti_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_regular_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_regular_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_regular_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_inscripcion_socioeconomico_transporte_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_transporte_id_seq";
CREATE SEQUENCE "public"."estudiante_inscripcion_socioeconomico_transporte_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_juegos_datos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_juegos_datos_id_seq";
CREATE SEQUENCE "public"."estudiante_juegos_datos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 928423
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_nota_cualitativa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_nota_cualitativa_id_seq";
CREATE SEQUENCE "public"."estudiante_nota_cualitativa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2861973
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_nota_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_nota_id_seq";
CREATE SEQUENCE "public"."estudiante_nota_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 120251869
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_nota_modificacion_detalle_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_nota_modificacion_detalle_id_seq";
CREATE SEQUENCE "public"."estudiante_nota_modificacion_detalle_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 40
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_nota_modificacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_nota_modificacion_id_seq";
CREATE SEQUENCE "public"."estudiante_nota_modificacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 21
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_nota_solicitud_detalle_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_nota_solicitud_detalle_id_seq";
CREATE SEQUENCE "public"."estudiante_nota_solicitud_detalle_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 24
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_nota_solicitud_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_nota_solicitud_id_seq";
CREATE SEQUENCE "public"."estudiante_nota_solicitud_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 19
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_talento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_talento_id_seq";
CREATE SEQUENCE "public"."estudiante_talento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiante_trabajo_remuneracion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiante_trabajo_remuneracion_id_seq";
CREATE SEQUENCE "public"."estudiante_trabajo_remuneracion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudiantenoacredidato_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudiantenoacredidato_id_seq";
CREATE SEQUENCE "public"."estudiantenoacredidato_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 10
CACHE 1;

-- ----------------------------
-- Sequence structure for flujo_proceso_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."flujo_proceso_id_seq";
CREATE SEQUENCE "public"."flujo_proceso_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for flujo_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."flujo_tipo_id_seq";
CREATE SEQUENCE "public"."flujo_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for formulario_rue_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."formulario_rue_seq";
CREATE SEQUENCE "public"."formulario_rue_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gamlp_estudiante_mochila_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gamlp_estudiante_mochila_id_seq";
CREATE SEQUENCE "public"."gamlp_estudiante_mochila_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gamlp_maestro_mochila_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gamlp_maestro_mochila_id_seq";
CREATE SEQUENCE "public"."gamlp_maestro_mochila_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gis_bolivia_buff_gid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gis_bolivia_buff_gid_seq";
CREATE SEQUENCE "public"."gis_bolivia_buff_gid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for grupo_sanguineo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."grupo_sanguineo_id_seq";
CREATE SEQUENCE "public"."grupo_sanguineo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gruposanguineo_tipo_id_grupo_sanguineo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gruposanguineo_tipo_id_grupo_sanguineo_seq";
CREATE SEQUENCE "public"."gruposanguineo_tipo_id_grupo_sanguineo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for homologacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."homologacion_id_seq";
CREATE SEQUENCE "public"."homologacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."id_seq";
CREATE SEQUENCE "public"."id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for imagen_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."imagen_tipo_id_seq";
CREATE SEQUENCE "public"."imagen_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for imagenes_institucioneducativa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."imagenes_institucioneducativa_id_seq";
CREATE SEQUENCE "public"."imagenes_institucioneducativa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_acceso_edificacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_acceso_edificacion_id_seq";
CREATE SEQUENCE "public"."infra_acceso_edificacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_acceso_edificacion_senialetica_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_acceso_edificacion_senialetica_id_seq";
CREATE SEQUENCE "public"."infra_acceso_edificacion_senialetica_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_acceso_medio_grada_rampa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_acceso_medio_grada_rampa_id_seq";
CREATE SEQUENCE "public"."infra_acceso_medio_grada_rampa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_acceso_medio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_acceso_medio_id_seq";
CREATE SEQUENCE "public"."infra_acceso_medio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_acceso_medio_ubicacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_acceso_medio_ubicacion_id_seq";
CREATE SEQUENCE "public"."infra_acceso_medio_ubicacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_acceso_predio_transporte_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_acceso_predio_transporte_id_seq";
CREATE SEQUENCE "public"."infra_acceso_predio_transporte_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_acceso_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_acceso_tipo_id_seq";
CREATE SEQUENCE "public"."infra_acceso_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_agua_uso_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_agua_uso_tipo_id_seq";
CREATE SEQUENCE "public"."infra_agua_uso_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_ambiente_agua_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_ambiente_agua_tipo_id_seq";
CREATE SEQUENCE "public"."infra_ambiente_agua_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_ambiente_categoria_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_ambiente_categoria_tipo_id_seq";
CREATE SEQUENCE "public"."infra_ambiente_categoria_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_ambiente_condicion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_ambiente_condicion_id_seq";
CREATE SEQUENCE "public"."infra_ambiente_condicion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_ambiente_destinado_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_ambiente_destinado_tipo_id_seq";
CREATE SEQUENCE "public"."infra_ambiente_destinado_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_ambiente_especialidad_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_ambiente_especialidad_id_seq";
CREATE SEQUENCE "public"."infra_ambiente_especialidad_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_ambiente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_ambiente_id_seq";
CREATE SEQUENCE "public"."infra_ambiente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_ambiente_mobiliario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_ambiente_mobiliario_id_seq";
CREATE SEQUENCE "public"."infra_ambiente_mobiliario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_ambiente_predio_institucioneducativa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_ambiente_predio_institucioneducativa_id_seq";
CREATE SEQUENCE "public"."infra_ambiente_predio_institucioneducativa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_ambiente_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_ambiente_tipo_id_seq";
CREATE SEQUENCE "public"."infra_ambiente_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_amurallado_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_amurallado_tipo_id_seq";
CREATE SEQUENCE "public"."infra_amurallado_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_area_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_area_tipo_id_seq";
CREATE SEQUENCE "public"."infra_area_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_artefacto_banio_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_artefacto_banio_tipo_id_seq";
CREATE SEQUENCE "public"."infra_artefacto_banio_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_bateria_artefacto_banio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_bateria_artefacto_banio_id_seq";
CREATE SEQUENCE "public"."infra_bateria_artefacto_banio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_bloque_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_bloque_id_seq";
CREATE SEQUENCE "public"."infra_bloque_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_caracteristica_construccion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_caracteristica_construccion_id_seq";
CREATE SEQUENCE "public"."infra_caracteristica_construccion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_caracteristica_edificacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_caracteristica_edificacion_id_seq";
CREATE SEQUENCE "public"."infra_caracteristica_edificacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_caracteristica_terreno_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_caracteristica_terreno_id_seq";
CREATE SEQUENCE "public"."infra_caracteristica_terreno_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_caracteristica_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_caracteristica_tipo_id_seq";
CREATE SEQUENCE "public"."infra_caracteristica_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_caracteristicas_espacio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_caracteristicas_espacio_id_seq";
CREATE SEQUENCE "public"."infra_caracteristicas_espacio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_condicion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_condicion_id_seq";
CREATE SEQUENCE "public"."infra_condicion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_construccion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_construccion_id_seq";
CREATE SEQUENCE "public"."infra_construccion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_disponibilidad_servicio_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_disponibilidad_servicio_tipo_id_seq";
CREATE SEQUENCE "public"."infra_disponibilidad_servicio_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_documentacion_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_documentacion_tipo_id_seq";
CREATE SEQUENCE "public"."infra_documentacion_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_edificacion_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_edificacion_tipo_id_seq";
CREATE SEQUENCE "public"."infra_edificacion_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_edificacion_tipo_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_edificacion_tipo_tipo_id_seq";
CREATE SEQUENCE "public"."infra_edificacion_tipo_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_entidad_ejecutora_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_entidad_ejecutora_tipo_id_seq";
CREATE SEQUENCE "public"."infra_entidad_ejecutora_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_equipamiento_brigada_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_equipamiento_brigada_tipo_id_seq";
CREATE SEQUENCE "public"."infra_equipamiento_brigada_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_equipamiento_categoria_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_equipamiento_categoria_tipo_id_seq";
CREATE SEQUENCE "public"."infra_equipamiento_categoria_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_equipamiento_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_equipamiento_tipo_id_seq";
CREATE SEQUENCE "public"."infra_equipamiento_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_espacios_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_espacios_tipo_id_seq";
CREATE SEQUENCE "public"."infra_espacios_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_estado_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_estado_tipo_id_seq";
CREATE SEQUENCE "public"."infra_estado_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_evacuacion_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_evacuacion_tipo_id_seq";
CREATE SEQUENCE "public"."infra_evacuacion_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_fuente_energia_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_fuente_energia_tipo_id_seq";
CREATE SEQUENCE "public"."infra_fuente_energia_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_gestion_construccion_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_gestion_construccion_tipo_id_seq";
CREATE SEQUENCE "public"."infra_gestion_construccion_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_grada_rampa_cuenta_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_grada_rampa_cuenta_tipo_id_seq";
CREATE SEQUENCE "public"."infra_grada_rampa_cuenta_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_hecho_delictivo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_hecho_delictivo_id_seq";
CREATE SEQUENCE "public"."infra_hecho_delictivo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_hurto_delictivo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_hurto_delictivo_id_seq";
CREATE SEQUENCE "public"."infra_hurto_delictivo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_instalacion_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_instalacion_tipo_id_seq";
CREATE SEQUENCE "public"."infra_instalacion_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_institucioneducativa_equipamiento_brigada_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_institucioneducativa_equipamiento_brigada_id_seq";
CREATE SEQUENCE "public"."infra_institucioneducativa_equipamiento_brigada_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_institucioneducativa_prevencion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_institucioneducativa_prevencion_id_seq";
CREATE SEQUENCE "public"."infra_institucioneducativa_prevencion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_material_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_material_tipo_id_seq";
CREATE SEQUENCE "public"."infra_material_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_medio_acceso_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_medio_acceso_tipo_id_seq";
CREATE SEQUENCE "public"."infra_medio_acceso_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_medio_eliminacion_basura_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_medio_eliminacion_basura_tipo_id_seq";
CREATE SEQUENCE "public"."infra_medio_eliminacion_basura_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_medio_eliminacion_exc_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_medio_eliminacion_exc_tipo_id_seq";
CREATE SEQUENCE "public"."infra_medio_eliminacion_exc_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_medio_suministro_agua_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_medio_suministro_agua_tipo_id_seq";
CREATE SEQUENCE "public"."infra_medio_suministro_agua_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_medio_transporte_categoria_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_medio_transporte_categoria_tipo_id_seq";
CREATE SEQUENCE "public"."infra_medio_transporte_categoria_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_medio_transporte_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_medio_transporte_tipo_id_seq";
CREATE SEQUENCE "public"."infra_medio_transporte_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_mobiliario_predio_institucioneducativa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_mobiliario_predio_institucioneducativa_id_seq";
CREATE SEQUENCE "public"."infra_mobiliario_predio_institucioneducativa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_mobiliario_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_mobiliario_tipo_id_seq";
CREATE SEQUENCE "public"."infra_mobiliario_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_no_pedagogico_internado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_no_pedagogico_internado_id_seq";
CREATE SEQUENCE "public"."infra_no_pedagogico_internado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_no_pedagogico_vivienda_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_no_pedagogico_vivienda_id_seq";
CREATE SEQUENCE "public"."infra_no_pedagogico_vivienda_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_pedagogico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_pedagogico_id_seq";
CREATE SEQUENCE "public"."infra_pedagogico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_pedagogico_recreativo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_pedagogico_recreativo_id_seq";
CREATE SEQUENCE "public"."infra_pedagogico_recreativo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_periodicidad_eliminacion_basura_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_periodicidad_eliminacion_basura_tipo_id_seq";
CREATE SEQUENCE "public"."infra_periodicidad_eliminacion_basura_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_piso_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_piso_id_seq";
CREATE SEQUENCE "public"."infra_piso_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_predio_foto_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_predio_foto_id_seq";
CREATE SEQUENCE "public"."infra_predio_foto_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 13
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_predio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_predio_id_seq";
CREATE SEQUENCE "public"."infra_predio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_predio_institucioneducativa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_predio_institucioneducativa_id_seq";
CREATE SEQUENCE "public"."infra_predio_institucioneducativa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_predio_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_predio_tipo_id_seq";
CREATE SEQUENCE "public"."infra_predio_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_pregunta_ambiente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_pregunta_ambiente_id_seq";
CREATE SEQUENCE "public"."infra_pregunta_ambiente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_pregunta_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_pregunta_tipo_id_seq";
CREATE SEQUENCE "public"."infra_pregunta_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_prevencion_equipamiento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_prevencion_equipamiento_id_seq";
CREATE SEQUENCE "public"."infra_prevencion_equipamiento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_propiedad_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_propiedad_tipo_id_seq";
CREATE SEQUENCE "public"."infra_propiedad_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_proximo_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_proximo_tipo_id_seq";
CREATE SEQUENCE "public"."infra_proximo_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_purificador_agua_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_purificador_agua_tipo_id_seq";
CREATE SEQUENCE "public"."infra_purificador_agua_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_responsable_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_responsable_tipo_id_seq";
CREATE SEQUENCE "public"."infra_responsable_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_riesgo_evento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_riesgo_evento_id_seq";
CREATE SEQUENCE "public"."infra_riesgo_evento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_riesgo_evento_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_riesgo_evento_tipo_id_seq";
CREATE SEQUENCE "public"."infra_riesgo_evento_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_riesgo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_riesgo_id_seq";
CREATE SEQUENCE "public"."infra_riesgo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_riesgo_proximo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_riesgo_proximo_id_seq";
CREATE SEQUENCE "public"."infra_riesgo_proximo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_senialetica_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_senialetica_tipo_id_seq";
CREATE SEQUENCE "public"."infra_senialetica_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_servicio_agua_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_servicio_agua_id_seq";
CREATE SEQUENCE "public"."infra_servicio_agua_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_servicio_ambiente_agua_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_servicio_ambiente_agua_id_seq";
CREATE SEQUENCE "public"."infra_servicio_ambiente_agua_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_servicio_electrico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_servicio_electrico_id_seq";
CREATE SEQUENCE "public"."infra_servicio_electrico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_servicio_otro_categoria_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_servicio_otro_categoria_tipo_id_seq";
CREATE SEQUENCE "public"."infra_servicio_otro_categoria_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_servicio_otro_condicion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_servicio_otro_condicion_id_seq";
CREATE SEQUENCE "public"."infra_servicio_otro_condicion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_servicio_otro_cuenta_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_servicio_otro_cuenta_id_seq";
CREATE SEQUENCE "public"."infra_servicio_otro_cuenta_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_servicio_otro_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_servicio_otro_id_seq";
CREATE SEQUENCE "public"."infra_servicio_otro_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_servicio_otro_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_servicio_otro_tipo_id_seq";
CREATE SEQUENCE "public"."infra_servicio_otro_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_servicio_saneamiento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_servicio_saneamiento_id_seq";
CREATE SEQUENCE "public"."infra_servicio_saneamiento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_servicio_saneamiento_medio_eliminacion_exc_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_servicio_saneamiento_medio_eliminacion_exc_id_seq";
CREATE SEQUENCE "public"."infra_servicio_saneamiento_medio_eliminacion_exc_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_tenencia_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_tenencia_tipo_id_seq";
CREATE SEQUENCE "public"."infra_tenencia_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_tiempo_suspendido_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_tiempo_suspendido_tipo_id_seq";
CREATE SEQUENCE "public"."infra_tiempo_suspendido_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_topografia_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infra_topografia_tipo_id_seq";
CREATE SEQUENCE "public"."infra_topografia_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_acceso_agua_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_acceso_agua_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_acceso_agua_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_ambiente_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_ambiente_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_ambiente_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_ambienteadministrativo_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_ambienteadministrativo_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_ambienteadministrativo_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_avance_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_avance_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_avance_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_baño_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_baño_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_baño_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_cielo_material_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_cielo_material_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_cielo_material_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_disponibilidad_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_disponibilidad_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_disponibilidad_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_documento_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_documento_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_documento_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_eliminacion_basura_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_eliminacion_basura_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_eliminacion_basura_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_enlugar_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_enlugar_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_enlugar_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_estadogeneral_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_estadogeneral_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_estadogeneral_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_fuente_electrica_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_fuente_electrica_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_fuente_electrica_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_gen_ambientes_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_gen_ambientes_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_gen_ambientes_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_gen_equipamiento_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_gen_equipamiento_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_gen_equipamiento_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_gen_horario_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_gen_horario_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_gen_horario_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_gen_mobiliario_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_gen_mobiliario_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_gen_mobiliario_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h1_datosgenerales_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h1_datosgenerales_id_seq";
CREATE SEQUENCE "public"."infraestructura_h1_datosgenerales_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h1_institucioneseducativa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h1_institucioneseducativa_id_seq";
CREATE SEQUENCE "public"."infraestructura_h1_institucioneseducativa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h1_tenencia_tipo_id_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h1_tenencia_tipo_id_id_seq";
CREATE SEQUENCE "public"."infraestructura_h1_tenencia_tipo_id_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h2_caracteristica_edificados_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h2_caracteristica_edificados_id_seq";
CREATE SEQUENCE "public"."infraestructura_h2_caracteristica_edificados_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h2_caracteristica_edificados_pisos_grada_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h2_caracteristica_edificados_pisos_grada_id_seq";
CREATE SEQUENCE "public"."infraestructura_h2_caracteristica_edificados_pisos_grada_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h2_caracteristica_edificados_pisos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h2_caracteristica_edificados_pisos_id_seq";
CREATE SEQUENCE "public"."infraestructura_h2_caracteristica_edificados_pisos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h2_caracteristica_edificados_pisos_rampa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h2_caracteristica_edificados_pisos_rampa_id_seq";
CREATE SEQUENCE "public"."infraestructura_h2_caracteristica_edificados_pisos_rampa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h2_caracteristica_edificados_pisos_senal_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h2_caracteristica_edificados_pisos_senal_id_seq";
CREATE SEQUENCE "public"."infraestructura_h2_caracteristica_edificados_pisos_senal_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h2_caracteristica_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h2_caracteristica_id_seq";
CREATE SEQUENCE "public"."infraestructura_h2_caracteristica_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h2_caracteristica_terreno_rampas_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h2_caracteristica_terreno_rampas_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_h2_caracteristica_terreno_rampas_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h2_caracteristica_terreno_senales_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h2_caracteristica_terreno_senales_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_h2_caracteristica_terreno_senales_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h3_delitos_edificio_detalle_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h3_delitos_edificio_detalle_id_seq";
CREATE SEQUENCE "public"."infraestructura_h3_delitos_edificio_detalle_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h3_delitos_edificio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h3_delitos_edificio_id_seq";
CREATE SEQUENCE "public"."infraestructura_h3_delitos_edificio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h3_riesgos_delitos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h3_riesgos_delitos_id_seq";
CREATE SEQUENCE "public"."infraestructura_h3_riesgos_delitos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h3_servicio_agua_ambientes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h3_servicio_agua_ambientes_id_seq";
CREATE SEQUENCE "public"."infraestructura_h3_servicio_agua_ambientes_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h3_servicio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h3_servicio_id_seq";
CREATE SEQUENCE "public"."infraestructura_h3_servicio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h3_servicio_saneamiento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h3_servicio_saneamiento_id_seq";
CREATE SEQUENCE "public"."infraestructura_h3_servicio_saneamiento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h3_servicio_vestuarios_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h3_servicio_vestuarios_id_seq";
CREATE SEQUENCE "public"."infraestructura_h3_servicio_vestuarios_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h4_ambientepedagogico_deportivo_ambiente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h4_ambientepedagogico_deportivo_ambiente_id_seq";
CREATE SEQUENCE "public"."infraestructura_h4_ambientepedagogico_deportivo_ambiente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h4_ambientepedagogico_deportivo_equimien_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h4_ambientepedagogico_deportivo_equimien_id_seq";
CREATE SEQUENCE "public"."infraestructura_h4_ambientepedagogico_deportivo_equimien_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h4_ambientepedagogico_deportivo_equipami_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h4_ambientepedagogico_deportivo_equipami_id_seq";
CREATE SEQUENCE "public"."infraestructura_h4_ambientepedagogico_deportivo_equipami_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h4_ambientepedagogico_deportivo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h4_ambientepedagogico_deportivo_id_seq";
CREATE SEQUENCE "public"."infraestructura_h4_ambientepedagogico_deportivo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h4_ambientepedagogico_equipamiento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h4_ambientepedagogico_equipamiento_id_seq";
CREATE SEQUENCE "public"."infraestructura_h4_ambientepedagogico_equipamiento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h4_ambientepedagogico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h4_ambientepedagogico_id_seq";
CREATE SEQUENCE "public"."infraestructura_h4_ambientepedagogico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h4_ambientepedagogico_mobiliario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h4_ambientepedagogico_mobiliario_id_seq";
CREATE SEQUENCE "public"."infraestructura_h4_ambientepedagogico_mobiliario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h4_servicio_bateria_banos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h4_servicio_bateria_banos_id_seq";
CREATE SEQUENCE "public"."infraestructura_h4_servicio_bateria_banos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 33476
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h4_servicio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h4_servicio_id_seq";
CREATE SEQUENCE "public"."infraestructura_h4_servicio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 26760
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h4_servicio_vestuarios_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h4_servicio_vestuarios_id_seq";
CREATE SEQUENCE "public"."infraestructura_h4_servicio_vestuarios_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_ambiente_equip_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_ambiente_equip_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_ambiente_equip_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_ambiente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_ambiente_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_ambiente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_ambiente_mobil_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_ambiente_mobil_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_ambiente_mobil_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_cancha_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_cancha_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_cancha_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_coliseo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_coliseo_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_coliseo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_inmobiliario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_inmobiliario_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_inmobiliario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_inter_dormitor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_inter_dormitor_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_inter_dormitor_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_internado_est_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_internado_est_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_internado_est_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_parque_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_parque_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_parque_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_patio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_patio_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_patio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_picina_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_picina_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_picina_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_serv_alimentac_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_serv_alimentac_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_serv_alimentac_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambienteadministrativo_viv_maestros_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_viv_maestros_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambienteadministrativo_viv_maestros_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambientepedagogico_deportivo_equipamiento_id
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_deportivo_equipamiento_id";
CREATE SEQUENCE "public"."infraestructura_h5_ambientepedagogico_deportivo_equipamiento_id" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambientepedagogico_deportivo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_deportivo_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambientepedagogico_deportivo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambientepedagogico_equipamiento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_equipamiento_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambientepedagogico_equipamiento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambientepedagogico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambientepedagogico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 185664
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h5_ambientepedagogico_mobiliario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_mobiliario_id_seq";
CREATE SEQUENCE "public"."infraestructura_h5_ambientepedagogico_mobiliario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_ambienteadministrativo_ambiente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_ambiente_id_seq";
CREATE SEQUENCE "public"."infraestructura_h6_ambienteadministrativo_ambiente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 30922
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_ambienteadministrativo_equipamiento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_equipamiento_id_seq";
CREATE SEQUENCE "public"."infraestructura_h6_ambienteadministrativo_equipamiento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_ambienteadministrativo_inter_dormitorios_id_
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_inter_dormitorios_id_";
CREATE SEQUENCE "public"."infraestructura_h6_ambienteadministrativo_inter_dormitorios_id_" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_ambienteadministrativo_internado_est_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_internado_est_id_seq";
CREATE SEQUENCE "public"."infraestructura_h6_ambienteadministrativo_internado_est_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_ambienteadministrativo_mobiliario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_mobiliario_id_seq";
CREATE SEQUENCE "public"."infraestructura_h6_ambienteadministrativo_mobiliario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_ambienteadministrativo_serv_alimentacion_id_
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_serv_alimentacion_id_";
CREATE SEQUENCE "public"."infraestructura_h6_ambienteadministrativo_serv_alimentacion_id_" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_ambienteadministrativo_viv_maestros_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_viv_maestros_id_seq";
CREATE SEQUENCE "public"."infraestructura_h6_ambienteadministrativo_viv_maestros_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_equipamiento_alimentacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_equipamiento_alimentacion_id_seq";
CREATE SEQUENCE "public"."infraestructura_h6_equipamiento_alimentacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_equipamiento_dormitorio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_equipamiento_dormitorio_id_seq";
CREATE SEQUENCE "public"."infraestructura_h6_equipamiento_dormitorio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_equipamiento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_equipamiento_id_seq";
CREATE SEQUENCE "public"."infraestructura_h6_equipamiento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_equipamiento_pedagogico_adicional_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_equipamiento_pedagogico_adicional_id_seq";
CREATE SEQUENCE "public"."infraestructura_h6_equipamiento_pedagogico_adicional_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_equipamiento_pedagogico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_equipamiento_pedagogico_id_seq";
CREATE SEQUENCE "public"."infraestructura_h6_equipamiento_pedagogico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_h6_equipamiento_vivienda_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_h6_equipamiento_vivienda_id_seq";
CREATE SEQUENCE "public"."infraestructura_h6_equipamiento_vivienda_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_idioma_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_idioma_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_idioma_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_inmobiliario_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_inmobiliario_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_inmobiliario_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_juridiccion_geografica_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_juridiccion_geografica_id_seq";
CREATE SEQUENCE "public"."infraestructura_juridiccion_geografica_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_juridiccion_geografica_municipio_centroi_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_juridiccion_geografica_municipio_centroi_id_seq";
CREATE SEQUENCE "public"."infraestructura_juridiccion_geografica_municipio_centroi_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_material_piso_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_material_piso_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_material_piso_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_material_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_material_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_material_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_medio_agua_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_medio_agua_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_medio_agua_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_mobiliario_adicional_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_mobiliario_adicional_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_mobiliario_adicional_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_mobiliario_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_mobiliario_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_mobiliario_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_orgcurricular_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_orgcurricular_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_orgcurricular_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_pared_material_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_pared_material_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_pared_material_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_periodicidad_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_periodicidad_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_periodicidad_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_piso_material_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_piso_material_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_piso_material_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_propiedad_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_propiedad_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_propiedad_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_purificador_agua_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_purificador_agua_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_purificador_agua_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_servicio_alimentacion_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_servicio_alimentacion_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_servicio_alimentacion_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_techo_material_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_techo_material_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_techo_material_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_topografia_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_topografia_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_topografia_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for infraestructura_uso_agua_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."infraestructura_uso_agua_tipo_id_seq";
CREATE SEQUENCE "public"."infraestructura_uso_agua_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_area_especial_autorizado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_area_especial_autorizado_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_area_especial_autorizado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_asignatura_tecnologico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_asignatura_tecnologico_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_asignatura_tecnologico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_control_operativo_menus_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_control_operativo_menus_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_control_operativo_menus_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_curso_datos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_curso_datos_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_curso_datos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_curso_especial_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_curso_especial_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_curso_especial_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_curso_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_curso_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_curso_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 315360
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_curso_oferta2_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_curso_oferta2_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_curso_oferta2_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_curso_oferta_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_curso_oferta_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_curso_oferta_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 28929477
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_curso_oferta_maestro_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_curso_oferta_maestro_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_curso_oferta_maestro_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_curso_oferta_maestro_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_curso_oferta_maestro_seq";
CREATE SEQUENCE "public"."institucioneducativa_curso_oferta_maestro_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 10683299
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_datos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_datos_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_datos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_encuesta_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_encuesta_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_encuesta_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_especialidad_tecnico_humanistico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_especialidad_tecnico_humanistico_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_especialidad_tecnico_humanistico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 508
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_historial_tramite_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_historial_tramite_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_historial_tramite_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_humanistico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_humanistico_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_humanistico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_humanistico_tecnico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_humanistico_tecnico_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_humanistico_tecnico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 179
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_nivel_autorizado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_nivel_autorizado_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_nivel_autorizado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_noacreditados_ddjj_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_noacreditados_ddjj_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_noacreditados_ddjj_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_operativo_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_operativo_log_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_operativo_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_operativo_log_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_operativo_log_tipo_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_operativo_log_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_operativo_validacionpersonal_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_operativo_validacionpersonal_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_operativo_validacionpersonal_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_sucursal_especial_cierre_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_sucursal_especial_cierre_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_sucursal_especial_cierre_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_sucursal_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_sucursal_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_sucursal_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 34
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativa_sucursal_tramite_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativa_sucursal_tramite_id_seq";
CREATE SEQUENCE "public"."institucioneducativa_sucursal_tramite_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 39
CACHE 1;

-- ----------------------------
-- Sequence structure for institucioneducativanoacreditado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."institucioneducativanoacreditado_id_seq";
CREATE SEQUENCE "public"."institucioneducativanoacreditado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jdp_comision_juegos_cupo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jdp_comision_juegos_cupo_id_seq";
CREATE SEQUENCE "public"."jdp_comision_juegos_cupo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jdp_comision_juegos_datos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jdp_comision_juegos_datos_id_seq";
CREATE SEQUENCE "public"."jdp_comision_juegos_datos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jdp_delegado_inscripcion_juegos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jdp_delegado_inscripcion_juegos_id_seq";
CREATE SEQUENCE "public"."jdp_delegado_inscripcion_juegos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jdp_disciplina_prueba_participacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jdp_disciplina_prueba_participacion_id_seq";
CREATE SEQUENCE "public"."jdp_disciplina_prueba_participacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jdp_equipo_estudiante_inscripcion_juegos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jdp_equipo_estudiante_inscripcion_juegos_id_seq";
CREATE SEQUENCE "public"."jdp_equipo_estudiante_inscripcion_juegos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jdp_estudiante_datopersonal_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jdp_estudiante_datopersonal_id_seq";
CREATE SEQUENCE "public"."jdp_estudiante_datopersonal_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jdp_estudiante_inscripcion_juegos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jdp_estudiante_inscripcion_juegos_id_seq";
CREATE SEQUENCE "public"."jdp_estudiante_inscripcion_juegos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jdp_persona_inscripcion_juegos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jdp_persona_inscripcion_juegos_id_seq";
CREATE SEQUENCE "public"."jdp_persona_inscripcion_juegos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jdp_prueba_regla_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jdp_prueba_regla_id_seq";
CREATE SEQUENCE "public"."jdp_prueba_regla_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for juegos_datos_seguimiento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."juegos_datos_seguimiento_id_seq";
CREATE SEQUENCE "public"."juegos_datos_seguimiento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for log_error_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."log_error_id_seq";
CREATE SEQUENCE "public"."log_error_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for log_regularizacion_maestro_id_sec
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."log_regularizacion_maestro_id_sec";
CREATE SEQUENCE "public"."log_regularizacion_maestro_id_sec" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for log_regularizacion_maestro_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."log_regularizacion_maestro_id_seq";
CREATE SEQUENCE "public"."log_regularizacion_maestro_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for log_transaccion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."log_transaccion_id_seq";
CREATE SEQUENCE "public"."log_transaccion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for maestro_cuentabancaria_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."maestro_cuentabancaria_id_seq";
CREATE SEQUENCE "public"."maestro_cuentabancaria_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713819
CACHE 1;

-- ----------------------------
-- Sequence structure for maestro_inscripcion_especial_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."maestro_inscripcion_especial_id_seq";
CREATE SEQUENCE "public"."maestro_inscripcion_especial_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for maestro_inscripcion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."maestro_inscripcion_id_seq";
CREATE SEQUENCE "public"."maestro_inscripcion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 430447
CACHE 1;

-- ----------------------------
-- Sequence structure for maestro_inscripcion_idioma_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."maestro_inscripcion_idioma_id_seq";
CREATE SEQUENCE "public"."maestro_inscripcion_idioma_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for maestroplanillas_rda_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."maestroplanillas_rda_seq";
CREATE SEQUENCE "public"."maestroplanillas_rda_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for mensaje_id
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."mensaje_id";
CREATE SEQUENCE "public"."mensaje_id" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for mensaje_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."mensaje_id_seq";
CREATE SEQUENCE "public"."mensaje_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for mensaje_usuario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."mensaje_usuario_id_seq";
CREATE SEQUENCE "public"."mensaje_usuario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for menu_nivel_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."menu_nivel_tipo_id_seq";
CREATE SEQUENCE "public"."menu_nivel_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for menu_objeto_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."menu_objeto_id_seq";
CREATE SEQUENCE "public"."menu_objeto_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999999999999
START 75
CACHE 1;

-- ----------------------------
-- Sequence structure for menu_sistema_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."menu_sistema_id_seq";
CREATE SEQUENCE "public"."menu_sistema_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for menu_sistema_rol_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."menu_sistema_rol_id_seq";
CREATE SEQUENCE "public"."menu_sistema_rol_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for menu_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."menu_tipo_id_seq";
CREATE SEQUENCE "public"."menu_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for municipioestadistico_gid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."municipioestadistico_gid_seq";
CREATE SEQUENCE "public"."municipioestadistico_gid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for mytable_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."mytable_id_seq";
CREATE SEQUENCE "public"."mytable_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for nota_especial_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."nota_especial_tipo_id_seq";
CREATE SEQUENCE "public"."nota_especial_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for nota_presentacion_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."nota_presentacion_tipo_id_seq";
CREATE SEQUENCE "public"."nota_presentacion_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for notificacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notificacion_id_seq";
CREATE SEQUENCE "public"."notificacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for notificacion_norecordar_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notificacion_norecordar_id_seq";
CREATE SEQUENCE "public"."notificacion_norecordar_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for notificacion_sistema_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notificacion_sistema_id_seq";
CREATE SEQUENCE "public"."notificacion_sistema_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for notificacion_usuario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notificacion_usuario_id_seq";
CREATE SEQUENCE "public"."notificacion_usuario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_archivo_subido_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_archivo_subido_id_seq";
CREATE SEQUENCE "public"."olim_archivo_subido_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_director_inscripcion_datos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_director_inscripcion_datos_id_seq";
CREATE SEQUENCE "public"."olim_director_inscripcion_datos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_estudiante_inscripcion_curso_superior_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_estudiante_inscripcion_curso_superior_id_seq";
CREATE SEQUENCE "public"."olim_estudiante_inscripcion_curso_superior_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_estudiante_inscripcion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_estudiante_inscripcion_id_seq";
CREATE SEQUENCE "public"."olim_estudiante_inscripcion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_estudiante_nota_prueba_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_estudiante_nota_prueba_id_seq";
CREATE SEQUENCE "public"."olim_estudiante_nota_prueba_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_etapa_periodo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_etapa_periodo_id_seq";
CREATE SEQUENCE "public"."olim_etapa_periodo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_etapa_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_etapa_tipo_id_seq";
CREATE SEQUENCE "public"."olim_etapa_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_grupo_proyecto_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_grupo_proyecto_id_seq";
CREATE SEQUENCE "public"."olim_grupo_proyecto_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_inscripcion_grupo_proyecto_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_inscripcion_grupo_proyecto_id_seq";
CREATE SEQUENCE "public"."olim_inscripcion_grupo_proyecto_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_inscripcion_tutor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_inscripcion_tutor_id_seq";
CREATE SEQUENCE "public"."olim_inscripcion_tutor_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_materia_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_materia_tipo_id_seq";
CREATE SEQUENCE "public"."olim_materia_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_medallero_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_medallero_tipo_id_seq";
CREATE SEQUENCE "public"."olim_medallero_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_modalidad_prueba_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_modalidad_prueba_tipo_id_seq";
CREATE SEQUENCE "public"."olim_modalidad_prueba_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_modalidad_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_modalidad_tipo_id_seq";
CREATE SEQUENCE "public"."olim_modalidad_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_nivel_matematica_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_nivel_matematica_tipo_id_seq";
CREATE SEQUENCE "public"."olim_nivel_matematica_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_registro_olimpiada_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_registro_olimpiada_id_seq";
CREATE SEQUENCE "public"."olim_registro_olimpiada_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_reglas_olimpiadas_nivel_grado_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_reglas_olimpiadas_nivel_grado_tipo_id_seq";
CREATE SEQUENCE "public"."olim_reglas_olimpiadas_nivel_grado_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_reglas_olimpiadas_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_reglas_olimpiadas_tipo_id_seq";
CREATE SEQUENCE "public"."olim_reglas_olimpiadas_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for olim_tutor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."olim_tutor_id_seq";
CREATE SEQUENCE "public"."olim_tutor_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for operativo_control_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."operativo_control_id_seq";
CREATE SEQUENCE "public"."operativo_control_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for origendiscapacidad_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."origendiscapacidad_tipo_id_seq";
CREATE SEQUENCE "public"."origendiscapacidad_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for partido_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."partido_id_seq";
CREATE SEQUENCE "public"."partido_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 72
CACHE 1;

-- ----------------------------
-- Sequence structure for partido_institucioneducativa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."partido_institucioneducativa_id_seq";
CREATE SEQUENCE "public"."partido_institucioneducativa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 6
CACHE 1;

-- ----------------------------
-- Sequence structure for periodo_intervalo_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."periodo_intervalo_tipo_id_seq";
CREATE SEQUENCE "public"."periodo_intervalo_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for permanente_area_tematica_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."permanente_area_tematica_tipo_id_seq";
CREATE SEQUENCE "public"."permanente_area_tematica_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for permanente_cursocorto_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."permanente_cursocorto_tipo_id_seq";
CREATE SEQUENCE "public"."permanente_cursocorto_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for permanente_institucioneducativa_cursocorto_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."permanente_institucioneducativa_cursocorto_id_seq";
CREATE SEQUENCE "public"."permanente_institucioneducativa_cursocorto_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for permanente_programa_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."permanente_programa_tipo_id_seq";
CREATE SEQUENCE "public"."permanente_programa_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for permiso_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."permiso_id_seq";
CREATE SEQUENCE "public"."permiso_id_seq" 
INCREMENT 1
MINVALUE  35
MAXVALUE 9223372036854775807
START 100
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_administrativo_inscripcion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_administrativo_inscripcion_id_seq";
CREATE SEQUENCE "public"."persona_administrativo_inscripcion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_carnet_control_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_carnet_control_id_seq";
CREATE SEQUENCE "public"."persona_carnet_control_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_documento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_documento_id_seq";
CREATE SEQUENCE "public"."persona_documento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_historico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_historico_id_seq";
CREATE SEQUENCE "public"."persona_historico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_id_seq";
CREATE SEQUENCE "public"."persona_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 13782537
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_observacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_observacion_id_seq";
CREATE SEQUENCE "public"."persona_observacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_tipo_id_seq";
CREATE SEQUENCE "public"."persona_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for plan_estudio_documento_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."plan_estudio_documento_id_seq";
CREATE SEQUENCE "public"."plan_estudio_documento_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for plan_estudio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."plan_estudio_id_seq";
CREATE SEQUENCE "public"."plan_estudio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pnp_reconocimiento_saberes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pnp_reconocimiento_saberes_id_seq";
CREATE SEQUENCE "public"."pnp_reconocimiento_saberes_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pnp_serial_rude_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pnp_serial_rude_id_seq";
CREATE SEQUENCE "public"."pnp_serial_rude_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for preuniversitario_categorias_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."preuniversitario_categorias_id_seq";
CREATE SEQUENCE "public"."preuniversitario_categorias_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for preuniversitario_comunicado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."preuniversitario_comunicado_id_seq";
CREATE SEQUENCE "public"."preuniversitario_comunicado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for preuniversitario_habilitar_cursos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."preuniversitario_habilitar_cursos_id_seq";
CREATE SEQUENCE "public"."preuniversitario_habilitar_cursos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for preuniversitario_inscripcion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."preuniversitario_inscripcion_id_seq";
CREATE SEQUENCE "public"."preuniversitario_inscripcion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for preuniversitario_opciones_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."preuniversitario_opciones_id_seq";
CREATE SEQUENCE "public"."preuniversitario_opciones_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for preuniversitario_preguntas_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."preuniversitario_preguntas_id_seq";
CREATE SEQUENCE "public"."preuniversitario_preguntas_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for preuniversitario_respuestas_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."preuniversitario_respuestas_id_seq";
CREATE SEQUENCE "public"."preuniversitario_respuestas_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for primera_conferencia_educativa_armarc_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."primera_conferencia_educativa_armarc_id_seq";
CREATE SEQUENCE "public"."primera_conferencia_educativa_armarc_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for primera_conferencia_educativa_asistencia_armarc_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."primera_conferencia_educativa_asistencia_armarc_id_seq";
CREATE SEQUENCE "public"."primera_conferencia_educativa_asistencia_armarc_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for proceso_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."proceso_tipo_id_seq";
CREATE SEQUENCE "public"."proceso_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for products_productid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."products_productid_seq";
CREATE SEQUENCE "public"."products_productid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for recinto_penitenciario_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."recinto_penitenciario_tipo_id_seq";
CREATE SEQUENCE "public"."recinto_penitenciario_tipo_id_seq" 
INCREMENT 1
MAXVALUE 100000
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for registro_rue_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."registro_rue_seq";
CREATE SEQUENCE "public"."registro_rue_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for resettoken_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resettoken_id_seq";
CREATE SEQUENCE "public"."resettoken_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rol_permiso_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rol_permiso_id_seq";
CREATE SEQUENCE "public"."rol_permiso_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 72
CACHE 1;

-- ----------------------------
-- Sequence structure for rol_persona_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rol_persona_id_seq";
CREATE SEQUENCE "public"."rol_persona_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 8893526
CACHE 1;

-- ----------------------------
-- Sequence structure for rol_roles_asignacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rol_roles_asignacion_id_seq";
CREATE SEQUENCE "public"."rol_roles_asignacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for roles_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."roles_id_seq";
CREATE SEQUENCE "public"."roles_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_abandono_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_abandono_id_seq";
CREATE SEQUENCE "public"."rude_abandono_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_acceso_internet_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_acceso_internet_id_seq";
CREATE SEQUENCE "public"."rude_acceso_internet_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_actividad_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_actividad_id_seq";
CREATE SEQUENCE "public"."rude_actividad_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_apoderado_inscripcion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_apoderado_inscripcion_id_seq";
CREATE SEQUENCE "public"."rude_apoderado_inscripcion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_centro_salud_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_centro_salud_id_seq";
CREATE SEQUENCE "public"."rude_centro_salud_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_discapacidad_grado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_discapacidad_grado_id_seq";
CREATE SEQUENCE "public"."rude_discapacidad_grado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_educacion_diversa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_educacion_diversa_id_seq";
CREATE SEQUENCE "public"."rude_educacion_diversa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_id_seq";
CREATE SEQUENCE "public"."rude_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_idioma_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_idioma_id_seq";
CREATE SEQUENCE "public"."rude_idioma_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_medio_transporte_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_medio_transporte_id_seq";
CREATE SEQUENCE "public"."rude_medio_transporte_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_medios_comunicacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_medios_comunicacion_id_seq";
CREATE SEQUENCE "public"."rude_medios_comunicacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_meses_trabajados_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_meses_trabajados_id_seq";
CREATE SEQUENCE "public"."rude_meses_trabajados_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_recibio_pago_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_recibio_pago_id_seq";
CREATE SEQUENCE "public"."rude_recibio_pago_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_servicio_basico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_servicio_basico_id_seq";
CREATE SEQUENCE "public"."rude_servicio_basico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rude_turno_trabajo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rude_turno_trabajo_id_seq";
CREATE SEQUENCE "public"."rude_turno_trabajo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sistema_archivos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sistema_archivos_id_seq";
CREATE SEQUENCE "public"."sistema_archivos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 157
CACHE 1;

-- ----------------------------
-- Sequence structure for sistema_archivos_rol_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sistema_archivos_rol_id_seq";
CREATE SEQUENCE "public"."sistema_archivos_rol_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sistema_rol_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sistema_rol_id_seq";
CREATE SEQUENCE "public"."sistema_rol_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sistema_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sistema_tipo_id_seq";
CREATE SEQUENCE "public"."sistema_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for socioeconomico_especial_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."socioeconomico_especial_id_seq";
CREATE SEQUENCE "public"."socioeconomico_especial_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for solicitud_tramite_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."solicitud_tramite_id_seq";
CREATE SEQUENCE "public"."solicitud_tramite_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for superior_acreditacion_especialidad_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."superior_acreditacion_especialidad_id_seq";
CREATE SEQUENCE "public"."superior_acreditacion_especialidad_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for superior_especialidad_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."superior_especialidad_tipo_id_seq";
CREATE SEQUENCE "public"."superior_especialidad_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 324
CACHE 1;

-- ----------------------------
-- Sequence structure for superior_institucioneducativa_acreditacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."superior_institucioneducativa_acreditacion_id_seq";
CREATE SEQUENCE "public"."superior_institucioneducativa_acreditacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 99999999
START 87579
CACHE 1;

-- ----------------------------
-- Sequence structure for superior_institucioneducativa_periodo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."superior_institucioneducativa_periodo_id_seq";
CREATE SEQUENCE "public"."superior_institucioneducativa_periodo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for superior_modulo_periodo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."superior_modulo_periodo_id_seq";
CREATE SEQUENCE "public"."superior_modulo_periodo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for superior_modulo_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."superior_modulo_tipo_id_seq";
CREATE SEQUENCE "public"."superior_modulo_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tramite_alternativa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tramite_alternativa_id_seq";
CREATE SEQUENCE "public"."tramite_alternativa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tramite_detalle_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tramite_detalle_id_seq";
CREATE SEQUENCE "public"."tramite_detalle_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 3292367
CACHE 1;

-- ----------------------------
-- Sequence structure for tramite_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tramite_id_seq";
CREATE SEQUENCE "public"."tramite_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_administrativo_carrera_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_administrativo_carrera_id_seq";
CREATE SEQUENCE "public"."ttec_administrativo_carrera_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_administrativo_carrera_persona_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_administrativo_carrera_persona_id_seq";
CREATE SEQUENCE "public"."ttec_administrativo_carrera_persona_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_administrativo_instituto_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_administrativo_instituto_id_seq";
CREATE SEQUENCE "public"."ttec_administrativo_instituto_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_administrativo_instituto_persona_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_administrativo_instituto_persona_id_seq";
CREATE SEQUENCE "public"."ttec_administrativo_instituto_persona_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_area_formacion_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_area_formacion_tipo_id_seq";
CREATE SEQUENCE "public"."ttec_area_formacion_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_calendario_operativo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_calendario_operativo_id_seq";
CREATE SEQUENCE "public"."ttec_calendario_operativo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_cargo_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_cargo_tipo_id_seq";
CREATE SEQUENCE "public"."ttec_cargo_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_carrera_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_carrera_tipo_id_seq";
CREATE SEQUENCE "public"."ttec_carrera_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_catalogo_materia_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_catalogo_materia_id_seq";
CREATE SEQUENCE "public"."ttec_catalogo_materia_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_denominacion_titulo_profesional_resolucion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_denominacion_titulo_profesional_resolucion_id_seq";
CREATE SEQUENCE "public"."ttec_denominacion_titulo_profesional_resolucion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_denominacion_titulo_profesional_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_denominacion_titulo_profesional_tipo_id_seq";
CREATE SEQUENCE "public"."ttec_denominacion_titulo_profesional_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_docente_materia_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_docente_materia_id_seq";
CREATE SEQUENCE "public"."ttec_docente_materia_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_docente_persona_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_docente_persona_id_seq";
CREATE SEQUENCE "public"."ttec_docente_persona_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_estudiante_inscripcion_competencia_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_estudiante_inscripcion_competencia_id_seq";
CREATE SEQUENCE "public"."ttec_estudiante_inscripcion_competencia_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_estudiante_inscripcion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_estudiante_inscripcion_id_seq";
CREATE SEQUENCE "public"."ttec_estudiante_inscripcion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_estudiante_matriculacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_estudiante_matriculacion_id_seq";
CREATE SEQUENCE "public"."ttec_estudiante_matriculacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_estudiante_nota_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_estudiante_nota_id_seq";
CREATE SEQUENCE "public"."ttec_estudiante_nota_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_formacion_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_formacion_tipo_id_seq";
CREATE SEQUENCE "public"."ttec_formacion_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_horario_paralelo_materia_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_horario_paralelo_materia_id_seq";
CREATE SEQUENCE "public"."ttec_horario_paralelo_materia_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_institucioneducativa_area_formacion_autorizado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_institucioneducativa_area_formacion_autorizado_id_seq";
CREATE SEQUENCE "public"."ttec_institucioneducativa_area_formacion_autorizado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5713795
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_institucioneducativa_area_formacion_autorizado_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_institucioneducativa_area_formacion_autorizado_id_seq1";
CREATE SEQUENCE "public"."ttec_institucioneducativa_area_formacion_autorizado_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_institucioneducativa_carrera_autorizada_curso_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_institucioneducativa_carrera_autorizada_curso_id_seq";
CREATE SEQUENCE "public"."ttec_institucioneducativa_carrera_autorizada_curso_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_institucioneducativa_carrera_autorizada_curso_modu_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_institucioneducativa_carrera_autorizada_curso_modu_id_seq1";
CREATE SEQUENCE "public"."ttec_institucioneducativa_carrera_autorizada_curso_modu_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_institucioneducativa_carrera_autorizada_curso_modul_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_institucioneducativa_carrera_autorizada_curso_modul_id_seq";
CREATE SEQUENCE "public"."ttec_institucioneducativa_carrera_autorizada_curso_modul_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_institucioneducativa_carrera_autorizada_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_institucioneducativa_carrera_autorizada_id_seq";
CREATE SEQUENCE "public"."ttec_institucioneducativa_carrera_autorizada_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_institucioneducativa_historico_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_institucioneducativa_historico_id_seq";
CREATE SEQUENCE "public"."ttec_institucioneducativa_historico_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_institucioneducativa_sede_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_institucioneducativa_sede_id_seq";
CREATE SEQUENCE "public"."ttec_institucioneducativa_sede_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_institucioneducativa_tipo_cargo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_institucioneducativa_tipo_cargo_id_seq";
CREATE SEQUENCE "public"."ttec_institucioneducativa_tipo_cargo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_institucioneducativa_tipo_formacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_institucioneducativa_tipo_formacion_id_seq";
CREATE SEQUENCE "public"."ttec_institucioneducativa_tipo_formacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_materia_competencia_detalle_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_materia_competencia_detalle_tipo_id_seq";
CREATE SEQUENCE "public"."ttec_materia_competencia_detalle_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_materia_competencia_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_materia_competencia_tipo_id_seq";
CREATE SEQUENCE "public"."ttec_materia_competencia_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_materia_prerrequisito_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_materia_prerrequisito_id_seq";
CREATE SEQUENCE "public"."ttec_materia_prerrequisito_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_materia_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_materia_tipo_id_seq";
CREATE SEQUENCE "public"."ttec_materia_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_operativo_universidad_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_operativo_universidad_id_seq";
CREATE SEQUENCE "public"."ttec_operativo_universidad_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_paralelo_materia_horario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_paralelo_materia_horario_id_seq";
CREATE SEQUENCE "public"."ttec_paralelo_materia_horario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_paralelo_materia_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_paralelo_materia_id_seq";
CREATE SEQUENCE "public"."ttec_paralelo_materia_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_pensum_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_pensum_id_seq";
CREATE SEQUENCE "public"."ttec_pensum_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_preinscripcion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_preinscripcion_id_seq";
CREATE SEQUENCE "public"."ttec_preinscripcion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_regimen_estudio_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_regimen_estudio_tipo_id_seq";
CREATE SEQUENCE "public"."ttec_regimen_estudio_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_resolucion_carrera_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_resolucion_carrera_id_seq";
CREATE SEQUENCE "public"."ttec_resolucion_carrera_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ttec_resolucion_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ttec_resolucion_tipo_id_seq";
CREATE SEQUENCE "public"."ttec_resolucion_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for unidad_academica_carrera_autorizada_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."unidad_academica_carrera_autorizada_id_seq";
CREATE SEQUENCE "public"."unidad_academica_carrera_autorizada_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for unidad_academica_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."unidad_academica_id_seq";
CREATE SEQUENCE "public"."unidad_academica_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for unidad_militar_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."unidad_militar_id_seq";
CREATE SEQUENCE "public"."unidad_militar_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 100000
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for unidad_sucursal_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."unidad_sucursal_id_seq";
CREATE SEQUENCE "public"."unidad_sucursal_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 15859
CACHE 1;

-- ----------------------------
-- Sequence structure for unificacion_rude_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."unificacion_rude_id_seq";
CREATE SEQUENCE "public"."unificacion_rude_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_beca_carrera_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_beca_carrera_id_seq";
CREATE SEQUENCE "public"."universidad_beca_carrera_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_beca_condiciones_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_beca_condiciones_id_seq";
CREATE SEQUENCE "public"."universidad_beca_condiciones_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_beca_convocatoria_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_beca_convocatoria_id_seq";
CREATE SEQUENCE "public"."universidad_beca_convocatoria_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_beca_cuestionario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_beca_cuestionario_id_seq";
CREATE SEQUENCE "public"."universidad_beca_cuestionario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_beca_cuestionario_respuesta_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_beca_cuestionario_respuesta_id_seq";
CREATE SEQUENCE "public"."universidad_beca_cuestionario_respuesta_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_beca_solicitud_cuestionario_respuesta_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_beca_solicitud_cuestionario_respuesta_id_seq";
CREATE SEQUENCE "public"."universidad_beca_solicitud_cuestionario_respuesta_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_beca_solicitud_estado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_beca_solicitud_estado_id_seq";
CREATE SEQUENCE "public"."universidad_beca_solicitud_estado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_beca_solicitud_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_beca_solicitud_id_seq";
CREATE SEQUENCE "public"."universidad_beca_solicitud_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_beca_universidad_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_beca_universidad_id_seq";
CREATE SEQUENCE "public"."universidad_beca_universidad_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_form1_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_form1_id_seq";
CREATE SEQUENCE "public"."universidad_form1_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_form3_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_form3_id_seq";
CREATE SEQUENCE "public"."universidad_form3_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_form5_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_form5_id_seq";
CREATE SEQUENCE "public"."universidad_form5_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_token_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_token_id_seq";
CREATE SEQUENCE "public"."universidad_token_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for universidad_usuario_rol_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."universidad_usuario_rol_id_seq";
CREATE SEQUENCE "public"."universidad_usuario_rol_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for upload_file_control_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."upload_file_control_id_seq";
CREATE SEQUENCE "public"."upload_file_control_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for us_gaz_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."us_gaz_id_seq";
CREATE SEQUENCE "public"."us_gaz_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for us_lex_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."us_lex_id_seq";
CREATE SEQUENCE "public"."us_lex_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for us_rules_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."us_rules_id_seq";
CREATE SEQUENCE "public"."us_rules_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for usuario_dashboard_onoff_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."usuario_dashboard_onoff_id_seq";
CREATE SEQUENCE "public"."usuario_dashboard_onoff_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for usuario_generacion_rude_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."usuario_generacion_rude_id_seq";
CREATE SEQUENCE "public"."usuario_generacion_rude_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for usuario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."usuario_id_seq";
CREATE SEQUENCE "public"."usuario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 13774642
CACHE 1;

-- ----------------------------
-- Sequence structure for usuario_rol_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."usuario_rol_id_seq";
CREATE SEQUENCE "public"."usuario_rol_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 13810017
CACHE 1;

-- ----------------------------
-- Sequence structure for usuario_session_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."usuario_session_id_seq";
CREATE SEQUENCE "public"."usuario_session_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for vaidacion_solucion_parametro_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."vaidacion_solucion_parametro_tipo_id_seq";
CREATE SEQUENCE "public"."vaidacion_solucion_parametro_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for validacion_conflicto_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."validacion_conflicto_id_seq";
CREATE SEQUENCE "public"."validacion_conflicto_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for validacion_conflicto_institucioneducativa_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."validacion_conflicto_institucioneducativa_tipo_id_seq";
CREATE SEQUENCE "public"."validacion_conflicto_institucioneducativa_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for validacion_conflicto_solucion_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."validacion_conflicto_solucion_log_id_seq";
CREATE SEQUENCE "public"."validacion_conflicto_solucion_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for validacion_conflicto_solucion_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."validacion_conflicto_solucion_tipo_id_seq";
CREATE SEQUENCE "public"."validacion_conflicto_solucion_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for validacion_omision_historica_estudiante_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."validacion_omision_historica_estudiante_id_seq";
CREATE SEQUENCE "public"."validacion_omision_historica_estudiante_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for validacion_parametro_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."validacion_parametro_tipo_id_seq";
CREATE SEQUENCE "public"."validacion_parametro_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for validacion_proceso_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."validacion_proceso_id_seq";
CREATE SEQUENCE "public"."validacion_proceso_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for validacion_solucion_flujo_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."validacion_solucion_flujo_tipo_id_seq";
CREATE SEQUENCE "public"."validacion_solucion_flujo_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for validacion_solucion_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."validacion_solucion_tipo_id_seq";
CREATE SEQUENCE "public"."validacion_solucion_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for validacion_solucion_tipo_rol_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."validacion_solucion_tipo_rol_id_seq";
CREATE SEQUENCE "public"."validacion_solucion_tipo_rol_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for wf_asignacion_tarea_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."wf_asignacion_tarea_tipo_id_seq";
CREATE SEQUENCE "public"."wf_asignacion_tarea_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for wf_compuerta_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."wf_compuerta_id_seq";
CREATE SEQUENCE "public"."wf_compuerta_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for wf_flujo_institucioneducativa_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."wf_flujo_institucioneducativa_tipo_id_seq";
CREATE SEQUENCE "public"."wf_flujo_institucioneducativa_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for wf_pasos_flujo_proceso_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."wf_pasos_flujo_proceso_id_seq";
CREATE SEQUENCE "public"."wf_pasos_flujo_proceso_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for wf_pasos_tipo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."wf_pasos_tipo_id_seq";
CREATE SEQUENCE "public"."wf_pasos_tipo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for wf_solicitud_tramite_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."wf_solicitud_tramite_id_seq";
CREATE SEQUENCE "public"."wf_solicitud_tramite_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for wf_tarea_compuerta_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."wf_tarea_compuerta_id_seq";
CREATE SEQUENCE "public"."wf_tarea_compuerta_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for wf_usuario_flujo_proceso_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."wf_usuario_flujo_proceso_id_seq";
CREATE SEQUENCE "public"."wf_usuario_flujo_proceso_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for SequelizeMeta
-- ----------------------------
DROP TABLE IF EXISTS "public"."SequelizeMeta";
CREATE TABLE "public"."SequelizeMeta" (
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for __alumnos_primaria_concluido
-- ----------------------------
DROP TABLE IF EXISTS "public"."__alumnos_primaria_concluido";
CREATE TABLE "public"."__alumnos_primaria_concluido" (
  "codigo_rude" varchar(18) COLLATE "pg_catalog"."default",
  "mataprobadas" int4,
  "canmaterias" int4
)
;

-- ----------------------------
-- Table structure for __alumnos_tecnica_concluido
-- ----------------------------
DROP TABLE IF EXISTS "public"."__alumnos_tecnica_concluido";
CREATE TABLE "public"."__alumnos_tecnica_concluido" (
  "gestion_tipo_id" int4,
  "institucioneducativa_id" int4,
  "codigo_rude" varchar(18) COLLATE "pg_catalog"."default",
  "edad" float8,
  "genero_tipo_id" int2,
  "nivel_id" int4,
  "facultad_area" varchar(50) COLLATE "pg_catalog"."default",
  "ciclo_id" int4,
  "especialidad" varchar(50) COLLATE "pg_catalog"."default",
  "grado_id" int4,
  "acreditacion" varchar(50) COLLATE "pg_catalog"."default",
  "cantmodulos" int8,
  "carga_horaria_acreditacion" int8,
  "aprobadas" int8,
  "carga_horaria_aprobadas" int8,
  "postergadas" int8
)
;

-- ----------------------------
-- Table structure for __basura
-- ----------------------------
DROP TABLE IF EXISTS "public"."__basura";
CREATE TABLE "public"."__basura" (
  "id" int8,
  "estudiante_inscripcion_id" int4,
  "institucioneducativa_tipo_id" int4,
  "seccionv_estudiante_esnacionoriginaria" bool,
  "seccionv_estudiante_nacionoriginaria_tipo_id" int2,
  "seccionv_estudiante_esseguro_salud" bool,
  "centro_salud" bool,
  "cantidad_centro_salud_tipo_id" int4,
  "trabajo_gestion_pasada" bool,
  "seccionv_estudiante_esocupacion" bool,
  "frecuencia_trabajo_tipo_id" int4,
  "frecuencia_uso_internet_tipo_id" int4,
  "tiene_abandono" bool,
  "vive_habitualmente_tipo_id" int4,
  "vivienda_ocupa_tipo_id" int4,
  "seccionvi_modalidad_tipo_id" int2,
  "seccionii_educacion_diversa_tipo_id" int2,
  "seccioniii_zona" varchar(150) COLLATE "pg_catalog"."default",
  "seccioniii_avenida" varchar(150) COLLATE "pg_catalog"."default",
  "seccioniii_numero" int4,
  "seccioniii_telefonocelular" varchar(13) COLLATE "pg_catalog"."default",
  "seccioniii_telefonofijo" varchar(13) COLLATE "pg_catalog"."default",
  "seccioniii_localidad_tipo_id" int4,
  "seccionii_hijos" int4,
  "seccionii_esserviciomilitar" bool,
  "servicio_militar_tipo_id" int4,
  "procedencia_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6),
  "tiene_discapacidad" bool,
  "lugar" varchar(100) COLLATE "pg_catalog"."default",
  "fecha" date,
  "localidad" varchar(125) COLLATE "pg_catalog"."default",
  "respuesta_pago" bool,
  "tiene_ci" bool,
  "tiene_pasaporte" bool,
  "seccioniv_escarnet_discapacidad" bool,
  "seccionv_estudiante_demora_llegar_centro_horas" int2,
  "seccionv_estudiante_demora_llegar_centro_minutos" int2,
  "id_rude_anterior" int4
)
;

-- ----------------------------
-- Table structure for __basura2
-- ----------------------------
DROP TABLE IF EXISTS "public"."__basura2";
CREATE TABLE "public"."__basura2" (
  "id" int8,
  "estudiante_inscripcion_id" int4,
  "institucioneducativa_tipo_id" int4,
  "es_pertence_nacion_originaria" bool,
  "nacion_originaria_tipo_id" int4,
  "seguro_salud" bool,
  "centro_salud" bool,
  "cantidad_centro_salud_tipo_id" int4,
  "trabajo_gestion_pasada" bool,
  "tiene_ocupacion_trabajo" bool,
  "frecuencia_trabajo_tipo_id" int4,
  "frecuencia_uso_internet_tipo_id" int4,
  "tiene_abandono" bool,
  "vive_habitualmente_tipo_id" int4,
  "vivienda_ocupa_tipo_id" int4,
  "modalidad_estudio_tipo_id" int4,
  "educacion_diversa_tipo_id" int4,
  "zona" varchar COLLATE "pg_catalog"."default",
  "avenida" varchar COLLATE "pg_catalog"."default",
  "numero" varchar COLLATE "pg_catalog"."default",
  "celular" varchar COLLATE "pg_catalog"."default",
  "telefono_fijo" varchar COLLATE "pg_catalog"."default",
  "municipio_lugar_tipo_id" int4,
  "cant_hijos" int4,
  "es_servicio_militar" bool,
  "servicio_militar_tipo_id" int4,
  "procedencia_tipo_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "tiene_discapacidad" bool,
  "lugar_registro_rude" text COLLATE "pg_catalog"."default",
  "fecha_registro_rude" date,
  "localidad" varchar(125) COLLATE "pg_catalog"."default",
  "respuesta_pago" bool,
  "tiene_ci" bool,
  "tiene_pasaporte" bool,
  "tiene_carnet_discapacidad" bool,
  "tiempo_llegada_horas" varchar COLLATE "pg_catalog"."default",
  "tiempo_llegada_minutos" varchar COLLATE "pg_catalog"."default",
  "registro_finalizado" int4,
  "localidad_lugar_tipo_id" int4,
  "id_rude_anterior" int4
)
;

-- ----------------------------
-- Table structure for __estudiantes_bachilleres_4mejores
-- ----------------------------
DROP TABLE IF EXISTS "public"."__estudiantes_bachilleres_4mejores";
CREATE TABLE "public"."__estudiantes_bachilleres_4mejores" (
  "institucioneducativa_id" int4,
  "estudiante_id" int4,
  "genero_tipo_id" int2,
  "nota_cuantitativa" numeric,
  "row_number" int8
)
;

-- ----------------------------
-- Table structure for __inscripcion_alternativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."__inscripcion_alternativa";
CREATE TABLE "public"."__inscripcion_alternativa" (
  "id" int4,
  "asignatura_tipo_id" int4,
  "horasmes" int4,
  "insitucioneducativa_curso_id" int4,
  "superior_modulo_periodo_id" int4
)
;

-- ----------------------------
-- Table structure for __inscripcion_regular
-- ----------------------------
DROP TABLE IF EXISTS "public"."__inscripcion_regular";
CREATE TABLE "public"."__inscripcion_regular" (
  "id" int4,
  "gestion_tipo_id" int4,
  "fecha_registro" date,
  "estudiante_inscripcion_id" int4,
  "institucioneducativa_curso_oferta_id" int4,
  "institucioneducativa_tecnica_curso_oferta_id" int4,
  "estudianteasignatura_estado_id" int2,
  "asignatura_tipo_id" int4,
  "horasmes" int4,
  "institucioneducativa_curso_id" int4,
  "superior_modulo_periodo_id" int4
)
;

-- ----------------------------
-- Table structure for __inscripcion_regular2
-- ----------------------------
DROP TABLE IF EXISTS "public"."__inscripcion_regular2";
CREATE TABLE "public"."__inscripcion_regular2" (
  "id" int4,
  "gestion_tipo_id" int4,
  "fecha_registro" date,
  "estudiante_inscripcion_id" int4,
  "institucioneducativa_curso_oferta_id" int4,
  "institucioneducativa_tecnica_curso_oferta_id" int4,
  "estudianteasignatura_estado_id" int2,
  "asignatura_tipo_id" int4,
  "horasmes" int4,
  "institucioneducativa_curso_id" int4,
  "superior_modulo_periodo_id" int4
)
;

-- ----------------------------
-- Table structure for __inventory
-- ----------------------------
DROP TABLE IF EXISTS "public"."__inventory";
CREATE TABLE "public"."__inventory" (
  "item_id" int4 NOT NULL DEFAULT nextval('__inventory_item_id_seq'::regclass),
  "item_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for __inventory_flow
-- ----------------------------
DROP TABLE IF EXISTS "public"."__inventory_flow";
CREATE TABLE "public"."__inventory_flow" (
  "__inventory_flow_id" int4 NOT NULL DEFAULT nextval('__inventory_flow___inventory_flow_id_seq'::regclass),
  "item_id" int4 NOT NULL,
  "project" varchar(100) COLLATE "pg_catalog"."default",
  "num_used" int4,
  "num_ordered" int4,
  "action_date" timestamp(6) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for __matriz_accion
-- ----------------------------
DROP TABLE IF EXISTS "public"."__matriz_accion";
CREATE TABLE "public"."__matriz_accion" (
  "nro" int8,
  "gestion_tipo_idb" int4,
  "periodo_tipo_idb" int2,
  "institucioneducativa_idb" int4,
  "acreditacion_especialidad_idb" int4,
  "institucioneducativa_curso_idb" int4,
  "superior_institucioneducativa_acreditacion_idb" int4,
  "institucioneducativa_sucursal_idb" int4,
  "superior_modulo_periodo_idb" int4,
  "superior_modulo_periodo_id_2b" int4,
  "modulo_idb" int4,
  "modulob" varchar(100) COLLATE "pg_catalog"."default",
  "superior_institucioneducativa_periodo_idb" int4,
  "institucioneducativa_periodo_idb" int4,
  "institucioneducativa_curso_oferta_idb" int4,
  "nivel_idb" int4,
  "nivelb" varchar(50) COLLATE "pg_catalog"."default",
  "ciclo_idb" int4,
  "ciclob" varchar(50) COLLATE "pg_catalog"."default",
  "grado_idb" int4,
  "gradob" varchar(50) COLLATE "pg_catalog"."default",
  "gestion_tipo_idc" int4,
  "periodo_tipo_idc" int2,
  "institucioneducativa_idc" int4,
  "acreditacion_especialidad_idc" int4,
  "institucioneducativa_curso_idc" int4,
  "superior_institucioneducativa_acreditacion_idc" int4,
  "institucioneducativa_sucursal_idc" int4,
  "superior_modulo_periodo_idc" int4,
  "superior_modulo_periodo_id_2c" int4,
  "modulo_idc" int4,
  "moduloc" varchar(100) COLLATE "pg_catalog"."default",
  "superior_institucioneducativa_periodo_idc" int4,
  "institucioneducativa_periodo_idc" int4,
  "institucioneducativa_curso_oferta_idc" int4,
  "nivel_idc" int4,
  "nivelc" varchar(50) COLLATE "pg_catalog"."default",
  "ciclo_idc" int4,
  "cicloc" varchar(50) COLLATE "pg_catalog"."default",
  "grado_idc" int4,
  "gradoc" varchar(50) COLLATE "pg_catalog"."default",
  "bandera" int4,
  "institucioneducativa_periodo_id_agrup" int4,
  "institucioneducativa_curso_id_agrup" int4,
  "superior_modulo_tipo_id_agrup" int4,
  "superior_institucioneducativa_acreditacion_id_agrup" int4,
  "institucioneducativa_curso_oferta_id_agrup" int4,
  "maestro_inscripcion_id" int4,
  "horas_mes" int2,
  "fecha_registro" date,
  "nota_tipo_id" int2,
  "fecha_modificacion" date,
  "es_vigente_maestro" bool
)
;

-- ----------------------------
-- Table structure for __matriz_accion_focalizado_alter
-- ----------------------------
DROP TABLE IF EXISTS "public"."__matriz_accion_focalizado_alter";
CREATE TABLE "public"."__matriz_accion_focalizado_alter" (
  "nro" int8,
  "gestion_tipo_idb" int4,
  "periodo_tipo_idb" int2,
  "institucioneducativa_idb" int4,
  "acreditacion_especialidad_idb" int4,
  "institucioneducativa_curso_idb" int4,
  "superior_institucioneducativa_acreditacion_idb" int4,
  "institucioneducativa_sucursal_idb" int4,
  "superior_modulo_periodo_idb" int4,
  "superior_modulo_periodo_id_2b" int4,
  "modulo_idb" int4,
  "modulob" varchar(100) COLLATE "pg_catalog"."default",
  "superior_institucioneducativa_periodo_idb" int4,
  "institucioneducativa_periodo_idb" int4,
  "institucioneducativa_curso_oferta_idb" int4,
  "nivel_idb" int4,
  "nivelb" varchar(50) COLLATE "pg_catalog"."default",
  "ciclo_idb" int4,
  "ciclob" varchar(50) COLLATE "pg_catalog"."default",
  "grado_idb" int4,
  "gradob" varchar(50) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4,
  "periodo_tipo_id" int2,
  "institucioneducativa_id" int4,
  "acreditacion_especialidad_id" int4,
  "institucioneducativa_curso_id" int4,
  "superior_institucioneducativa_acreditacion_id" int4,
  "institucioneducativa_sucursal_id" int4,
  "superior_institucioneducativa_periodo_id" int4,
  "superior_modulo_periodo_id" int4,
  "modulo_tipo_id" int4,
  "modulo" varchar(100) COLLATE "pg_catalog"."default",
  "nivel_id" int4,
  "nivel" varchar(50) COLLATE "pg_catalog"."default",
  "ciclo_id" int4,
  "ciclo" varchar(50) COLLATE "pg_catalog"."default",
  "grado_id" int4,
  "grado" varchar(50) COLLATE "pg_catalog"."default",
  "bandera" int4,
  "institucioneducativa_periodo_id_agrup" int4,
  "institucioneducativa_curso_id_agrup" int4,
  "maestro_inscripcion_id" int4,
  "horas_mes" int2,
  "fecha_registro" date,
  "nota_tipo_id" int2,
  "fecha_modificacion" date,
  "es_vigente_maestro" bool,
  "sucursal_tipo_id" int4,
  "paralelo_tipo_id" varchar(2) COLLATE "pg_catalog"."default",
  "turno" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for __matriz_nuevos_mod_emer_focalizado_alter
-- ----------------------------
DROP TABLE IF EXISTS "public"."__matriz_nuevos_mod_emer_focalizado_alter";
CREATE TABLE "public"."__matriz_nuevos_mod_emer_focalizado_alter" (
  "institucioneducativa_curso_id_agrup" int4,
  "modulob" varchar(100) COLLATE "pg_catalog"."default",
  "nro" int8,
  "superior_institucioneducativa_periodo_id" int4,
  "superior_modulo_tipo_id" int8,
  "superior_modulo_periodo_id" int4,
  "institucioneducativa_curso_oferta_id" int4
)
;

-- ----------------------------
-- Table structure for __reporte1
-- ----------------------------
DROP TABLE IF EXISTS "public"."__reporte1";
CREATE TABLE "public"."__reporte1" (
  "depto" text COLLATE "pg_catalog"."default",
  "distrito" text COLLATE "pg_catalog"."default",
  "nivel" varchar(45) COLLATE "pg_catalog"."default",
  "grado" varchar(45) COLLATE "pg_catalog"."default",
  "als_ins" numeric
)
;

-- ----------------------------
-- Table structure for __test_table_erroremp
-- ----------------------------
DROP TABLE IF EXISTS "public"."__test_table_erroremp";
CREATE UNLOGGED TABLE "public"."__test_table_erroremp" (
  "texto" varchar(5000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for __test_table_infraestructura
-- ----------------------------
DROP TABLE IF EXISTS "public"."__test_table_infraestructura";
CREATE UNLOGGED TABLE "public"."__test_table_infraestructura" (
  "texto" json
)
;

-- ----------------------------
-- Table structure for __test_table_primerb
-- ----------------------------
DROP TABLE IF EXISTS "public"."__test_table_primerb";
CREATE UNLOGGED TABLE "public"."__test_table_primerb" (
  "texto" varchar(5000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for __tmp_planillas_cargo
-- ----------------------------
DROP TABLE IF EXISTS "public"."__tmp_planillas_cargo";
CREATE TABLE "public"."__tmp_planillas_cargo" (
  "cargo" int4,
  "descripcion" varchar(50) COLLATE "pg_catalog"."default",
  "tipo" varchar(8) COLLATE "pg_catalog"."default",
  "tipoporcate" varchar(8) COLLATE "pg_catalog"."default",
  "cargosup" int4,
  "cargoinf" int4,
  "habilitado" int4,
  "cod_func" int4,
  "usuario" varchar(30) COLLATE "pg_catalog"."default",
  "fec_mod" timestamp(6)
)
;

-- ----------------------------
-- Table structure for __tmp_planillas_funcioncargo
-- ----------------------------
DROP TABLE IF EXISTS "public"."__tmp_planillas_funcioncargo";
CREATE TABLE "public"."__tmp_planillas_funcioncargo" (
  "cod_inst" int2,
  "cod_func" int2,
  "descripcion" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for __tmp_planillas_ue_carnet_asignacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."__tmp_planillas_ue_carnet_asignacion";
CREATE TABLE "public"."__tmp_planillas_ue_carnet_asignacion" (
  "gestion" int4,
  "institucioneducativa_id" int4,
  "carnet" varchar(15) COLLATE "pg_catalog"."default",
  "cod_func" int4,
  "asignacion_fecha_inicio" int4,
  "asignacion_fecha_fin" int4
)
;

-- ----------------------------
-- Table structure for _temptreecctp
-- ----------------------------
DROP TABLE IF EXISTS "public"."_temptreecctp";
CREATE TABLE "public"."_temptreecctp" (
  "id" int2 NOT NULL DEFAULT nextval('_temptreecctp_id_seq'::regclass),
  "_id" int4,
  "parentid" int4,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "codeuser" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for abandono_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."abandono_tipo";
CREATE TABLE "public"."abandono_tipo" (
  "id" int4 NOT NULL,
  "descripcion_abandono" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for acceso_internet_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."acceso_internet_tipo";
CREATE TABLE "public"."acceso_internet_tipo" (
  "id" int4 NOT NULL,
  "descripcion_acceso_internet" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for acreditacionnivel_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."acreditacionnivel_tipo";
CREATE TABLE "public"."acreditacionnivel_tipo" (
  "id" int2 NOT NULL,
  "acreditacionnivel" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for actividad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."actividad_tipo";
CREATE TABLE "public"."actividad_tipo" (
  "id" int4 NOT NULL,
  "descripcion_ocupacion" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for alt_moduloemergente
-- ----------------------------
DROP TABLE IF EXISTS "public"."alt_moduloemergente";
CREATE TABLE "public"."alt_moduloemergente" (
  "id" int4 NOT NULL DEFAULT nextval('alt_moduloemergente_id_seq'::regclass),
  "institucioneducativa_curso_oferta_id" int4 NOT NULL,
  "modulo_emergente" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_modificacion" timestamp(6) DEFAULT now(),
  "usuario_id" int4,
  "fecha_registro" time(6)
)
;

-- ----------------------------
-- Table structure for apoderado
-- ----------------------------
DROP TABLE IF EXISTS "public"."apoderado";
CREATE TABLE "public"."apoderado" (
  "id" int4 NOT NULL DEFAULT nextval('apoderado_id_seq'::regclass),
  "apoderado_tipo_id" int4,
  "persona_estudiante_id" int4,
  "persona_apoderado_id" int4,
  "gestion_id" int2,
  "idioma_materno_id" int2,
  "empleo" varchar(150) COLLATE "pg_catalog"."default",
  "instruccion_id" int4,
  "telefono" varchar(15) COLLATE "pg_catalog"."default",
  "esactivo" bool NOT NULL
)
;

-- ----------------------------
-- Table structure for apoderado_actividad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."apoderado_actividad_tipo";
CREATE TABLE "public"."apoderado_actividad_tipo" (
  "id" int4 NOT NULL,
  "actividad" varchar(170) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for apoderado_inscripcion
-- ----------------------------
DROP TABLE IF EXISTS "public"."apoderado_inscripcion";
CREATE TABLE "public"."apoderado_inscripcion" (
  "id" int4 NOT NULL DEFAULT nextval('apoderado_inscripcion_id_seq'::regclass),
  "apoderado_tipo_id" int4,
  "persona_id" int4,
  "estudiante_inscripcion_id" int4,
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "es_validado" int2
)
;

-- ----------------------------
-- Table structure for apoderado_inscripcion_datos
-- ----------------------------
DROP TABLE IF EXISTS "public"."apoderado_inscripcion_datos";
CREATE TABLE "public"."apoderado_inscripcion_datos" (
  "id" int4 NOT NULL DEFAULT nextval('apoderado_inscripcion_datos_id_seq'::regclass),
  "idioma_materno_id" int4,
  "instruccion_tipo_id" int4,
  "apoderado_inscripcion_id" int4,
  "empleo" varchar(150) COLLATE "pg_catalog"."default",
  "telefono" varchar(15) COLLATE "pg_catalog"."default",
  "obs" varchar(150) COLLATE "pg_catalog"."default",
  "actividad_tipo_id" int4,
  "tieneocupacion" bool,
  "ocupacion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for apoderado_ocupacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."apoderado_ocupacion_tipo";
CREATE TABLE "public"."apoderado_ocupacion_tipo" (
  "id" int4 NOT NULL,
  "ocupacion" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "es_ocupacion" bool,
  "es_vigente" bool
)
;

-- ----------------------------
-- Table structure for apoderado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."apoderado_tipo";
CREATE TABLE "public"."apoderado_tipo" (
  "id" int2 NOT NULL,
  "apoderado" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for area_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."area_tipo";
CREATE TABLE "public"."area_tipo" (
  "id" int2 NOT NULL,
  "area" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "area_boletin" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for asignatura_especialidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."asignatura_especialidad_tipo";
CREATE TABLE "public"."asignatura_especialidad_tipo" (
  "id" int2 NOT NULL,
  "asignatura_especialidad" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "desc_abrev" varchar(7) COLLATE "pg_catalog"."default",
  "contenido" varchar(255) COLLATE "pg_catalog"."default",
  "esobligatorio" bool NOT NULL,
  "institucion_educativa_id" int4 NOT NULL,
  "especialidad_carrera_tipo_id" int2 NOT NULL,
  "esactivo" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Table structure for asignatura_idiomaoriginario
-- ----------------------------
DROP TABLE IF EXISTS "public"."asignatura_idiomaoriginario";
CREATE TABLE "public"."asignatura_idiomaoriginario" (
  "id" int2 NOT NULL,
  "idiomaoriginario_tipo_id" int2 NOT NULL,
  "asignatura_tipo_id" int2 NOT NULL,
  "nivel_tipo_id" int2 NOT NULL,
  "ciclo_tipo_id" int2 NOT NULL
)
;

-- ----------------------------
-- Table structure for asignatura_nivel_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."asignatura_nivel_tipo";
CREATE TABLE "public"."asignatura_nivel_tipo" (
  "id" int2 NOT NULL,
  "asignatura_nivel" varchar(100) COLLATE "pg_catalog"."default",
  "gestion" int2
)
;

-- ----------------------------
-- Table structure for asignatura_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."asignatura_tipo";
CREATE TABLE "public"."asignatura_tipo" (
  "id" int4 NOT NULL,
  "asignatura" varchar(150) COLLATE "pg_catalog"."default",
  "desc_abrev" varchar(7) COLLATE "pg_catalog"."default",
  "oficial" bool NOT NULL,
  "contenido" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "area_tipo_id" int2,
  "esobligatorio" bool NOT NULL DEFAULT true,
  "asignatura_nivel_id" int2,
  "asignatura_boletin" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for atencionmedica_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."atencionmedica_tipo";
CREATE TABLE "public"."atencionmedica_tipo" (
  "desc_atencionmedica" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "id_atencionmedica" int4 NOT NULL DEFAULT nextval('atencionmedica_tipo_id_atencionmedica_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth";
CREATE TABLE "public"."auth" (
  "user" int4,
  "email" text COLLATE "pg_catalog"."default",
  "password" text COLLATE "pg_catalog"."default",
  "resetToken" int4,
  "id" int4 NOT NULL DEFAULT nextval('auth_id_seq'::regclass),
  "createdAt" timestamptz(6),
  "updatedAt" timestamptz(6)
)
;

-- ----------------------------
-- Table structure for bjp_validacionue_proceso_apertura
-- ----------------------------
DROP TABLE IF EXISTS "public"."bjp_validacionue_proceso_apertura";
CREATE TABLE "public"."bjp_validacionue_proceso_apertura" (
  "id" int4 NOT NULL DEFAULT nextval('bjp_validacionue_proceso_apertura_id_seq'::regclass),
  "gestion_tipo_id" int4 NOT NULL,
  "distrito_tipo_id" int4 NOT NULL,
  "estado" bool NOT NULL,
  "fecha_registro" timestamp(6) NOT NULL,
  "fecha_modificacion" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for bonojuancito_asignacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."bonojuancito_asignacion";
CREATE TABLE "public"."bonojuancito_asignacion" (
  "id" int4 NOT NULL,
  "bonojuancito_unidadmilitar_id" int4,
  "institucioneducativa_id" int4,
  "gestion_tipo_id" int4,
  "cod_le" int4,
  "cod_sie" int4,
  "institucioneducativa" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "departamento_tipo_id" int4,
  "departamento_tipo" varchar(50) COLLATE "pg_catalog"."default",
  "provincia" varchar(250) COLLATE "pg_catalog"."default",
  "municipio" varchar(250) COLLATE "pg_catalog"."default",
  "seccion" varchar(250) COLLATE "pg_catalog"."default",
  "canton" int4,
  "localidad" varchar(250) COLLATE "pg_catalog"."default",
  "nucleo" varchar(250) COLLATE "pg_catalog"."default",
  "distrito_tipo_id" int4,
  "distrito" varchar(250) COLLATE "pg_catalog"."default",
  "zona" varchar(255) COLLATE "pg_catalog"."default",
  "direccion" varchar(255) COLLATE "pg_catalog"."default",
  "area_geografica" varchar(1) COLLATE "pg_catalog"."default",
  "ci_director" varchar(20) COLLATE "pg_catalog"."default",
  "director" varchar(200) COLLATE "pg_catalog"."default",
  "turno_tipo_id" int4,
  "turno" varchar(50) COLLATE "pg_catalog"."default",
  "telefono1" varchar(20) COLLATE "pg_catalog"."default",
  "telefono2" varchar(20) COLLATE "pg_catalog"."default",
  "fax" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(100) COLLATE "pg_catalog"."default",
  "orgcurricular_tipo_id" int4,
  "orgcurricular_tipo" varchar(20) COLLATE "pg_catalog"."default",
  "dependencia" varchar(50) COLLATE "pg_catalog"."default",
  "esnuevoingreso" bool NOT NULL,
  "esreportadopreliminar" bool NOT NULL,
  "essinrue" bool NOT NULL,
  "primerop" int4 DEFAULT 0,
  "segundop" int4 DEFAULT 0,
  "tercerop" int4 DEFAULT 0,
  "cuartop" int4 DEFAULT 0,
  "quintop" int4 DEFAULT 0,
  "sextop" int4 DEFAULT 0,
  "primeros" int4 DEFAULT 0,
  "segundos" int4 DEFAULT 0,
  "terceros" int4 DEFAULT 0,
  "cuartos" int4 DEFAULT 0,
  "quintos" int4 DEFAULT 0,
  "sextos" int4 DEFAULT 0,
  "multigrado" int4 DEFAULT 0,
  "fecha_estadistica_registro" date,
  "total_planificado" int4 NOT NULL,
  "habilitados" int4 NOT NULL,
  "pagado_en_periodo" int4 NOT NULL,
  "pagado_rezagado" int4 NOT NULL,
  "espagado" bool,
  "esterminado" bool NOT NULL,
  "registrados" int4 NOT NULL,
  "abandono" int4 NOT NULL,
  "traspaso" int4 NOT NULL,
  "otro" int4 NOT NULL,
  "no_recibieron" int4 NOT NULL,
  "ci" varchar(15) COLLATE "pg_catalog"."default",
  "agente" varchar(150) COLLATE "pg_catalog"."default",
  "fecha_terminado" date,
  "fecha_registro" date DEFAULT now(),
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bonojuancito_estudiante_validacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."bonojuancito_estudiante_validacion";
CREATE TABLE "public"."bonojuancito_estudiante_validacion" (
  "id" int8 NOT NULL DEFAULT nextval('bonojuancito_estudiante_validacion_id_seq'::regclass),
  "codigo_rude" varchar(18) COLLATE "pg_catalog"."default",
  "institucioneducativa_id" int4,
  "carnet_identidad" varchar(20) COLLATE "pg_catalog"."default",
  "paterno" varchar(45) COLLATE "pg_catalog"."default",
  "materno" varchar(45) COLLATE "pg_catalog"."default",
  "nombre" varchar(45) COLLATE "pg_catalog"."default",
  "fecha_nacimiento" date,
  "genero" varchar(45) COLLATE "pg_catalog"."default",
  "nivel_tipo_id" int2,
  "nivel" varchar(45) COLLATE "pg_catalog"."default",
  "ciclo_tipo_id" int2,
  "ciclo" varchar(50) COLLATE "pg_catalog"."default",
  "grado_tipo_id" int2,
  "grado" varchar(45) COLLATE "pg_catalog"."default",
  "paralelo" varchar(45) COLLATE "pg_catalog"."default",
  "turno_tipo_id" int2,
  "turno" varchar(45) COLLATE "pg_catalog"."default",
  "estadomatricula_tipo_id" int2,
  "estadomatricula" varchar(45) COLLATE "pg_catalog"."default",
  "pago_tipo_id" int2,
  "estudiante_inscripcion_id" int4,
  "nota1" int8,
  "nota2" int8,
  "edad" float8,
  "es_nuevo" bool DEFAULT false,
  "es_pagado" bool DEFAULT false,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6),
  "gestion_tipo_id" int2 NOT NULL
)
;

-- ----------------------------
-- Table structure for bonojuancito_fuerza_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."bonojuancito_fuerza_tipo";
CREATE TABLE "public"."bonojuancito_fuerza_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('bonojuancito_fuerza_tipo_id_seq'::regclass),
  "fuerza" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bonojuancito_gran_unidadmilitar
-- ----------------------------
DROP TABLE IF EXISTS "public"."bonojuancito_gran_unidadmilitar";
CREATE TABLE "public"."bonojuancito_gran_unidadmilitar" (
  "id" int4 NOT NULL DEFAULT nextval('bonojuancito_gran_unidadmilitar_id_seq'::regclass),
  "bonojuancito_fuerza_tipo_id" int4 NOT NULL,
  "gran_unidadmilitar" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(250) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bonojuancito_institucioneducativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."bonojuancito_institucioneducativa";
CREATE TABLE "public"."bonojuancito_institucioneducativa" (
  "id" int4 NOT NULL DEFAULT nextval('bonojuancito_institucioneducativa_id'::regclass),
  "gestion_tipo_id" int2 NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "cantidad_estudiantes" int4,
  "institucioneducativa_id_nueva" int4,
  "obs" varchar(50) COLLATE "pg_catalog"."default",
  "esactivo" bool,
  "bonojuancito_institucioneducativa_tipo_id" int4,
  "tipo" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bonojuancito_institucioneducativa_curso_validacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."bonojuancito_institucioneducativa_curso_validacion";
CREATE TABLE "public"."bonojuancito_institucioneducativa_curso_validacion" (
  "id" int8 NOT NULL DEFAULT nextval('bonojuancito_institucioneducativa_validacion_id_seq'::regclass),
  "institucioneducativa_id" int4,
  "nivel_tipo_id" int2,
  "nivel" varchar(45) COLLATE "pg_catalog"."default",
  "grado_tipo_id" int2,
  "grado" varchar(45) COLLATE "pg_catalog"."default",
  "paralelo" varchar(45) COLLATE "pg_catalog"."default",
  "turno_tipo_id" int2,
  "turno" varchar(45) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for bonojuancito_institucioneducativa_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."bonojuancito_institucioneducativa_tipo";
CREATE TABLE "public"."bonojuancito_institucioneducativa_tipo" (
  "id" int4 NOT NULL,
  "bonojuancito_institucioneducativa" varchar(50) COLLATE "pg_catalog"."default",
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "esactivo" bool
)
;

-- ----------------------------
-- Table structure for bonojuancito_institucioneducativa_validacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."bonojuancito_institucioneducativa_validacion";
CREATE TABLE "public"."bonojuancito_institucioneducativa_validacion" (
  "id" int4 NOT NULL,
  "gestion_tipo_id" int2 NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "institucioneducativa_id_nueva" int4,
  "esactivo" bool,
  "fecha_fin_val" timestamp(6),
  "fecha_fin_edit" timestamp(6),
  "obs" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bonojuancito_paga
-- ----------------------------
DROP TABLE IF EXISTS "public"."bonojuancito_paga";
CREATE TABLE "public"."bonojuancito_paga" (
  "id" int4 NOT NULL DEFAULT nextval('bonojuancito_paga_id_seq'::regclass),
  "gestion_tipo_id" int4 NOT NULL,
  "bonojuancito_unidadmilitar_id" int4 NOT NULL,
  "estudiante_inscripcion_id" int4,
  "codigo_rude" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "carnet_identidad" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "paterno" varchar(50) COLLATE "pg_catalog"."default",
  "materno" varchar(50) COLLATE "pg_catalog"."default",
  "nombre" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_nacimiento" date NOT NULL,
  "genero" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "nivel_tipo_id" int4 NOT NULL,
  "nivel" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "grado_tipo_id" int4 NOT NULL,
  "grado" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "paralelo_tipo_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "paralelo" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "id_turno" int4,
  "turno" varchar(150) COLLATE "pg_catalog"."default",
  "estadomatricula_tipo_id" int4 NOT NULL,
  "estadomatricula_tipo" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "esnuevoingreso" bool DEFAULT false,
  "espagado" bool,
  "eshabilitado" bool,
  "lugar" varchar(150) COLLATE "pg_catalog"."default",
  "esnuevorude" bool,
  "observaciones" varchar(255) COLLATE "pg_catalog"."default",
  "estadopago_estudiante" varchar(50) COLLATE "pg_catalog"."default",
  "estudiante_id" int4
)
;

-- ----------------------------
-- Table structure for bonojuancito_unidadmilitar
-- ----------------------------
DROP TABLE IF EXISTS "public"."bonojuancito_unidadmilitar";
CREATE TABLE "public"."bonojuancito_unidadmilitar" (
  "id" int4 NOT NULL DEFAULT nextval('bonojuancito_unidadmilitar_id_seq'::regclass),
  "bonojuancito_gran_unidadmilitar_id" int4 NOT NULL,
  "usuario_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "unidadmilitar" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "comandante_unidad" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "responsable" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "telefono_r" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "celular" varchar(100) COLLATE "pg_catalog"."default",
  "departamento" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "provincia" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "municipio" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "canton" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "localidad" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "zona" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "direccion" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "telefono" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "correo_electronico" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "referencia_ubicacion" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "montoasignado" numeric(15,2) NOT NULL,
  "montoentregado" numeric(15,2) NOT NULL,
  "montorevertido" numeric(15,2) NOT NULL,
  "montotransferido" numeric(15,2) NOT NULL,
  "cod_granum" int4,
  "responsablerp" varchar(100) COLLATE "pg_catalog"."default",
  "telefono_rp" varchar(50) COLLATE "pg_catalog"."default",
  "correo_rp" varchar(50) COLLATE "pg_catalog"."default",
  "responsable_rf" varchar(100) COLLATE "pg_catalog"."default",
  "telefono_rf" varchar(50) COLLATE "pg_catalog"."default",
  "correo_rf" varchar(50) COLLATE "pg_catalog"."default",
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bth_estudiante_nivelacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."bth_estudiante_nivelacion";
CREATE TABLE "public"."bth_estudiante_nivelacion" (
  "id" int4 NOT NULL DEFAULT nextval('bth_estudiante_nivelacion_id_seq'::regclass),
  "estudiante_inscripcion_id" int4 NOT NULL,
  "asignatura_tipo_id" int4 NOT NULL,
  "grado_tipo_id" int2 NOT NULL,
  "especialidad_tecnico_humanistico_tipo_id" int4,
  "estudiante_nota_cualitativa_id" int4 NOT NULL,
  "obs" varchar(200) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) NOT NULL,
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for cancha_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."cancha_tipo";
CREATE TABLE "public"."cancha_tipo" (
  "id" int4 NOT NULL,
  "cancha" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for cantidad_centro_salud_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."cantidad_centro_salud_tipo";
CREATE TABLE "public"."cantidad_centro_salud_tipo" (
  "id" int4 NOT NULL,
  "descripcion_cantidad" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificaion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for cargo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."cargo_tipo";
CREATE TABLE "public"."cargo_tipo" (
  "id" int2 NOT NULL,
  "cargo" varchar(45) COLLATE "pg_catalog"."default",
  "institucioneducativa_tipo_id" int2,
  "rol_tipo_id" int2,
  "esdirector" bool
)
;

-- ----------------------------
-- Table structure for carrera_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."carrera_tipo";
CREATE TABLE "public"."carrera_tipo" (
  "id" int2 NOT NULL,
  "carrera" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" varchar(50) COLLATE "pg_catalog"."default",
  "esactivo" bool NOT NULL,
  "orgcurricular_tipo_id" int2 NOT NULL
)
;

-- ----------------------------
-- Table structure for catalogo_libreta_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."catalogo_libreta_tipo";
CREATE TABLE "public"."catalogo_libreta_tipo" (
  "id" int8 NOT NULL,
  "gestion_tipo_id" int4,
  "nivel_tipo_id" int2,
  "grado_tipo_id" int2,
  "nota_abrev" varchar(15) COLLATE "pg_catalog"."default",
  "nota_tipo_id" int2,
  "nota_tipo" varchar(45) COLLATE "pg_catalog"."default",
  "orden" int2,
  "nota_boletin" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for catalogo_maestro_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."catalogo_maestro_tipo";
CREATE TABLE "public"."catalogo_maestro_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('catalogo_maestro_tipo_id_seq'::regclass),
  "gestion_tipo_id" int4,
  "nivel_tipo_id" int2,
  "grado_tipo_id" int2,
  "nota_abrev" varchar(15) COLLATE "pg_catalog"."default",
  "nota_tipo_id" int2,
  "nota_tipo" varchar(45) COLLATE "pg_catalog"."default",
  "orden" int2
)
;

-- ----------------------------
-- Table structure for cdl_club_lectura
-- ----------------------------
DROP TABLE IF EXISTS "public"."cdl_club_lectura";
CREATE TABLE "public"."cdl_club_lectura" (
  "id" int4 NOT NULL DEFAULT nextval('cdl_club_lectura_id_seq'::regclass),
  "maestroinscripcion_id" int4,
  "nombre_club" varchar(1000) COLLATE "pg_catalog"."default",
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "institucioneducativasucursal_id" int4
)
;

-- ----------------------------
-- Table structure for cdl_eventos
-- ----------------------------
DROP TABLE IF EXISTS "public"."cdl_eventos";
CREATE TABLE "public"."cdl_eventos" (
  "id" int4 NOT NULL DEFAULT nextval('cdl_eventos_id_seq'::regclass),
  "cdl_club_lectura_id" int4,
  "nombre_evento" varchar(1000) COLLATE "pg_catalog"."default",
  "fecha_inicio" timestamp(6),
  "fecha_fin" timestamp(6),
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for cdl_integrantes
-- ----------------------------
DROP TABLE IF EXISTS "public"."cdl_integrantes";
CREATE TABLE "public"."cdl_integrantes" (
  "id" int4 NOT NULL DEFAULT nextval('cdl_integrantes_id_seq'::regclass),
  "cdl_club_lectura_id" int4,
  "estudiante_inscripcion_id" int4,
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for cdl_productoimagen
-- ----------------------------
DROP TABLE IF EXISTS "public"."cdl_productoimagen";
CREATE TABLE "public"."cdl_productoimagen" (
  "id" int4 NOT NULL DEFAULT nextval('cdl_productoimagen_id_seq'::regclass),
  "cdl_productos_id" int4,
  "url_imagen" varchar(1000) COLLATE "pg_catalog"."default",
  "url_documento" varchar(1000) COLLATE "pg_catalog"."default",
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for cdl_productos
-- ----------------------------
DROP TABLE IF EXISTS "public"."cdl_productos";
CREATE TABLE "public"."cdl_productos" (
  "id" int4 NOT NULL DEFAULT nextval('cdl_productos_id_seq'::regclass),
  "cdl_eventos_id" int4,
  "nombre_producto" varchar(1000) COLLATE "pg_catalog"."default",
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for centro_salud_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."centro_salud_tipo";
CREATE TABLE "public"."centro_salud_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for certificado_rue
-- ----------------------------
DROP TABLE IF EXISTS "public"."certificado_rue";
CREATE TABLE "public"."certificado_rue" (
  "id" int4 NOT NULL DEFAULT nextval('certificado_rue_id_seq'::regclass),
  "fecha_corte" date,
  "nro_certificado_inicio" int4,
  "observacion" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" date DEFAULT now(),
  "usuario_id" int4
)
;

-- ----------------------------
-- Table structure for certificado_rue_institucioneducativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."certificado_rue_institucioneducativa";
CREATE TABLE "public"."certificado_rue_institucioneducativa" (
  "id" int4 NOT NULL DEFAULT nextval('certificado_rue_institucioneducativa_id_seq'::regclass),
  "certificado_rue_id" int4,
  "institucioneducativa_id" int4,
  "nro_certificado" int4,
  "institucioneducativades" varchar(255) COLLATE "pg_catalog"."default",
  "le_juridicciongeografica_id" int4,
  "departamento" varchar(255) COLLATE "pg_catalog"."default",
  "provincia" varchar(255) COLLATE "pg_catalog"."default",
  "seccion" varchar(255) COLLATE "pg_catalog"."default",
  "canton" varchar(255) COLLATE "pg_catalog"."default",
  "localidad" varchar(255) COLLATE "pg_catalog"."default",
  "area" varchar(1) COLLATE "pg_catalog"."default",
  "dependencia" varchar(255) COLLATE "pg_catalog"."default",
  "distrito" varchar(255) COLLATE "pg_catalog"."default",
  "orgcurricular" varchar(255) COLLATE "pg_catalog"."default",
  "niveles" varchar(1000) COLLATE "pg_catalog"."default",
  "areas" varchar(400) COLLATE "pg_catalog"."default",
  "operacion_rue" varchar(255) COLLATE "pg_catalog"."default",
  "nro_resolucion" varchar(255) COLLATE "pg_catalog"."default",
  "institucioneducativatipo" varchar(255) COLLATE "pg_catalog"."default",
  "datos_sede" varchar(60) COLLATE "pg_catalog"."default",
  "zona_direccion" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ciclo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ciclo_tipo";
CREATE TABLE "public"."ciclo_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('ciclo_tipo_id_seq'::regclass),
  "ciclo" varchar(50) COLLATE "pg_catalog"."default",
  "acreditacion_id" int2 NOT NULL,
  "vigente" bool NOT NULL
)
;

-- ----------------------------
-- Table structure for circunscripcion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."circunscripcion_tipo";
CREATE TABLE "public"."circunscripcion_tipo" (
  "id" int2 NOT NULL,
  "circunscripcion" varchar(45) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for clase_tabla_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."clase_tabla_tipo";
CREATE TABLE "public"."clase_tabla_tipo" (
  "id" int2 NOT NULL,
  "tipo_tabla" varchar(255) COLLATE "pg_catalog"."default",
  "observaciones" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for comision_juegos_cupo
-- ----------------------------
DROP TABLE IF EXISTS "public"."comision_juegos_cupo";
CREATE TABLE "public"."comision_juegos_cupo" (
  "id" int4 NOT NULL DEFAULT nextval(('comision_juegos_cupo_seq'::text)::regclass),
  "prueba_tipo_id" int4,
  "comision_tipo_id" int4 NOT NULL,
  "cupo" int4 NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for comision_juegos_datos
-- ----------------------------
DROP TABLE IF EXISTS "public"."comision_juegos_datos";
CREATE TABLE "public"."comision_juegos_datos" (
  "id" int4 NOT NULL DEFAULT nextval(('comision_juegos_datos_id_seq'::text)::regclass),
  "carnet_identidad" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "paterno" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "materno" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "celular" int4 NOT NULL,
  "correo" varchar(255) COLLATE "pg_catalog"."default",
  "comision_tipo_id" int4 NOT NULL,
  "foto" text COLLATE "pg_catalog"."default",
  "genero_tipo" int4,
  "_disciplina_tipo_id" int4,
  "departamento_tipo" int4,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "prueba_tipo_id" int4,
  "esentrenador" bool,
  "gestion_tipo_id" int4 NOT NULL,
  "posicion" int4,
  "avc" varchar(20) COLLATE "pg_catalog"."default",
  "institucioneducativa_id" int4,
  "fase_tipo_id" int4 NOT NULL DEFAULT 4
)
;

-- ----------------------------
-- Table structure for comision_juegos_datos_backup211015
-- ----------------------------
DROP TABLE IF EXISTS "public"."comision_juegos_datos_backup211015";
CREATE TABLE "public"."comision_juegos_datos_backup211015" (
  "id" int4 NOT NULL DEFAULT nextval(('comision_juegos_datos_id_seq'::text)::regclass),
  "carnet_identidad" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "paterno" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "materno" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "celular" int4 NOT NULL,
  "correo" varchar(255) COLLATE "pg_catalog"."default",
  "comision_tipo_id" int4 NOT NULL,
  "foto" text COLLATE "pg_catalog"."default",
  "genero_tipo" int4,
  "_disciplina_tipo_id" int4,
  "departamento_tipo" int4,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "prueba_tipo_id" int4,
  "esentrenador" bool
)
;

-- ----------------------------
-- Table structure for comision_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."comision_tipo";
CREATE TABLE "public"."comision_tipo" (
  "id" int4 NOT NULL,
  "comision" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "cantidad" int4,
  "estado" bool,
  "nivel_tipo_id" int4,
  "esactivo" bool
)
;

-- ----------------------------
-- Table structure for consolidacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."consolidacion";
CREATE TABLE "public"."consolidacion" (
  "id" int4 NOT NULL DEFAULT nextval('consolidacion_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "institucioneducativa_sucursal_id" int4 NOT NULL,
  "institucioneducativa_tipo_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "operativo_tipo_id" int4 NOT NULL,
  "sistema_tipo_id" int4 NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) NOT NULL,
  "fecha_modificacion" timestamp(6),
  "usuario_creacion_id" int4 NOT NULL,
  "usuario_modificacion_id" int4,
  "archivo" varchar(100) COLLATE "pg_catalog"."default",
  "esonline" bool NOT NULL
)
;

-- ----------------------------
-- Table structure for control_archivos_bajada
-- ----------------------------
DROP TABLE IF EXISTS "public"."control_archivos_bajada";
CREATE TABLE "public"."control_archivos_bajada" (
  "id" int4 NOT NULL DEFAULT nextval('control_archivos_bajada_id_seq'::regclass),
  "cod_ue" int4,
  "bimestre" int4,
  "operativo" int4,
  "estado_descarga" bool,
  "gestion" varchar(30) COLLATE "pg_catalog"."default",
  "date_download" timestamp(6),
  "remote_addr" varchar(30) COLLATE "pg_catalog"."default",
  "user_agent" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for control_instalador
-- ----------------------------
DROP TABLE IF EXISTS "public"."control_instalador";
CREATE TABLE "public"."control_instalador" (
  "id" int4 NOT NULL DEFAULT nextval('control_instalador_id_seq'::regclass),
  "instalador" varchar(255) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4,
  "activo" bool,
  "detalle" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Table structure for control_operativo
-- ----------------------------
DROP TABLE IF EXISTS "public"."control_operativo";
CREATE TABLE "public"."control_operativo" (
  "id" int4 NOT NULL DEFAULT nextval('control_operativo_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "fecha_inicio" date,
  "fecha_fin" date,
  "operativo" int2 NOT NULL,
  "eshabilitado" bool DEFAULT false
)
;

-- ----------------------------
-- Table structure for convenio_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."convenio_tipo";
CREATE TABLE "public"."convenio_tipo" (
  "id" int2 NOT NULL,
  "convenio" varchar(45) COLLATE "pg_catalog"."default",
  "fecha_inicio" date,
  "fecha_finalizacion" date,
  "duracion" int4,
  "tipo_convenio" varchar(45) COLLATE "pg_catalog"."default",
  "cod_dependencia_id" int2 NOT NULL
)
;

-- ----------------------------
-- Table structure for datos_personales
-- ----------------------------
DROP TABLE IF EXISTS "public"."datos_personales";
CREATE TABLE "public"."datos_personales" (
  "iddatos_personales" int4 NOT NULL DEFAULT nextval('datos_personales_iddatos_personales_seq'::regclass),
  "dat_rde_persona_id_persona" int4,
  "telefono" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "correo" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "direccion" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "gestion_id" int4,
  "oficialia" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "libro" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "partida" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "folio" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;

-- ----------------------------
-- Table structure for departamento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."departamento_tipo";
CREATE TABLE "public"."departamento_tipo" (
  "id" int2 NOT NULL,
  "sigla" varchar(5) COLLATE "pg_catalog"."default" NOT NULL,
  "departamento" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "codigo" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "pais_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for dependencia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."dependencia_tipo";
CREATE TABLE "public"."dependencia_tipo" (
  "id" int2 NOT NULL,
  "dependencia" varchar(45) COLLATE "pg_catalog"."default",
  "id_tipo_administracion" int2 NOT NULL
)
;

-- ----------------------------
-- Table structure for discapacidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."discapacidad_tipo";
CREATE TABLE "public"."discapacidad_tipo" (
  "id" int2 NOT NULL,
  "origendiscapacidad" varchar(45) COLLATE "pg_catalog"."default",
  "es_vigente" bool
)
;

-- ----------------------------
-- Table structure for disciplina_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."disciplina_tipo";
CREATE TABLE "public"."disciplina_tipo" (
  "id" int4 NOT NULL,
  "nivel_tipo_id" int2 NOT NULL,
  "disciplina" varchar(45) COLLATE "pg_catalog"."default",
  "estado" bool,
  "cantidad" varchar(32) COLLATE "pg_catalog"."default",
  "cantidad_maestro" int4,
  "cantidad_padre" int4
)
;

-- ----------------------------
-- Table structure for distrito_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."distrito_tipo";
CREATE TABLE "public"."distrito_tipo" (
  "id" int2 NOT NULL,
  "departamento_tipo_id" int2,
  "cod_planillas" int2 NOT NULL,
  "tipo" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(45) COLLATE "pg_catalog"."default",
  "distrito" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for documento
-- ----------------------------
DROP TABLE IF EXISTS "public"."documento";
CREATE TABLE "public"."documento" (
  "id" int4 NOT NULL DEFAULT nextval(('documento_id_seq'::text)::regclass),
  "documento" varchar(50) COLLATE "pg_catalog"."default",
  "documento_tipo_id" int4 NOT NULL,
  "obs" varchar COLLATE "pg_catalog"."default",
  "documento_serie_id" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_id" int4 NOT NULL,
  "fecha_registro" date NOT NULL DEFAULT ('now'::text)::date,
  "fecha_impresion" date,
  "tramite_id" int4 NOT NULL,
  "documento_estado_id" int4 NOT NULL,
  "documento_firma_id" int4,
  "token_privado" text COLLATE "pg_catalog"."default",
  "token_publico" text COLLATE "pg_catalog"."default",
  "url" text COLLATE "pg_catalog"."default",
  "token_impreso" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for documento_estado
-- ----------------------------
DROP TABLE IF EXISTS "public"."documento_estado";
CREATE TABLE "public"."documento_estado" (
  "id" int2 NOT NULL,
  "documento_estado" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for documento_firma
-- ----------------------------
DROP TABLE IF EXISTS "public"."documento_firma";
CREATE TABLE "public"."documento_firma" (
  "id" int4 NOT NULL DEFAULT nextval(('documento_firma_id_seq'::text)::regclass),
  "persona_id" int4 NOT NULL,
  "firma" bytea NOT NULL,
  "lugar_tipo_id" int4 NOT NULL,
  "usuario_id" int4 NOT NULL,
  "esactivo" bool NOT NULL,
  "obs" varchar(150) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) NOT NULL,
  "token_firma" text COLLATE "pg_catalog"."default" NOT NULL,
  "persona_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for documento_firma_autorizada
-- ----------------------------
DROP TABLE IF EXISTS "public"."documento_firma_autorizada";
CREATE TABLE "public"."documento_firma_autorizada" (
  "id" int4 NOT NULL DEFAULT nextval(('documento_firma_autorizada_id_seq'::text)::regclass),
  "persona_id" int4 NOT NULL,
  "maximo" int4 NOT NULL,
  "usado" int4 NOT NULL,
  "fecha_inicio" timestamp(6),
  "fecha_cierre" timestamp(6),
  "usuario_id" int4 NOT NULL,
  "esactivo" bool NOT NULL,
  "obs" varchar(150) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) NOT NULL,
  "documento_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for documento_serie
-- ----------------------------
DROP TABLE IF EXISTS "public"."documento_serie";
CREATE TABLE "public"."documento_serie" (
  "id" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_id" int4 NOT NULL,
  "departamento_tipo_id" int2 NOT NULL,
  "esanulado" bool NOT NULL,
  "observacion_anulado" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(50) COLLATE "pg_catalog"."default",
  "documento_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for documento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."documento_tipo";
CREATE TABLE "public"."documento_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_esp_indir_id_seq'::regclass),
  "documento_tipo" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for download_file
-- ----------------------------
DROP TABLE IF EXISTS "public"."download_file";
CREATE TABLE "public"."download_file" (
  "id" int4 NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "fecha_descarga" timestamp(6) NOT NULL,
  "operativo" int2 NOT NULL,
  "bimestre" int2 NOT NULL,
  "usuario_id" int4 NOT NULL,
  "ip" varchar(18) COLLATE "pg_catalog"."default" NOT NULL,
  "browser" varchar(30) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for educacion_diversa_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."educacion_diversa_tipo";
CREATE TABLE "public"."educacion_diversa_tipo" (
  "id" int2 NOT NULL,
  "educacion_diversa" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for entidadfinanciera_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."entidadfinanciera_tipo";
CREATE TABLE "public"."entidadfinanciera_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('entidadfinanciera_tipo_id_seq'::regclass),
  "entidadfinanciera" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for equip_labo_fisi_quim
-- ----------------------------
DROP TABLE IF EXISTS "public"."equip_labo_fisi_quim";
CREATE TABLE "public"."equip_labo_fisi_quim" (
  "id" int4 NOT NULL DEFAULT nextval('equip_labo_fisi_quim_id_seq'::regclass),
  "institucioneducativa_id" int4,
  "secci_cantidad_tot_estu" int4,
  "secci_cantidad_1ersec" int4,
  "secci_cantidad_2dosec" int4,
  "secci_cantidad_3ersec" int4,
  "secci_cantidad_4tosec" int4,
  "secci_cantidad_5tosec" int4,
  "secci_cantidad_6tosec" int4,
  "secciv_construida_tipo_id" int4,
  "secciv_es_lab_fis_quim" bool,
  "secciv_cant_amb" int4,
  "secciv_cuenta_mesones" bool,
  "secciv_es_mesones_ceramica" bool,
  "secciv_cuenta_piletas" bool,
  "secciv_cantidad_piletas" int4,
  "secciv_cuenta_inst_elec" bool,
  "secciv_cantidad_toma_corr" int4,
  "seccv_cuenta_equip_lab_ciencias" bool,
  "seccv_anio_equipado" int4,
  "seccv_institucion_equipo" varchar(250) COLLATE "pg_catalog"."default",
  "seccv_cantidad_items" int4,
  "fecha_registro" date,
  "fecha_modificacion" timestamp(6),
  "nombre_alcalde" varchar(500) COLLATE "pg_catalog"."default",
  "telefono_alcalde" varchar(80) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for equip_labo_fisi_quim_construida_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."equip_labo_fisi_quim_construida_tipo";
CREATE TABLE "public"."equip_labo_fisi_quim_construida_tipo" (
  "id" int4 NOT NULL,
  "construccion" varchar(250) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for equip_labo_fisi_quim_correos
-- ----------------------------
DROP TABLE IF EXISTS "public"."equip_labo_fisi_quim_correos";
CREATE TABLE "public"."equip_labo_fisi_quim_correos" (
  "id" int4 NOT NULL DEFAULT nextval('equip_labo_fisi_quim_correos_id_seq'::regclass),
  "equip_labo_fisi_quim_id" int4,
  "correo_electronico" varchar(250) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for equip_labo_fisi_quim_fotos
-- ----------------------------
DROP TABLE IF EXISTS "public"."equip_labo_fisi_quim_fotos";
CREATE TABLE "public"."equip_labo_fisi_quim_fotos" (
  "id" int4 NOT NULL DEFAULT nextval('equip_labo_fisi_quim_fotos_id_seq'::regclass),
  "equip_labo_fisi_quim_id" int4,
  "tipo_foto_id" int4,
  "foto" varchar(250) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for equip_labo_fisi_quim_tipo_foto
-- ----------------------------
DROP TABLE IF EXISTS "public"."equip_labo_fisi_quim_tipo_foto";
CREATE TABLE "public"."equip_labo_fisi_quim_tipo_foto" (
  "id" int4 NOT NULL,
  "tipo" varchar(250) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for especial_area_tecnica_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."especial_area_tecnica_tipo";
CREATE TABLE "public"."especial_area_tecnica_tipo" (
  "id" int2 NOT NULL,
  "area_tecnica" varchar(70) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for especial_area_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."especial_area_tipo";
CREATE TABLE "public"."especial_area_tipo" (
  "id" int2 NOT NULL,
  "area_especial" varchar(70) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for especial_grado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."especial_grado_tipo";
CREATE TABLE "public"."especial_grado_tipo" (
  "id" int2 NOT NULL,
  "grado" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "edad_minima" int2,
  "edad_maxima" int2,
  "id_seguimiento" int2 NOT NULL
)
;

-- ----------------------------
-- Table structure for especial_modalidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."especial_modalidad_tipo";
CREATE TABLE "public"."especial_modalidad_tipo" (
  "id" int4 NOT NULL,
  "modalidad" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "es_valido" bool NOT NULL
)
;

-- ----------------------------
-- Table structure for especial_nivel_tecnico_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."especial_nivel_tecnico_tipo";
CREATE TABLE "public"."especial_nivel_tecnico_tipo" (
  "id" int2 NOT NULL,
  "nivel_tecnico" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for especial_nivel_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."especial_nivel_tipo";
CREATE TABLE "public"."especial_nivel_tipo" (
  "id" int2 NOT NULL,
  "nivel" varchar(45) COLLATE "pg_catalog"."default",
  "cod_org_curr_id" int2 NOT NULL,
  "vigente" bool NOT NULL
)
;

-- ----------------------------
-- Table structure for especial_programa_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."especial_programa_tipo";
CREATE TABLE "public"."especial_programa_tipo" (
  "id" int2 NOT NULL,
  "programa" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "area_especial_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for especial_servicio_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."especial_servicio_tipo";
CREATE TABLE "public"."especial_servicio_tipo" (
  "id" int2 NOT NULL,
  "servicio" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "area_especial_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for especial_tecnica_especialidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."especial_tecnica_especialidad_tipo";
CREATE TABLE "public"."especial_tecnica_especialidad_tipo" (
  "id" int2 NOT NULL,
  "especialidad" varchar(75) COLLATE "pg_catalog"."default" NOT NULL,
  "area_tecnica_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for especialidad_carrera_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."especialidad_carrera_tipo";
CREATE TABLE "public"."especialidad_carrera_tipo" (
  "id" int2 NOT NULL,
  "especialidad" varchar(75) COLLATE "pg_catalog"."default" NOT NULL,
  "esactivo" bool NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "carrera_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for especialidad_maestro_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."especialidad_maestro_tipo";
CREATE TABLE "public"."especialidad_maestro_tipo" (
  "id" int2 NOT NULL,
  "especialidad" varchar(250) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for especialidad_tecnico_humanistico_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."especialidad_tecnico_humanistico_tipo";
CREATE TABLE "public"."especialidad_tecnico_humanistico_tipo" (
  "id" int4 NOT NULL,
  "especialidad" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "desc_abrev" varchar(7) COLLATE "pg_catalog"."default",
  "oficial" bool NOT NULL,
  "area_tipo_id" int2,
  "esobligatorio" bool NOT NULL DEFAULT true,
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for especialidad_tipo_humnistico_tecnico
-- ----------------------------
DROP TABLE IF EXISTS "public"."especialidad_tipo_humnistico_tecnico";
CREATE TABLE "public"."especialidad_tipo_humnistico_tecnico" (
  "id" int2 NOT NULL DEFAULT nextval('especialidad_tipo_humnistico_tecnico_id_seq'::regclass),
  "especialidad" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estado_civil_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estado_civil_tipo";
CREATE TABLE "public"."estado_civil_tipo" (
  "id" int2 NOT NULL,
  "estado_civil" varchar(45) COLLATE "pg_catalog"."default",
  "esactivo" bool
)
;

-- ----------------------------
-- Table structure for estadoinstitucion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estadoinstitucion_tipo";
CREATE TABLE "public"."estadoinstitucion_tipo" (
  "id" int2 NOT NULL,
  "estadoinstitucion" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "obs_cerrada" varchar(45) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for estadomaestro_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estadomaestro_tipo";
CREATE TABLE "public"."estadomaestro_tipo" (
  "id" int2 NOT NULL,
  "descripcion" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estadomatricula_regla
-- ----------------------------
DROP TABLE IF EXISTS "public"."estadomatricula_regla";
CREATE TABLE "public"."estadomatricula_regla" (
  "id" int4 NOT NULL DEFAULT nextval('estadomatricula_regla_id_seq'::regclass),
  "estadomatricula_tipo_id" int4 NOT NULL,
  "alterno_estadomatricula_tipo_id" int4 NOT NULL,
  "esactivo" bool
)
;

-- ----------------------------
-- Table structure for estadomatricula_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estadomatricula_tipo";
CREATE TABLE "public"."estadomatricula_tipo" (
  "id" int2 NOT NULL,
  "estadomatricula" varchar(80) COLLATE "pg_catalog"."default",
  "operativo" bool NOT NULL,
  "nota_presentacion_tipo_id" int2,
  "fin_proceso_educativo" bool NOT NULL DEFAULT false
)
;
COMMENT ON COLUMN "public"."estadomatricula_tipo"."operativo" IS 'variable de operativo';

-- ----------------------------
-- Table structure for estructura_educativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."estructura_educativa";
CREATE TABLE "public"."estructura_educativa" (
  "id" int4 NOT NULL,
  "institucioneducativa_tipo_id" int4,
  "nivel_tipo_id" int4 NOT NULL,
  "ciclo_tipo_id" int4 NOT NULL,
  "grado_tipo_id" int4 NOT NULL,
  "edad_minima" int2,
  "edad_maxima" int2,
  "fecha_registro" timestamp(6) DEFAULT now(),
  "fecha_modificacion" timestamp(6) DEFAULT now(),
  "observacion" varchar(500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estructura_educativa_asignatura
-- ----------------------------
DROP TABLE IF EXISTS "public"."estructura_educativa_asignatura";
CREATE TABLE "public"."estructura_educativa_asignatura" (
  "id" int4 NOT NULL DEFAULT nextval('estructura_educativa_asignatura_id_seq'::regclass),
  "estructura_educativa_id" int4 NOT NULL,
  "periodo_intervalo_tipo_id" int4 NOT NULL,
  "asignatura_tipo_id" int4 NOT NULL,
  "asignatura_codigo" int4 NOT NULL,
  "carga_horaria" int4,
  "fecha_registro" timestamp(6) DEFAULT now(),
  "fecha_modificacion" timestamp(6) DEFAULT now(),
  "observacion" varchar(500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estructura_educativa_regla
-- ----------------------------
DROP TABLE IF EXISTS "public"."estructura_educativa_regla";
CREATE TABLE "public"."estructura_educativa_regla" (
  "id" int4 NOT NULL DEFAULT nextval('estructura_educativa_regla_id_seq'::regclass),
  "estructura_educativa_id" int4 NOT NULL,
  "requiere_estructura_educativa_id" int4,
  "opcional" bool,
  "observacion" varchar(500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante";
CREATE TABLE "public"."estudiante" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_id_seq'::regclass),
  "codigo_rude" varchar(18) COLLATE "pg_catalog"."default" NOT NULL,
  "carnet_identidad" varchar(20) COLLATE "pg_catalog"."default",
  "pasaporte" varchar(45) COLLATE "pg_catalog"."default",
  "paterno" varchar(45) COLLATE "pg_catalog"."default",
  "materno" varchar(45) COLLATE "pg_catalog"."default",
  "nombre" varchar(45) COLLATE "pg_catalog"."default",
  "genero_tipo_id" int2,
  "estado_civil_id" int2,
  "lugar_nac_tipo_id" int4,
  "oficialia" varchar(45) COLLATE "pg_catalog"."default",
  "libro" varchar(45) COLLATE "pg_catalog"."default",
  "partida" varchar(45) COLLATE "pg_catalog"."default",
  "folio" varchar(45) COLLATE "pg_catalog"."default",
  "sangre_tipo_id" int2,
  "idioma_materno_id" int2,
  "segip_id" int2,
  "complemento" varchar(2) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "bolean" int4,
  "fecha_nacimiento" date,
  "fecha_modificacion" date,
  "correo" varchar(40) COLLATE "pg_catalog"."default",
  "pais_tipo_id" int2,
  "localidad_nac" varchar(125) COLLATE "pg_catalog"."default",
  "foto" varchar(100) COLLATE "pg_catalog"."default",
  "celular" varchar(8) COLLATE "pg_catalog"."default",
  "resolucionaprovatoria" varchar(50) COLLATE "pg_catalog"."default",
  "carnet_codepedis" varchar(15) COLLATE "pg_catalog"."default",
  "observacionadicional" varchar(150) COLLATE "pg_catalog"."default",
  "carnet_ibc" varchar(15) COLLATE "pg_catalog"."default",
  "lugar_prov_nac_tipo_id" int2,
  "libreta_militar" varchar(20) COLLATE "pg_catalog"."default",
  "es_doble_nacionalidad" bool,
  "observacion" varchar(255) COLLATE "pg_catalog"."default",
  "expedido_id" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Table structure for estudiante_apoderado
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_apoderado";
CREATE TABLE "public"."estudiante_apoderado" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_apoderado_id_seq'::regclass),
  "persona_id" int4 NOT NULL,
  "estudiante_id" int4 NOT NULL,
  "apoderado_tipo_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for estudiante_asignatura
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_asignatura";
CREATE TABLE "public"."estudiante_asignatura" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_asignatura_id_seq'::regclass),
  "gestion_tipo_id" int4 NOT NULL,
  "fecha_registro" date,
  "estudiante_inscripcion_id" int4,
  "institucioneducativa_curso_oferta_id" int4 NOT NULL,
  "institucioneducativa_tecnica_curso_oferta_id" int4,
  "estudianteasignatura_estado_id" int2
)
;

-- ----------------------------
-- Table structure for estudiante_back
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_back";
CREATE TABLE "public"."estudiante_back" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_back_id_seq'::regclass),
  "codigo_rude" varchar(18) COLLATE "pg_catalog"."default" NOT NULL,
  "carnet_identidad" varchar(20) COLLATE "pg_catalog"."default",
  "pasaporte" varchar(45) COLLATE "pg_catalog"."default",
  "paterno" varchar(45) COLLATE "pg_catalog"."default",
  "materno" varchar(45) COLLATE "pg_catalog"."default",
  "nombre" varchar(45) COLLATE "pg_catalog"."default",
  "genero_tipo_id" int2,
  "estado_civil_id" int2,
  "lugar_nac_tipo_id" int4,
  "oficialia" varchar(45) COLLATE "pg_catalog"."default",
  "libro" varchar(45) COLLATE "pg_catalog"."default",
  "partida" varchar(45) COLLATE "pg_catalog"."default",
  "folio" varchar(45) COLLATE "pg_catalog"."default",
  "sangre_tipo_id" int2,
  "idioma_materno_id" int2,
  "segip_id" int2,
  "complemento" varchar(2) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "bolean" int4,
  "fecha_nacimiento" date,
  "fecha_modificacion" date,
  "correo" varchar(40) COLLATE "pg_catalog"."default",
  "pais_tipo_id" int2,
  "localidad_nac" varchar(125) COLLATE "pg_catalog"."default",
  "foto" varchar(100) COLLATE "pg_catalog"."default",
  "celular" varchar(8) COLLATE "pg_catalog"."default",
  "resolucionaprovatoria" varchar(50) COLLATE "pg_catalog"."default",
  "carnet_codepedis" varchar(15) COLLATE "pg_catalog"."default",
  "observacionadicional" varchar(150) COLLATE "pg_catalog"."default",
  "carnet_ibc" varchar(15) COLLATE "pg_catalog"."default",
  "lugar_prov_nac_tipo_id" int2,
  "libreta_militar" varchar(20) COLLATE "pg_catalog"."default",
  "es_doble_nacionalidad" bool,
  "observacion" varchar(255) COLLATE "pg_catalog"."default",
  "estudiante_id" int4
)
;

-- ----------------------------
-- Table structure for estudiante_back_detalle
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_back_detalle";
CREATE TABLE "public"."estudiante_back_detalle" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_back_detalle_id_seq'::regclass),
  "estudiante_back_id" int4,
  "repaldo_rude" json
)
;

-- ----------------------------
-- Table structure for estudiante_banco_preguntas
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_banco_preguntas";
CREATE TABLE "public"."estudiante_banco_preguntas" (
  "id" int4 NOT NULL DEFAULT nextval('estudiant_banco_preguntas_id_seq'::regclass),
  "pregunta" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "consulta" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for estudiante_cambio
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_cambio";
CREATE TABLE "public"."estudiante_cambio" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_cambio_id_seq'::regclass),
  "estudiante_id" int4 NOT NULL,
  "estudiante_cambio_tipo_id" int2,
  "gestion_tipo" int2,
  "codigo_rude" varchar(18) COLLATE "pg_catalog"."default" NOT NULL,
  "carnet_identidad" varchar(20) COLLATE "pg_catalog"."default",
  "complemento" varchar(2) COLLATE "pg_catalog"."default",
  "pasaporte" varchar(45) COLLATE "pg_catalog"."default",
  "paterno" varchar(45) COLLATE "pg_catalog"."default",
  "materno" varchar(45) COLLATE "pg_catalog"."default",
  "nombre" varchar(45) COLLATE "pg_catalog"."default",
  "genero_tipo_id" int2,
  "estado_civil_id" int2,
  "fecha_nacimiento" date,
  "lugar_nac_tipo_id" int4,
  "pais_tipo_id" int2,
  "localidad_nac" varchar(125) COLLATE "pg_catalog"."default",
  "foto" varchar(100) COLLATE "pg_catalog"."default",
  "nota_enviada" varchar(50) COLLATE "pg_catalog"."default",
  "fecha_nota_enviada" date,
  "resolucion" varchar(50) COLLATE "pg_catalog"."default",
  "fecha_resolucion" date,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for estudiante_cambio_genero
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_cambio_genero";
CREATE TABLE "public"."estudiante_cambio_genero" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_cambio_genero_id_seq'::regclass),
  "estudiante_id" int4,
  "codigo_rude" varchar(18) COLLATE "pg_catalog"."default" NOT NULL,
  "carnet_identidad" varchar(20) COLLATE "pg_catalog"."default",
  "pasaporte" varchar(45) COLLATE "pg_catalog"."default",
  "paterno" varchar(45) COLLATE "pg_catalog"."default",
  "materno" varchar(45) COLLATE "pg_catalog"."default",
  "nombre" varchar(45) COLLATE "pg_catalog"."default",
  "genero_tipo_id" int2,
  "estado_civil_id" int2,
  "lugar_nac_tipo_id" int4,
  "oficialia" varchar(45) COLLATE "pg_catalog"."default",
  "libro" varchar(45) COLLATE "pg_catalog"."default",
  "partida" varchar(45) COLLATE "pg_catalog"."default",
  "folio" varchar(45) COLLATE "pg_catalog"."default",
  "sangre_tipo_id" int2,
  "idioma_materno_id" int2,
  "segip_id" int2,
  "complemento" varchar(2) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "bolean" int4,
  "fecha_nacimiento" date,
  "fecha_modificacion" date,
  "correo" varchar(40) COLLATE "pg_catalog"."default",
  "pais_tipo_id" int2,
  "localidad_nac" varchar(125) COLLATE "pg_catalog"."default",
  "foto" varchar(100) COLLATE "pg_catalog"."default",
  "celular" varchar(8) COLLATE "pg_catalog"."default",
  "resolucionaprovatoria" varchar(50) COLLATE "pg_catalog"."default",
  "carnet_codepedis" varchar(15) COLLATE "pg_catalog"."default",
  "observacionadicional" varchar(150) COLLATE "pg_catalog"."default",
  "carnet_ibc" varchar(15) COLLATE "pg_catalog"."default",
  "lugar_prov_nac_tipo_id" int2,
  "libreta_militar" varchar(20) COLLATE "pg_catalog"."default",
  "es_doble_nacionalidad" bool,
  "observacion" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_cambio_genero_detalle
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_cambio_genero_detalle";
CREATE TABLE "public"."estudiante_cambio_genero_detalle" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_cambio_genero_detalle_id_seq'::regclass),
  "estudiante_cambio_genero_id" int4,
  "repaldo_inscripcion" json
)
;

-- ----------------------------
-- Table structure for estudiante_cambio_genero_total
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_cambio_genero_total";
CREATE TABLE "public"."estudiante_cambio_genero_total" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_cambio_genero_total_id_seq'::regclass),
  "numero" int4,
  "nota_enviada" varchar(100) COLLATE "pg_catalog"."default",
  "nro_resolucion" varchar(100) COLLATE "pg_catalog"."default",
  "departamento" varchar(45) COLLATE "pg_catalog"."default",
  "cedula_identidad" varchar(45) COLLATE "pg_catalog"."default",
  "paterno" varchar(45) COLLATE "pg_catalog"."default",
  "materno" varchar(45) COLLATE "pg_catalog"."default",
  "nombre" varchar(45) COLLATE "pg_catalog"."default",
  "paterno_cambio" varchar(45) COLLATE "pg_catalog"."default",
  "materno_cambio" varchar(45) COLLATE "pg_catalog"."default",
  "nombre_cambio" varchar(45) COLLATE "pg_catalog"."default",
  "fecha_nac" varchar(45) COLLATE "pg_catalog"."default",
  "lugar_nac_tipo_id" varchar(150) COLLATE "pg_catalog"."default",
  "observacion" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_cambio_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_cambio_tipo";
CREATE TABLE "public"."estudiante_cambio_tipo" (
  "id" int2 NOT NULL,
  "estudiante_cambio" varchar(25) COLLATE "pg_catalog"."default",
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON TABLE "public"."estudiante_cambio_tipo" IS '0 AntiguoRegistro, 1 CambioRegistroDatos, 2. CambioGenero';

-- ----------------------------
-- Table structure for estudiante_datopersonal
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_datopersonal";
CREATE TABLE "public"."estudiante_datopersonal" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_datopersonal_id_seq'::regclass),
  "estudiante_id" int4,
  "gestion_tipo_id" int4,
  "estatura" float4,
  "peso" numeric(5,2),
  "foto" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(155) COLLATE "pg_catalog"."default",
  "talla" varchar(4) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_destacado
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_destacado";
CREATE TABLE "public"."estudiante_destacado" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_destacado_id_seq'::regclass),
  "estudiante_inscripcion_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "fecha_registro" timestamp(6) DEFAULT now(),
  "ip_origen" varchar(255) COLLATE "pg_catalog"."default",
  "impreso" bool,
  "genero_tipo_id" int2 NOT NULL,
  "fecha_envio" date,
  "lote" varchar(255) COLLATE "pg_catalog"."default",
  "promedio_final" numeric(5,2) NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "_estudiante_id" int4 NOT NULL,
  "esoficial" bool NOT NULL DEFAULT true,
  "nombre" varchar(45) COLLATE "pg_catalog"."default",
  "paterno" varchar(45) COLLATE "pg_catalog"."default",
  "materno" varchar(45) COLLATE "pg_catalog"."default",
  "carnet_identidad" varchar(20) COLLATE "pg_catalog"."default",
  "fecha_modificacion" date,
  "codigo_rude" varchar(18) COLLATE "pg_catalog"."default",
  "orgcurricular_tipo_id" int2,
  "promedio_sem1" numeric(5,2),
  "promedio_sem2" numeric(5,2)
)
;

-- ----------------------------
-- Table structure for estudiante_especial_indirecta
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_especial_indirecta";
CREATE TABLE "public"."estudiante_especial_indirecta" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_esp_indir_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "estudiante_id" int4 NOT NULL,
  "gestion_tipo_id" int2 NOT NULL,
  "institucioneducativa_tipo_id" varchar(50) COLLATE "pg_catalog"."default",
  "dis_intelectual_generlal" bool NOT NULL,
  "dis_intelectual_down" bool NOT NULL,
  "dis_intelectual_autismo" bool NOT NULL,
  "dis_visual_total" bool NOT NULL DEFAULT false,
  "dis_visual_baja" bool NOT NULL,
  "dis_auditiva" bool NOT NULL,
  "dis_fisicomotora" bool NOT NULL,
  "dis_multiple" bool NOT NULL,
  "dis_otros" bool NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_registro" date,
  "usuario_id" int2
)
;

-- ----------------------------
-- Table structure for estudiante_historial_modificacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_historial_modificacion";
CREATE TABLE "public"."estudiante_historial_modificacion" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_historial_modificacion_id_seq'::regclass),
  "dato_anterior" text COLLATE "pg_catalog"."default" NOT NULL,
  "resolucion" varchar(75) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_resolucion" date NOT NULL,
  "justificacion" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "estudiante_id" int4 NOT NULL,
  "fecha_registro" timestamp(6) NOT NULL,
  "fecha_modificacion" timestamp(6),
  "usuario_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion";
CREATE TABLE "public"."estudiante_inscripcion" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_id_seq'::regclass),
  "estadomatricula_tipo_id" int2 NOT NULL,
  "estudiante_id" int4 NOT NULL,
  "num_matricula" int4,
  "observacion_id" int2,
  "observacion" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_inscripcion" date,
  "apreciacion_final" varchar(255) COLLATE "pg_catalog"."default",
  "operativo_id" int4,
  "fecha_registro" date DEFAULT now(),
  "organizacion" varchar(100) COLLATE "pg_catalog"."default",
  "facilitadorpermanente" varchar(50) COLLATE "pg_catalog"."default",
  "modalidad_tipo_id" int2,
  "acreditacionnivel_tipo_id" int2,
  "permanenteprograma_tipo_id" int2,
  "fecha_inicio" date,
  "fecha_fin" date,
  "cursonombre" varchar(100) COLLATE "pg_catalog"."default",
  "lugar" varchar(100) COLLATE "pg_catalog"."default",
  "lugarcurso" varchar(100) COLLATE "pg_catalog"."default",
  "facilitadorcurso" varchar(100) COLLATE "pg_catalog"."default",
  "fechainiciocurso" date,
  "fechafincurso" date,
  "cod_ue_procedencia_id" int4,
  "institucioneducativa_curso_id" int4 NOT NULL,
  "estadomatricula_inicio_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_alternativa_especial_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_alternativa_especial_tipo";
CREATE TABLE "public"."estudiante_inscripcion_alternativa_especial_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_alternativa_excepcional
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_alternativa_excepcional";
CREATE TABLE "public"."estudiante_inscripcion_alternativa_excepcional" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_alternativa_excepcional_id_seq'::regclass),
  "estudiante_inscripcion_alternativa_excepcional_tipo_id" int4,
  "fecha" timestamp(6),
  "obs" varchar(50) COLLATE "pg_catalog"."default",
  "estudiante_inscripcion_id" int4,
  "gestion_tipo_id" int4,
  "documento" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_alternativa_excepcional_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_alternativa_excepcional_tipo";
CREATE TABLE "public"."estudiante_inscripcion_alternativa_excepcional_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(50) COLLATE "pg_catalog"."default",
  "esactivo" bool
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_asistencia
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_asistencia";
CREATE TABLE "public"."estudiante_inscripcion_asistencia" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_asistencia_id_seq'::regclass),
  "estudiante_inscripcion_id" int4 NOT NULL,
  "atrasos" int4,
  "dias_trabajados" int4 NOT NULL,
  "faltas_licencia" int4,
  "faltas_sin_licencia" int4,
  "total_dias" int4,
  "nota_tipo_id" int4,
  "fecha_registro" timestamp(6) DEFAULT now(),
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_cambioestado
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_cambioestado";
CREATE TABLE "public"."estudiante_inscripcion_cambioestado" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_cambioestado_id_seq'::regclass),
  "estudiante_inscripcion_id" int4 NOT NULL,
  "justificacion" varchar(255) COLLATE "pg_catalog"."default",
  "json" text COLLATE "pg_catalog"."default",
  "observacion" varchar(150) COLLATE "pg_catalog"."default",
  "archivo" varchar(150) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) NOT NULL,
  "fecha_modificacion" timestamp(6),
  "usuario_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_diplomatico
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_diplomatico";
CREATE TABLE "public"."estudiante_inscripcion_diplomatico" (
  "id" int4 NOT NULL DEFAULT nextval(('estudiante_inscripcion_diplomatico_id_seq'::text)::regclass),
  "estudiante_inscripcion_id" int4,
  "documento_numero" varchar(50) COLLATE "pg_catalog"."default",
  "documento_path" varchar COLLATE "pg_catalog"."default",
  "obs" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_documento
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_documento";
CREATE TABLE "public"."estudiante_inscripcion_documento" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_documento_id_seq'::regclass),
  "estudiante_inscripcion_id" int4 NOT NULL,
  "documento_tipo_id" int4 NOT NULL,
  "observacion" varchar(255) COLLATE "pg_catalog"."default",
  "ruta_imagen" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_eliminados
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_eliminados";
CREATE TABLE "public"."estudiante_inscripcion_eliminados" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_eliminados_id_seq'::regclass),
  "estudiante_inscripcion_id" int4 NOT NULL,
  "estadomatricula_tipo_id" int2 NOT NULL,
  "estudiante_id" int4 NOT NULL,
  "num_matricula" int4,
  "observacion_id" int2,
  "observacion" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_inscripcion" date,
  "apreciacion_final" varchar(255) COLLATE "pg_catalog"."default",
  "operativo_id" int4,
  "fecha_registro" date DEFAULT now(),
  "organizacion" varchar(100) COLLATE "pg_catalog"."default",
  "facilitadorpermanente" varchar(50) COLLATE "pg_catalog"."default",
  "modalidad_tipo_id" int2,
  "acreditacionnivel_tipo_id" int2,
  "permanenteprograma_tipo_id" int2,
  "fecha_inicio" date,
  "fecha_fin" date,
  "cursonombre" varchar(100) COLLATE "pg_catalog"."default",
  "lugar" varchar(100) COLLATE "pg_catalog"."default",
  "lugarcurso" varchar(100) COLLATE "pg_catalog"."default",
  "facilitadorcurso" varchar(100) COLLATE "pg_catalog"."default",
  "fechainiciocurso" date,
  "fechafincurso" date,
  "cod_ue_procedencia_id" int4,
  "institucioneducativa_curso_id" int4 NOT NULL,
  "estadomatricula_inicio_tipo_id" int2,
  "obs_eliminacion" varchar(255) COLLATE "pg_catalog"."default",
  "usuario_id" int4 NOT NULL,
  "fecha_eliminacion" date DEFAULT now(),
  "doc" bool
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_especial
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_especial";
CREATE TABLE "public"."estudiante_inscripcion_especial" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_especial_id_seq'::regclass),
  "estudiante_inscripcion_id" int4 NOT NULL,
  "institucioneducativa_curso_especial_id" int4,
  "especial_area_tipo_id" int4,
  "informe_psicopedagogico_talento" varchar(255) COLLATE "pg_catalog"."default",
  "socioeconomico_especial_id" int4,
  "evaluacion_pedagogica" varchar(255) COLLATE "pg_catalog"."default",
  "evaluacion_unidad_educativa" varchar(255) COLLATE "pg_catalog"."default",
  "evaluacion_escolaridad" varchar(255) COLLATE "pg_catalog"."default",
  "codigo_pedagogico" varchar(255) COLLATE "pg_catalog"."default",
  "codigo_psicopedagogico" varchar(255) COLLATE "pg_catalog"."default",
  "modalidad_atencion" "public"."modalidad_atencion_enum",
  "dificultad_aprendizaje" "public"."dificultad_aprendizaje_enum",
  "deteccion_talento" "public"."deteccion_enum",
  "grado_talento" "public"."grado_talento_enum",
  "tipo_talento" "public"."tipo_talento_enum",
  "discapacidad" "public"."discapacidad_enum",
  "tipo_discapacidad" "public"."tipo_discapacidad_enum",
  "grado_discapacidad_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_extranjero
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_extranjero";
CREATE TABLE "public"."estudiante_inscripcion_extranjero" (
  "id" int4 NOT NULL,
  "institucioneducativa_origen" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "curso_vencido" text COLLATE "pg_catalog"."default" NOT NULL,
  "ruta_imagen" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "estudiante_inscripcion_id" int4 NOT NULL,
  "pais_tipo_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_humnistico_tecnico
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_humnistico_tecnico";
CREATE TABLE "public"."estudiante_inscripcion_humnistico_tecnico" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_humnistico_tecnico_id_seq'::regclass),
  "institucioneducativa_humanistico_id" int4,
  "estudiante_inscripcion_id" int4,
  "especialidad_tecnico_humanistico_tipo_id" int4,
  "horas" int4,
  "esvalido" bool
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_juegos
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_juegos";
CREATE TABLE "public"."estudiante_inscripcion_juegos" (
  "id" int4 NOT NULL DEFAULT nextval(('public.estudiante_inscripcion_jue_id_seq'::text)::regclass),
  "estudiante_inscripcion_id" int4 NOT NULL,
  "prueba_tipo_id" int2 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "fase_tipo_id" int2 NOT NULL,
  "posicion" int4,
  "distancia" float4,
  "obs" varchar(105) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_modificacion" date,
  "usuario_id" int4,
  "puntaje" float8,
  "marca" varchar(100) COLLATE "pg_catalog"."default",
  "impreso" bool
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_observacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_observacion";
CREATE TABLE "public"."estudiante_inscripcion_observacion" (
  "id" int4 NOT NULL,
  "observacion_inscripcion_tipo_id" int4 NOT NULL,
  "estudiante_inscripcion_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "usuario_id" int4 NOT NULL,
  "fecha_registro" date NOT NULL,
  "obs" varchar(1000) COLLATE "pg_catalog"."default",
  "esactivo" bool,
  "institucioneducativa_id" int4
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_alt_acceso
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_acceso";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_alt_acceso" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_alt_acceso_id_seq'::regclass),
  "estudiante_inscripcion_socioeconomico_alt_acceso_tipo_id" int2,
  "estudiante_inscripcion_socioeconomico_alternativa_id" int4
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_alt_acceso_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_acceso_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_alt_acceso_tipo" (
  "id" int4 NOT NULL,
  "acceso" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_alt_grado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_grado_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_alt_grado_tipo" (
  "id" int4 NOT NULL,
  "grado" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_alt_habla
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_habla";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_alt_habla" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_alt_habla_id_seq'::regclass),
  "estudiante_inscripcion_socioeconomico_alt_habla_tipo_id" int4,
  "estudiante_inscripcion_socioeconomico_alternativa_id" int4
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_alt_habla_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_habla_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_alt_habla_tipo" (
  "id" int4 NOT NULL,
  "habla" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_alt_modalidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_modalidad_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_alt_modalidad_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_alt_modalidad_tipo_id_seq'::regclass),
  "modalidad" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_alt_ocupacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_ocupacion";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_alt_ocupacion" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_alt_ocupacion_id_seq'::regclass),
  "estudiante_inscripcion_socioeconomico_alt_ocupacion_tipo_id" int2,
  "estudiante_inscripcion_socioeconomico_alternativa_id" int4
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_alt_ocupacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_ocupacion_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_alt_ocupacion_tipo" (
  "id" int4 NOT NULL,
  "ocupacion" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_alt_transporte
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_transporte";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_alt_transporte" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_alt_transporte_id_seq'::regclass),
  "estudiante_inscripcion_socioeconomico_alt_transporte_tipo_id" int2,
  "estudiante_inscripcion_socioeconomico_alternativa_id" int4
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_alt_transporte_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alt_transporte_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_alt_transporte_tipo" (
  "id" int4 NOT NULL,
  "transporte" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_alternativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_alternativa";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_alternativa" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_alternativa_id_seq'::regclass),
  "estudiante_inscripcion_id" int4,
  "seccionii_hijos" int4,
  "seccionii_esserviciomilitar" bool,
  "seccionii_esserviciomilitar_cea" bool,
  "seccioniii_localidad_tipo_id" int4,
  "seccioniii_zona" varchar(150) COLLATE "pg_catalog"."default",
  "seccioniii_avenida" varchar(150) COLLATE "pg_catalog"."default",
  "seccioniii_numero" int4,
  "seccioniii_telefonofijo" varchar(13) COLLATE "pg_catalog"."default",
  "seccioniii_telefonocelular" varchar(13) COLLATE "pg_catalog"."default",
  "seccioniv_escarnet_discapacidad" bool,
  "seccioniv_numero_carnet_discapacidad" varchar(15) COLLATE "pg_catalog"."default",
  "seccioniv_discapacitad_tipo_id" int2,
  "seccioniv_grado_tipo_id" int2,
  "seccioniv_carnet_ibc" bool,
  "seccioniv_numero_carnet_ibc" varchar(15) COLLATE "pg_catalog"."default",
  "seccioniv__escegueratotal" bool,
  "seccionv_estudiante_esnacionoriginaria" bool,
  "seccionv_estudiante_esocupacion" bool,
  "seccionv_estudiante_esseguro_salud" bool,
  "seccionv_estudiante_seguro_salud_donde" varchar(50) COLLATE "pg_catalog"."default",
  "seccionv_estudiante_grupo_sanguineo_tipo_id" int2,
  "seccionv_estudiante_demora_llegar_centro_horas" int2,
  "seccionv_estudiante_demora_llegar_centro_minutos" int2,
  "seccionvi_estudiante_porque_interrupcionservicios" varchar(50) COLLATE "pg_catalog"."default",
  "lugar" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha" date NOT NULL DEFAULT now(),
  "fecha_registro" timestamp(6) NOT NULL DEFAULT now(),
  "fecha_modificacion" timestamp(6),
  "seccionv_estudiante_nacionoriginaria_tipo_id" int2,
  "seccionii_unidad_militar_tipo_id" int2,
  "seccionii_recinto_penitenciario_tipo_id" int2,
  "seccionii_educacion_diversa_tipo_id" int2,
  "seccionvi_modalidad_tipo_id" int2,
  "seccionv_otro_trabajo" varchar(200) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_actividad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_actividad_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_actividad_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_actividad_tipo_id_seq'::regclass),
  "actividad" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_aguaproviene_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_aguaproviene_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_aguaproviene_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_aguaproviene_t_id_seq'::regclass),
  "guaproviene" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_cant_centrosalud_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_cant_centrosalud_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_cant_centrosalud_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_cant_centrosal_id_seq'::regclass),
  "cant_centrosalud" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_desague_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_desague_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_desague_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_desague_tipo_id_seq'::regclass),
  "desague" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_discapacidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_discapacidad_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_discapacidad_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_discapacidad_t_id_seq'::regclass),
  "discapacitad_tipo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_est_discapacidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_est_discapacidad_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_est_discapacidad_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_est_discapacid_id_seq'::regclass),
  "discapacidad_estudiante_tipo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_frec_internet_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_frec_internet_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_frec_internet_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_frec_internet__id_seq'::regclass),
  "internet" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_habla_frec
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_habla_frec";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_habla_frec" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_habla_frec_id_seq'::regclass),
  "estudiante_inscripcion_socioeconomico_reg_habla_frec_tipo_id" int4,
  "estudiante_inscripcion_socioeconomico_regular_id" int4 NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) NOT NULL DEFAULT now(),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_internet
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_internet";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_internet" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_internet_id_seq'::regclass),
  "estudiante_inscripcion_socioeconomico_reg_internet_tipo_id" int4,
  "estudiante_inscripcion_socioeconomico_regular_id" int4 NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) NOT NULL DEFAULT now(),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_internet_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_internet_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_internet_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_internet_tipo_id_seq'::regclass),
  "accesointernet_tipo" varchar(50) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_llega_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_llega_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_llega_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_llega_tipo_id_seq'::regclass),
  "llega" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_nacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_nacion";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_nacion" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_nacion_id_seq'::regclass),
  "nacion_originaria_tipo_id" int4 NOT NULL,
  "estudiante_inscripcion_socioeconomico_regular_id" int4 NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) NOT NULL DEFAULT now(),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_reg_tiempotrans_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_reg_tiempotrans_tipo";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_reg_tiempotrans_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_reg_tiempotrans_ti_id_seq'::regclass),
  "tiempo_transporte" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_inscripcion_socioeconomico_regular
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_inscripcion_socioeconomico_regular";
CREATE TABLE "public"."estudiante_inscripcion_socioeconomico_regular" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_inscripcion_socioeconomico_regular_id_seq'::regclass),
  "estudiante_inscripcion_id" int4,
  "seccioniv_localidad_tipo_id" int4,
  "seccioniv_zona" varchar(150) COLLATE "pg_catalog"."default",
  "seccioniv_avenida" varchar(150) COLLATE "pg_catalog"."default",
  "seccioniv_numero" int4,
  "seccionv_habla_ninez_tipo_id" int2,
  "seccionv_estudiante_escentro_salud" bool,
  "seccionv_cant_centrosalud_tipo_id" int2,
  "seccionv_estudiante_esdiscapacidad_sensorial_comunicacion" bool,
  "seccionv_estudiante_esdiscapacidad_motriz" bool,
  "seccionv_estudiante_esdiscapacidad_mental" bool,
  "seccionv_estudiante_discapacidad_otro" varchar(60) COLLATE "pg_catalog"."default",
  "seccionv_discapacidad_tipo_id" int2,
  "seccionv_aguaproviene_tipo_id" int2,
  "seccionv_estudiante_es_energiaelectrica" bool,
  "seccionv_desague_tipo_id" int2,
  "seccionv_actividad_tipo_id" int2,
  "seccionv_estudiante_cuantosdiastrabajo" int4,
  "seccionv_estudiante_espago_trabajorealizado" bool,
  "seccionv_frec_internet_tipo_id" int4,
  "seccionv_llega_tipo_id" int4,
  "seccionv_tiempotrans_tipo_id" int4,
  "lugar" varchar(130) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha" date NOT NULL DEFAULT now(),
  "fecha_registro" timestamp(6) NOT NULL DEFAULT now(),
  "fecha_modificacion" timestamp(6),
  "seccioniv_telefonocelular" varchar(30) COLLATE "pg_catalog"."default",
  "seccionv_estudiante_esdiscapacidad_tipo_id" int4,
  "registro_finalizado" int4 DEFAULT 0,
  "seccioniv_desc_localidad" varchar(125) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_nota
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_nota";
CREATE TABLE "public"."estudiante_nota" (
  "id" int8 NOT NULL,
  "nota_tipo_id" int2 NOT NULL,
  "estudiante_asignatura_id" int4 NOT NULL,
  "nota_cuantitativa" int2 NOT NULL DEFAULT 0,
  "nota_cualitativa" varchar(400) COLLATE "pg_catalog"."default",
  "recomendacion" varchar(255) COLLATE "pg_catalog"."default",
  "usuario_id" int4 NOT NULL DEFAULT 0,
  "fecha_registro" date DEFAULT now(),
  "fecha_modificacion" date,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "persona_inscripcion_id" int4
)
;

-- ----------------------------
-- Table structure for estudiante_nota_cualitativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_nota_cualitativa";
CREATE TABLE "public"."estudiante_nota_cualitativa" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_nota_cualitativa_id_seq'::regclass),
  "nota_tipo_id" int2 NOT NULL,
  "estudiante_inscripcion_id" int4 NOT NULL,
  "nota_cuantitativa" int2 NOT NULL DEFAULT 0,
  "nota_cualitativa" varchar(600) COLLATE "pg_catalog"."default",
  "recomendacion" varchar(255) COLLATE "pg_catalog"."default",
  "usuario_id" int4 NOT NULL DEFAULT 0,
  "fecha_registro" date DEFAULT now(),
  "fecha_modificacion" date,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_nota_solicitud
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_nota_solicitud";
CREATE TABLE "public"."estudiante_nota_solicitud" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_nota_solicitud_id_seq'::regclass),
  "usuario_id" int4 NOT NULL,
  "remitente" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "receptor" varchar(100) COLLATE "pg_catalog"."default",
  "fecha" date NOT NULL,
  "hora" time(6) NOT NULL,
  "estudiante_inscripcion_id" int4 NOT NULL,
  "detalle" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "motivo" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "estado" int2 NOT NULL,
  "respuesta" varchar(300) COLLATE "pg_catalog"."default",
  "tipo" int2,
  "institucioneducativa_id" int4,
  "gestion_tipo_id" int4,
  "usuario_id_resp" int4,
  "fecha_resp" date,
  "departamento_tipo_id" int4
)
;
COMMENT ON COLUMN "public"."estudiante_nota_solicitud"."estado" IS '1: Enviado  2: Aceptado  3: rechazado';
COMMENT ON COLUMN "public"."estudiante_nota_solicitud"."tipo" IS '1: Modificacion  2: Adicion';

-- ----------------------------
-- Table structure for estudiante_nota_solicitud_detalle
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_nota_solicitud_detalle";
CREATE TABLE "public"."estudiante_nota_solicitud_detalle" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_nota_solicitud_detalle_id_seq'::regclass),
  "estudiante_nota_id" int4,
  "asignatura" varchar(255) COLLATE "pg_catalog"."default",
  "periodo" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "nota_cuantitativa_prev" int2,
  "nota_cuantitativa_new" int2,
  "nota_cualitativa_prev" varchar(400) COLLATE "pg_catalog"."default",
  "nota_cualitativa_new" varchar(400) COLLATE "pg_catalog"."default",
  "valoracion_tipo" varchar(70) COLLATE "pg_catalog"."default",
  "estudiante_nota_solicitud_id" int4,
  "nota_tipo_id" int2,
  "estudiante_asignatura_id" int4
)
;
COMMENT ON COLUMN "public"."estudiante_nota_solicitud_detalle"."valoracion_tipo" IS 'cuantitativa, cualitativa_inicial , cualitativa_primaria_secundaria';

-- ----------------------------
-- Table structure for estudiante_talento
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_talento";
CREATE TABLE "public"."estudiante_talento" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_talento_id_seq'::regclass),
  "estudiante_id" int4 NOT NULL,
  "acelera" bool,
  "talento_tipo" varchar(50) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) NOT NULL,
  "fecha_modificacion" timestamp(6),
  "usuario_registro_id" int4 NOT NULL,
  "usuario_modificacion_id" int4,
  "institucioneducativa_id" int4,
  "informe" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiante_trabajo_remuneracion
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiante_trabajo_remuneracion";
CREATE TABLE "public"."estudiante_trabajo_remuneracion" (
  "id" int4 NOT NULL DEFAULT nextval('estudiante_trabajo_remuneracion_id_seq'::regclass),
  "estudiante_inscripcion_id" int4,
  "sie" varchar(255) COLLATE "pg_catalog"."default",
  "nivel" int4,
  "grado" int2,
  "paralelo" int2,
  "turno" int4,
  "gestion" int2,
  "ocupacion" int2,
  "ocupacion_otro" varchar(255) COLLATE "pg_catalog"."default",
  "remuneracion" bool,
  "especificacion" text COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6),
  "usuario_id" int4,
  "traslado" bool
)
;

-- ----------------------------
-- Table structure for estudianteasignatura_estado
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudianteasignatura_estado";
CREATE TABLE "public"."estudianteasignatura_estado" (
  "id" int4 NOT NULL,
  "estado" varchar(50) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for estudiantenoacredidato
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudiantenoacredidato";
CREATE TABLE "public"."estudiantenoacredidato" (
  "id" int4 NOT NULL DEFAULT nextval('estudiantenoacredidato_id_seq'::regclass),
  "carnet_identidad" varchar(20) COLLATE "pg_catalog"."default",
  "paterno" varchar(45) COLLATE "pg_catalog"."default",
  "materno" varchar(45) COLLATE "pg_catalog"."default",
  "nombre" varchar(45) COLLATE "pg_catalog"."default",
  "genero_tipo_id" int2,
  "fecha_nacimiento" date,
  "fecha_modificacion" date,
  "correo" varchar(40) COLLATE "pg_catalog"."default",
  "institucioneducativanoacreditada_id" int4 NOT NULL,
  "gestion" int2,
  "nivel_id" int2,
  "grado_id" int2,
  "paralelo" int2,
  "turno_id" int2
)
;

-- ----------------------------
-- Table structure for etapa_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."etapa_tipo";
CREATE TABLE "public"."etapa_tipo" (
  "id" int4 NOT NULL,
  "etapa" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for etnia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."etnia_tipo";
CREATE TABLE "public"."etnia_tipo" (
  "id" int2 NOT NULL,
  "etnia" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for execute_table
-- ----------------------------
DROP TABLE IF EXISTS "public"."execute_table";
CREATE TABLE "public"."execute_table" (
  "cod1" varchar(5000) COLLATE "pg_catalog"."default",
  "id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for faea2014
-- ----------------------------
DROP TABLE IF EXISTS "public"."faea2014";
CREATE TABLE "public"."faea2014" (
  "cod_ue" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "dpto" varchar(255) COLLATE "pg_catalog"."default",
  "distrito" varchar(255) COLLATE "pg_catalog"."default",
  "desc_ue" varchar(255) COLLATE "pg_catalog"."default",
  "matricula" varchar(255) COLLATE "pg_catalog"."default",
  "categoria" varchar(255) COLLATE "pg_catalog"."default",
  "monto" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for fase_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."fase_tipo";
CREATE TABLE "public"."fase_tipo" (
  "id" int2 NOT NULL,
  "fase" varchar(45) COLLATE "pg_catalog"."default",
  "obs" varchar(45) COLLATE "pg_catalog"."default",
  "esactivo_primaria" bool,
  "esactivo_secundaria" bool
)
;

-- ----------------------------
-- Table structure for feria_bk_proy
-- ----------------------------
DROP TABLE IF EXISTS "public"."feria_bk_proy";
CREATE TABLE "public"."feria_bk_proy" (
  "id_proy" int4 NOT NULL,
  "titulo_proy" varchar(255) COLLATE "pg_catalog"."default",
  "resumen_proy" text COLLATE "pg_catalog"."default",
  "tipo_proy" varchar(20) COLLATE "pg_catalog"."default",
  "archivo_proy" varchar(255) COLLATE "pg_catalog"."default",
  "est1" varchar(50) COLLATE "pg_catalog"."default",
  "est2" varchar(50) COLLATE "pg_catalog"."default",
  "est3" varchar(50) COLLATE "pg_catalog"."default",
  "sie_ue" varchar(255) COLLATE "pg_catalog"."default",
  "tutor_proy" varchar(20) COLLATE "pg_catalog"."default",
  "nivel_proy" varchar(10) COLLATE "pg_catalog"."default",
  "fecha_proy" varchar(15) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for fin_des_escolar_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."fin_des_escolar_tipo";
CREATE TABLE "public"."fin_des_escolar_tipo" (
  "id" int4 NOT NULL,
  "fin_des_escolar" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for financiamiento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."financiamiento_tipo";
CREATE TABLE "public"."financiamiento_tipo" (
  "id" int2 NOT NULL,
  "financiamiento" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for flujo_proceso
-- ----------------------------
DROP TABLE IF EXISTS "public"."flujo_proceso";
CREATE TABLE "public"."flujo_proceso" (
  "id" int4 NOT NULL DEFAULT nextval('flujo_proceso_id_seq'::regclass),
  "flujo_tipo_id" int2 NOT NULL,
  "proceso_id" int2 NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "rol_tipo_id" int2,
  "orden" int2,
  "es_evaluacion" bool,
  "plazo" int2,
  "wf_asignacion_tarea_tipo_id" int4,
  "tarea_ant_id" int4,
  "tarea_sig_id" int4,
  "variable_evaluacion" varchar(50) COLLATE "pg_catalog"."aa_DJ.utf8",
  "ruta_formulario" varchar(100) COLLATE "pg_catalog"."default",
  "ruta_reporte" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for flujo_proceso_detalle
-- ----------------------------
DROP TABLE IF EXISTS "public"."flujo_proceso_detalle";
CREATE TABLE "public"."flujo_proceso_detalle" (
  "id" int4 NOT NULL,
  "flujo_proceso_id_sig" int2,
  "flujo_proceso_id_ant" int2,
  "obs" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for flujo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."flujo_tipo";
CREATE TABLE "public"."flujo_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('flujo_tipo_id_seq'::regclass),
  "flujo" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for formacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."formacion_tipo";
CREATE TABLE "public"."formacion_tipo" (
  "id" int2 NOT NULL,
  "formacion" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for formulario_rue
-- ----------------------------
DROP TABLE IF EXISTS "public"."formulario_rue";
CREATE TABLE "public"."formulario_rue" (
  "id" int4 NOT NULL DEFAULT nextval('formulario_rue_seq'::regclass),
  "institucioneducativa_id" int4,
  "operacion_rue" "public"."operacion_rue_enum",
  "fecha_registro" date DEFAULT now()
)
;

-- ----------------------------
-- Table structure for frecuencia_trabajo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."frecuencia_trabajo_tipo";
CREATE TABLE "public"."frecuencia_trabajo_tipo" (
  "id" int4 NOT NULL,
  "descripcion_frecuencia_trabajo" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for frecuencia_uso_internet_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."frecuencia_uso_internet_tipo";
CREATE TABLE "public"."frecuencia_uso_internet_tipo" (
  "id" int4 NOT NULL,
  "descripcion_frecuencia_internet" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for fuerza_militar_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."fuerza_militar_tipo";
CREATE TABLE "public"."fuerza_militar_tipo" (
  "id" int4 NOT NULL,
  "fuerza_militar" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for gamlp_estudiante_mochila
-- ----------------------------
DROP TABLE IF EXISTS "public"."gamlp_estudiante_mochila";
CREATE TABLE "public"."gamlp_estudiante_mochila" (
  "id" int4 NOT NULL DEFAULT nextval('gamlp_estudiante_mochila_id_seq'::regclass),
  "estudiante_id" int4,
  "gestion_tipo_id" int4,
  "institucioneducativa_curso_id" int4,
  "institucioneducativa_id" int4,
  "es_entregado" bool,
  "fecha_entrega" date,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0),
  "material" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for gamlp_maestro_mochila
-- ----------------------------
DROP TABLE IF EXISTS "public"."gamlp_maestro_mochila";
CREATE TABLE "public"."gamlp_maestro_mochila" (
  "id" int4 NOT NULL DEFAULT nextval('gamlp_maestro_mochila_id_seq'::regclass),
  "persona_id" int4,
  "gestion_tipo_id" int4,
  "institucioneducativa_id" int4,
  "es_entregado" bool,
  "fecha_entrega" date,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0),
  "material" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for genero_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."genero_tipo";
CREATE TABLE "public"."genero_tipo" (
  "id" int4 NOT NULL,
  "genero" varchar(45) COLLATE "pg_catalog"."default",
  "obs" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for gestion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."gestion_tipo";
CREATE TABLE "public"."gestion_tipo" (
  "id" int4 NOT NULL,
  "gestion" varchar(45) COLLATE "pg_catalog"."default",
  "obs" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for gis_bolivia_buff
-- ----------------------------
DROP TABLE IF EXISTS "public"."gis_bolivia_buff";
CREATE TABLE "public"."gis_bolivia_buff" (
  "gid" int4 NOT NULL DEFAULT nextval('gis_bolivia_buff_gid_seq'::regclass),
  "objectid" int8,
  "id" int8,
  "shape_leng" numeric,
  "shape_area" numeric,
  "geom" "public"."geometry"
)
;

-- ----------------------------
-- Table structure for grado_curso_control
-- ----------------------------
DROP TABLE IF EXISTS "public"."grado_curso_control";
CREATE TABLE "public"."grado_curso_control" (
  "nivel_id" int2 NOT NULL,
  "ciclo_id" int2 NOT NULL,
  "id_grado" int2 NOT NULL,
  "desc_grado" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "edad_minima" numeric(3),
  "edad_maxima" numeric(3)
)
;

-- ----------------------------
-- Table structure for grado_discapacidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."grado_discapacidad_tipo";
CREATE TABLE "public"."grado_discapacidad_tipo" (
  "id" int2 NOT NULL,
  "grado_discapacidad" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "es_vigente" bool
)
;

-- ----------------------------
-- Table structure for grado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."grado_tipo";
CREATE TABLE "public"."grado_tipo" (
  "id" int2 NOT NULL,
  "grado" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "edad_minima" int2,
  "edad_maxima" int2,
  "id_seguimiento" int2 NOT NULL
)
;

-- ----------------------------
-- Table structure for grupo_sanguineo
-- ----------------------------
DROP TABLE IF EXISTS "public"."grupo_sanguineo";
CREATE TABLE "public"."grupo_sanguineo" (
  "id" int4 NOT NULL DEFAULT nextval('grupo_sanguineo_id_seq'::regclass),
  "grupo_sanguineo" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;

-- ----------------------------
-- Table structure for gruposanguineo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."gruposanguineo_tipo";
CREATE TABLE "public"."gruposanguineo_tipo" (
  "id_grupo_sanguineo" int4 NOT NULL DEFAULT nextval('gruposanguineo_tipo_id_grupo_sanguineo_seq'::regclass),
  "desc_idioma" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;

-- ----------------------------
-- Table structure for habla_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."habla_tipo";
CREATE TABLE "public"."habla_tipo" (
  "id" int4 NOT NULL,
  "habla_tipo" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for homologacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."homologacion";
CREATE TABLE "public"."homologacion" (
  "id" int2 NOT NULL DEFAULT nextval('homologacion_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "nombre_institucioneducativa" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_id" int4 NOT NULL,
  "rudeal" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "nivel_id" int4 NOT NULL,
  "ciclo_id" int4 NOT NULL,
  "grado_id" int4 NOT NULL,
  "carga_horaria" int4 NOT NULL,
  "nro_certificado" varchar(255) COLLATE "pg_catalog"."default",
  "estudiante_id" int4 NOT NULL,
  "usuario_id" int4 NOT NULL,
  "fecha_reg" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for idioma_materno
-- ----------------------------
DROP TABLE IF EXISTS "public"."idioma_materno";
CREATE TABLE "public"."idioma_materno" (
  "id" int4 NOT NULL,
  "idioma_materno" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "idiomaorigen_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for idioma_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."idioma_tipo";
CREATE TABLE "public"."idioma_tipo" (
  "id" int2 NOT NULL,
  "idioma" varchar(45) COLLATE "pg_catalog"."default",
  "obs" int2,
  "es_vigente" bool
)
;

-- ----------------------------
-- Table structure for idiomaconoce_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."idiomaconoce_tipo";
CREATE TABLE "public"."idiomaconoce_tipo" (
  "id" int2 NOT NULL,
  "idiomaconoce" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for idiomaorginario_traduccion
-- ----------------------------
DROP TABLE IF EXISTS "public"."idiomaorginario_traduccion";
CREATE TABLE "public"."idiomaorginario_traduccion" (
  "id" int2 NOT NULL,
  "titulocastellano" varchar(120) COLLATE "pg_catalog"."default",
  "titulooriginario" varchar(200) COLLATE "pg_catalog"."default",
  "idiomaoriginario_tipo_id" int2 NOT NULL
)
;

-- ----------------------------
-- Table structure for idiomaorigen_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."idiomaorigen_tipo";
CREATE TABLE "public"."idiomaorigen_tipo" (
  "id" int2 NOT NULL,
  "idiomaorigen" varchar(15) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for idiomaoriginario_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."idiomaoriginario_tipo";
CREATE TABLE "public"."idiomaoriginario_tipo" (
  "id" int2 NOT NULL,
  "idioma" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "nivel_tipo_id" int2 NOT NULL,
  "ciclo_tipo_id" int2 NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for imagen_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."imagen_tipo";
CREATE TABLE "public"."imagen_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('imagen_tipo_id_seq'::regclass),
  "imagen" varchar(20) COLLATE "pg_catalog"."default",
  "desc_abreviada" varchar(4) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for imagenes_institucioneducativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."imagenes_institucioneducativa";
CREATE TABLE "public"."imagenes_institucioneducativa" (
  "id" int4 NOT NULL DEFAULT nextval('imagenes_institucioneducativa_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "nombre_archivo" varchar(30) COLLATE "pg_catalog"."default",
  "imagen_tipo_id" int2,
  "descripcion" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_acceso_edificacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_acceso_edificacion";
CREATE TABLE "public"."infra_acceso_edificacion" (
  "id" int4 NOT NULL DEFAULT nextval('infra_acceso_edificacion_id_seq'::regclass),
  "infra_predio_id" int4,
  "ascensor" bool,
  "acceso_universal" bool,
  "conoce_normativa" bool
)
;

-- ----------------------------
-- Table structure for infra_acceso_edificacion_senialetica
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_acceso_edificacion_senialetica";
CREATE TABLE "public"."infra_acceso_edificacion_senialetica" (
  "id" int4 NOT NULL DEFAULT nextval('infra_acceso_edificacion_senialetica_id_seq'::regclass),
  "infra_acceso_medio_id" int4,
  "infra_senialetica_tipo_id" int4,
  "idioma_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_acceso_medio
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_acceso_medio";
CREATE TABLE "public"."infra_acceso_medio" (
  "id" int4 NOT NULL DEFAULT nextval('infra_acceso_medio_id_seq'::regclass),
  "infra_acceso_edificacion_id" int4,
  "infra_medio_acceso_tipo_id" int4,
  "infra_ubicacion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_acceso_medio_grada_rampa
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_acceso_medio_grada_rampa";
CREATE TABLE "public"."infra_acceso_medio_grada_rampa" (
  "id" int4 NOT NULL DEFAULT nextval('infra_acceso_medio_grada_rampa_id_seq'::regclass),
  "infra_acceso_medio_id" int4,
  "infra_grada_rampa_id" int4
)
;

-- ----------------------------
-- Table structure for infra_acceso_predio_transporte
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_acceso_predio_transporte";
CREATE TABLE "public"."infra_acceso_predio_transporte" (
  "id" int4 NOT NULL DEFAULT nextval('infra_acceso_predio_transporte_id_seq'::regclass),
  "infra_predio_id" int4,
  "medio_transporte_tipo_id" int4 NOT NULL,
  "dias" int4,
  "horas" int4,
  "minutos" int4,
  "costo" float8,
  "infra_acceso_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_acceso_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_acceso_tipo";
CREATE TABLE "public"."infra_acceso_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_acceso_tipo_id_seq'::regclass),
  "acceso" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0),
  "infra_acceso_predio_id" int4
)
;

-- ----------------------------
-- Table structure for infra_agua_uso_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_agua_uso_tipo";
CREATE TABLE "public"."infra_agua_uso_tipo" (
  "id" int4 NOT NULL,
  "agua_uso" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_ambiente
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_ambiente";
CREATE TABLE "public"."infra_ambiente" (
  "id" int4 NOT NULL DEFAULT nextval('infra_ambiente_id_seq'::regclass),
  "infra_predio_id" int4,
  "cantidad" int2,
  "capacidad" int4,
  "area" int4,
  "largo" int2,
  "ancho" int4,
  "es_utilizado" bool,
  "es_universal" bool,
  "infra_ambiente_tipo_id" int4,
  "es_servicio" bool,
  "infra_estado_tipo_id" int4,
  "servicio_electrico" bool,
  "servicio_agua" bool,
  "infra_bloque_id" int4,
  "infra_piso_id" int4
)
;

-- ----------------------------
-- Table structure for infra_ambiente_categoria_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_ambiente_categoria_tipo";
CREATE TABLE "public"."infra_ambiente_categoria_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_ambiente_categoria_tipo_id_seq'::regclass),
  "ambiente_categoria" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0),
  "es_vigente" bool
)
;

-- ----------------------------
-- Table structure for infra_ambiente_condicion
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_ambiente_condicion";
CREATE TABLE "public"."infra_ambiente_condicion" (
  "id" int4 NOT NULL DEFAULT nextval('infra_ambiente_condicion_id_seq'::regclass),
  "infra_condicion_id" int4,
  "infra_ambiente_id" int4
)
;

-- ----------------------------
-- Table structure for infra_ambiente_destinado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_ambiente_destinado_tipo";
CREATE TABLE "public"."infra_ambiente_destinado_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_ambiente_destinado_tipo_id_seq'::regclass),
  "destinado" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_ambiente_especialidad
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_ambiente_especialidad";
CREATE TABLE "public"."infra_ambiente_especialidad" (
  "id" int4 NOT NULL DEFAULT nextval('infra_ambiente_especialidad_id_seq'::regclass),
  "infra_pedagogico_id" int4,
  "especialidad_tecnico_humanistico_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_ambiente_mobiliario
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_ambiente_mobiliario";
CREATE TABLE "public"."infra_ambiente_mobiliario" (
  "id" int4 NOT NULL DEFAULT nextval('infra_ambiente_mobiliario_id_seq'::regclass),
  "infra_ambiente_id" int4,
  "infra_mobiliario_tipo_id" int4,
  "cantidad" int4,
  "infra_estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_ambiente_predio_institucioneducativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_ambiente_predio_institucioneducativa";
CREATE TABLE "public"."infra_ambiente_predio_institucioneducativa" (
  "id" int4 NOT NULL DEFAULT nextval('infra_ambiente_predio_institucioneducativa_id_seq'::regclass),
  "infra_ambiente_id" int4,
  "infra_predio_institucioneducativa" int4,
  "fecha_registro" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_modificacion" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_ambiente_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_ambiente_tipo";
CREATE TABLE "public"."infra_ambiente_tipo" (
  "id" int4 NOT NULL,
  "ambiente" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0),
  "infra_ambiente_categoria_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_amurallado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_amurallado_tipo";
CREATE TABLE "public"."infra_amurallado_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_amurallado_tipo_id_seq'::regclass),
  "amurallado" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_area_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_area_tipo";
CREATE TABLE "public"."infra_area_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_area_tipo_id_seq'::regclass),
  "area" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_artefacto_banio_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_artefacto_banio_tipo";
CREATE TABLE "public"."infra_artefacto_banio_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_artefacto_banio_tipo_id_seq'::regclass),
  "artefacto_banio" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_bateria_artefacto_banio
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_bateria_artefacto_banio";
CREATE TABLE "public"."infra_bateria_artefacto_banio" (
  "id" int4 NOT NULL DEFAULT nextval('infra_bateria_artefacto_banio_id_seq'::regclass),
  "infra_artefacto_banio_tipo_id" int4,
  "infra_ambiente_id" int4,
  "cantidad_funciona" int4,
  "cantidad_no_funciona" int4,
  "servicio_saneamiento" bool
)
;

-- ----------------------------
-- Table structure for infra_bloque
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_bloque";
CREATE TABLE "public"."infra_bloque" (
  "id" int4 NOT NULL DEFAULT nextval('infra_bloque_id_seq'::regclass),
  "infra_predio_id" int4,
  "bloque" varchar(255) COLLATE "pg_catalog"."default",
  "area_aprox" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_caracteristica_construccion
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_caracteristica_construccion";
CREATE TABLE "public"."infra_caracteristica_construccion" (
  "id" int4 NOT NULL DEFAULT nextval('infra_caracteristica_construccion_id_seq'::regclass),
  "infra_predio_id" int4,
  "infra_propiedad_tipo_id" int4,
  "razon_social" varchar COLLATE "pg_catalog"."default",
  "otro_documentacion" varchar COLLATE "pg_catalog"."default",
  "infra_documentacion_tipo_id" int4,
  "folio" varchar COLLATE "pg_catalog"."default",
  "partida" varchar COLLATE "pg_catalog"."default",
  "plano_aprobado" bool,
  "infra_edificacion_tipo_id" int4,
  "plano" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_caracteristica_edificacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_caracteristica_edificacion";
CREATE TABLE "public"."infra_caracteristica_edificacion" (
  "id" int4 NOT NULL DEFAULT nextval('infra_caracteristica_edificacion_id_seq'::regclass),
  "infra_edificacion_tipo_id" int4,
  "infra_predio_id" int4
)
;

-- ----------------------------
-- Table structure for infra_caracteristica_terreno
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_caracteristica_terreno";
CREATE TABLE "public"."infra_caracteristica_terreno" (
  "id" int4 NOT NULL DEFAULT nextval('infra_caracteristica_terreno_id_seq'::regclass),
  "area_total" int4,
  "area_construida" int4,
  "topografia_tipo_id" int4,
  "amurallado_tipo_id" int4,
  "infra_predio_id" int4
)
;

-- ----------------------------
-- Table structure for infra_caracteristica_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_caracteristica_tipo";
CREATE TABLE "public"."infra_caracteristica_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_caracteristica_tipo_id_seq'::regclass),
  "caracteristica" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_modificacion" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool
)
;

-- ----------------------------
-- Table structure for infra_caracteristicas_espacio
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_caracteristicas_espacio";
CREATE TABLE "public"."infra_caracteristicas_espacio" (
  "id" int4 NOT NULL DEFAULT nextval('infra_caracteristicas_espacio_id_seq'::regclass),
  "infra_caracteristica_terreno_id" int4,
  "infra_espacio_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_condicion
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_condicion";
CREATE TABLE "public"."infra_condicion" (
  "id" int4 NOT NULL DEFAULT nextval('infra_condicion_id_seq'::regclass),
  "infra_material_tipo_id" int4,
  "infra_caracteristica_tipo_id" int4,
  "infra_pregunta_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_construccion
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_construccion";
CREATE TABLE "public"."infra_construccion" (
  "id" int4 NOT NULL DEFAULT nextval('infra_construccion_id_seq'::regclass),
  "infra_gestion_construccion_tipo_id" int4,
  "infra_entidad_ejecutora_id" int4,
  "gestion" int4,
  "discapacidad" bool,
  "detalle" varchar(255) COLLATE "pg_catalog"."default",
  "infra_caracteristica_construccion_id" int4
)
;

-- ----------------------------
-- Table structure for infra_disponibilidad_servicio_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_disponibilidad_servicio_tipo";
CREATE TABLE "public"."infra_disponibilidad_servicio_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_disponibilidad_servicio_tipo_id_seq'::regclass),
  "disponibilidad_servicio" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_documentacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_documentacion_tipo";
CREATE TABLE "public"."infra_documentacion_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_documentacion_tipo_id_seq'::regclass),
  "documentacion" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_edificacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_edificacion_tipo";
CREATE TABLE "public"."infra_edificacion_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_edificacion_tipo_id_seq'::regclass),
  "edificacion" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_entidad_ejecutora_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_entidad_ejecutora_tipo";
CREATE TABLE "public"."infra_entidad_ejecutora_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_entidad_ejecutora_tipo_id_seq'::regclass),
  "entidad_ejecutora" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_equipamiento_brigada_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_equipamiento_brigada_tipo";
CREATE TABLE "public"."infra_equipamiento_brigada_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_equipamiento_brigada_tipo_id_seq'::regclass),
  "brigada" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_equipamiento_categoria_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_equipamiento_categoria_tipo";
CREATE TABLE "public"."infra_equipamiento_categoria_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_equipamiento_categoria_tipo_id_seq'::regclass),
  "equipamiento_categoria" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_equipamiento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_equipamiento_tipo";
CREATE TABLE "public"."infra_equipamiento_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_equipamiento_tipo_id_seq'::regclass),
  "equipamiento" varchar COLLATE "pg_catalog"."default",
  "infra_equipamiento_categoria_tipo" int4,
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_espacios_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_espacios_tipo";
CREATE TABLE "public"."infra_espacios_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_espacios_tipo_id_seq'::regclass),
  "espacio" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_estado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_estado_tipo";
CREATE TABLE "public"."infra_estado_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_estado_tipo_id_seq'::regclass),
  "estado" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_evacuacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_evacuacion_tipo";
CREATE TABLE "public"."infra_evacuacion_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_evacuacion_tipo_id_seq'::regclass),
  "evacuacion" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_fuente_energia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_fuente_energia_tipo";
CREATE TABLE "public"."infra_fuente_energia_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_fuente_energia_tipo_id_seq'::regclass),
  "fuente_energia" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_gestion_construccion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_gestion_construccion_tipo";
CREATE TABLE "public"."infra_gestion_construccion_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_gestion_construccion_tipo_id_seq'::regclass),
  "gestion_construccion" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_grada_rampa_cuenta_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_grada_rampa_cuenta_tipo";
CREATE TABLE "public"."infra_grada_rampa_cuenta_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_grada_rampa_cuenta_tipo_id_seq'::regclass),
  "caracteristica_grada" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_hecho_delictivo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_hecho_delictivo";
CREATE TABLE "public"."infra_hecho_delictivo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_hecho_delictivo_id_seq'::regclass),
  "infra_predio_id" int4,
  "hecho_delictivo" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_hurto_delictivo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_hurto_delictivo";
CREATE TABLE "public"."infra_hurto_delictivo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_hurto_delictivo_id_seq'::regclass),
  "infra_predio_id" int4,
  "hurto_delictivo" bool,
  "gestion_tipo_id" int4,
  "turno_tipo_id" int4,
  "ambiente" varchar(255) COLLATE "pg_catalog"."default",
  "mobiliario" varchar(255) COLLATE "pg_catalog"."default",
  "acciones" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_instalacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_instalacion_tipo";
CREATE TABLE "public"."infra_instalacion_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_instalacion_tipo_id_seq'::regclass),
  "instalacion" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_institucioneducativa_equipamiento_brigada
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_institucioneducativa_equipamiento_brigada";
CREATE TABLE "public"."infra_institucioneducativa_equipamiento_brigada" (
  "id" int4 NOT NULL DEFAULT nextval('infra_institucioneducativa_equipamiento_brigada_id_seq'::regclass),
  "infra_equipamiento_brigada_tipo_id" int4,
  "infra_institucioneducativa_prevencion_id" int4,
  "otro" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_institucioneducativa_prevencion
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_institucioneducativa_prevencion";
CREATE TABLE "public"."infra_institucioneducativa_prevencion" (
  "id" int4 NOT NULL DEFAULT nextval('infra_institucioneducativa_prevencion_id_seq'::regclass),
  "infra_predio_institucioneducativa_id" int4,
  "disponible_formulario" bool,
  "personal_capacitado" bool,
  "formulario_edan_e" bool
)
;

-- ----------------------------
-- Table structure for infra_material_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_material_tipo";
CREATE TABLE "public"."infra_material_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_material_tipo_id_seq'::regclass),
  "material" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_modificacion" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool
)
;

-- ----------------------------
-- Table structure for infra_medio_acceso_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_medio_acceso_tipo";
CREATE TABLE "public"."infra_medio_acceso_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_medio_acceso_tipo_id_seq'::regclass),
  "medio_acceso" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_medio_eliminacion_basura_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_medio_eliminacion_basura_tipo";
CREATE TABLE "public"."infra_medio_eliminacion_basura_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_medio_acceso_tipo_id_seq'::regclass),
  "medio_eliminacion_basura" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_medio_eliminacion_exc_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_medio_eliminacion_exc_tipo";
CREATE TABLE "public"."infra_medio_eliminacion_exc_tipo" (
  "id" int4 NOT NULL,
  "medio_eliminacion_exc" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_medio_suministro_agua_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_medio_suministro_agua_tipo";
CREATE TABLE "public"."infra_medio_suministro_agua_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_medio_suministro_agua_tipo_id_seq'::regclass),
  "medio_suministro_agua" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_medio_transporte_categoria_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_medio_transporte_categoria_tipo";
CREATE TABLE "public"."infra_medio_transporte_categoria_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_medio_transporte_categoria_tipo_id_seq'::regclass),
  "medio_transporte_categoria" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_medio_transporte_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_medio_transporte_tipo";
CREATE TABLE "public"."infra_medio_transporte_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_medio_transporte_tipo_id_seq'::regclass),
  "descripcion_medio_transporte" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6),
  "infra_medio_transporte_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_mobiliario_predio_institucioneducativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_mobiliario_predio_institucioneducativa";
CREATE TABLE "public"."infra_mobiliario_predio_institucioneducativa" (
  "id" int4 NOT NULL DEFAULT nextval('infra_mobiliario_predio_institucioneducativa_id_seq'::regclass),
  "infra_ambiente_mobiliario_id" int4,
  "infra_predio_institucioneducativa" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_mobiliario_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_mobiliario_tipo";
CREATE TABLE "public"."infra_mobiliario_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_mobiliario_tipo_id_seq'::regclass),
  "mobiliario" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_no_pedagogico_internado
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_no_pedagogico_internado";
CREATE TABLE "public"."infra_no_pedagogico_internado" (
  "id" int4 NOT NULL DEFAULT nextval('infra_no_pedagogico_internado_id_seq'::regclass),
  "infra_ambiente_id" int4,
  "funciona_internado" varchar(255) COLLATE "pg_catalog"."default",
  "distancia" varchar(255) COLLATE "pg_catalog"."default",
  "infra_responsable_tipo_id" int4,
  "litera" varchar(255) COLLATE "pg_catalog"."default",
  "cama" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_no_pedagogico_vivienda
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_no_pedagogico_vivienda";
CREATE TABLE "public"."infra_no_pedagogico_vivienda" (
  "id" int4 NOT NULL DEFAULT nextval('infra_no_pedagogico_vivienda_id_seq'::regclass),
  "infra_ambiente_id" int4,
  "habitante" varchar(255) COLLATE "pg_catalog"."default",
  "banio" varchar(255) COLLATE "pg_catalog"."default",
  "ducha" varchar(255) COLLATE "pg_catalog"."default",
  "cocina" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_pedagogico
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_pedagogico";
CREATE TABLE "public"."infra_pedagogico" (
  "id" int4 NOT NULL DEFAULT nextval('infra_pedagogico_id_seq'::regclass),
  "infra_area_tipo_id" int4,
  "infra_ambiente_id" int4
)
;

-- ----------------------------
-- Table structure for infra_pedagogico_recreativo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_pedagogico_recreativo";
CREATE TABLE "public"."infra_pedagogico_recreativo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_pedagogico_recreativo_id_seq'::regclass),
  "infra_ambiente_id" int4,
  "infra_destinado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_periodicidad_eliminacion_basura_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_periodicidad_eliminacion_basura_tipo";
CREATE TABLE "public"."infra_periodicidad_eliminacion_basura_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_periodicidad_eliminacion_basura_tipo_id_seq'::regclass),
  "periodicidad_eliminacion_basura" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_piso
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_piso";
CREATE TABLE "public"."infra_piso" (
  "id" int4 NOT NULL DEFAULT nextval('infra_piso_id_seq'::regclass),
  "piso" int4,
  "cantidad_ambiente_pedagogico" varchar(255) COLLATE "pg_catalog"."default",
  "cantidad_ambiente_no_pedagogico" varchar(255) COLLATE "pg_catalog"."default",
  "cantidad_banios" varchar(255) COLLATE "pg_catalog"."default",
  "total" varchar(255) COLLATE "pg_catalog"."default",
  "infra_bloque_id" int4
)
;

-- ----------------------------
-- Table structure for infra_predio
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_predio";
CREATE TABLE "public"."infra_predio" (
  "id" int4 NOT NULL DEFAULT nextval('infra_predio_id_seq'::regclass),
  "jurisdiccion_geografica_id" int4,
  "latitud_x" varchar(255) COLLATE "pg_catalog"."default",
  "longitud_y" varchar(255) COLLATE "pg_catalog"."default",
  "direccion" varchar COLLATE "pg_catalog"."default",
  "zona" varchar COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4,
  "fecha_registro" date,
  "tramo_troncal" varchar(255) COLLATE "pg_catalog"."default",
  "tramo_complementario" varchar(255) COLLATE "pg_catalog"."default",
  "tramo_vecinal" varchar(255) COLLATE "pg_catalog"."default",
  "infra_predio_tipo_id" int4,
  "descripcion" varchar(255) COLLATE "pg_catalog"."default",
  "nombre_predio" varchar(100) COLLATE "pg_catalog"."default",
  "operativo" bool
)
;

-- ----------------------------
-- Table structure for infra_predio_foto
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_predio_foto";
CREATE TABLE "public"."infra_predio_foto" (
  "id" int4 NOT NULL DEFAULT nextval('infra_predio_foto_id_seq'::regclass),
  "infra_predio_id" int4,
  "imagen" varchar COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6),
  "descripcion" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_predio_institucioneducativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_predio_institucioneducativa";
CREATE TABLE "public"."infra_predio_institucioneducativa" (
  "id" int4 NOT NULL DEFAULT nextval('infra_predio_institucioneducativa_id_seq'::regclass),
  "infra_predio_id" int4,
  "infra_tenencia_tipo_id" int4,
  "persona_id" int4,
  "bth_especialidad" bool,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "institucioneducativa_id" int4,
  "representante" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_predio_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_predio_tipo";
CREATE TABLE "public"."infra_predio_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_predio_tipo_id_seq'::regclass),
  "nivel" varchar(32) COLLATE "pg_catalog"."default",
  "es_vigente" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro2" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_pregunta_ambiente
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_pregunta_ambiente";
CREATE TABLE "public"."infra_pregunta_ambiente" (
  "id" int4 NOT NULL DEFAULT nextval('infra_pregunta_ambiente_id_seq'::regclass),
  "infra_pregunta_tipo_id" int4,
  "infra_ambiente_categoria_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_pregunta_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_pregunta_tipo";
CREATE TABLE "public"."infra_pregunta_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_pregunta_tipo_id_seq'::regclass),
  "pregunta" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_modificacion" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool
)
;

-- ----------------------------
-- Table structure for infra_prevencion_equipamiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_prevencion_equipamiento";
CREATE TABLE "public"."infra_prevencion_equipamiento" (
  "id" int4 NOT NULL DEFAULT nextval('infra_prevencion_equipamiento_id_seq'::regclass),
  "infra_equipamiento_tipo" int4,
  "infra_institucioneducativa_prevencion_id" int4,
  "funciona" int4,
  "no_funciona" int4,
  "anio_colaboracion" int4,
  "detalle" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_propiedad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_propiedad_tipo";
CREATE TABLE "public"."infra_propiedad_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_propiedad_tipo_id_seq'::regclass),
  "propiedad" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_proximo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_proximo_tipo";
CREATE TABLE "public"."infra_proximo_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_proximo_tipo_id_seq'::regclass),
  "proximo" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_purificador_agua_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_purificador_agua_tipo";
CREATE TABLE "public"."infra_purificador_agua_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_purificador_agua_tipo_id_seq'::regclass),
  "purificador_agua" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_responsable_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_responsable_tipo";
CREATE TABLE "public"."infra_responsable_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_responsable_tipo_id_seq'::regclass),
  "responsable" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_riesgo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_riesgo";
CREATE TABLE "public"."infra_riesgo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_riesgo_id_seq'::regclass),
  "infra_predio_id" int4,
  "clase_suspendida" bool,
  "infra_tiempo_suspendido_tipo_id" int4,
  "utilizado_albergue" bool,
  "cantidad_timbre_panico" int4,
  "cantidad_extintores" int4,
  "cantidad_salidas_emergencias" int4,
  "infra_evacuacion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_riesgo_evento
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_riesgo_evento";
CREATE TABLE "public"."infra_riesgo_evento" (
  "id" int4 NOT NULL DEFAULT nextval('infra_riesgo_evento_id_seq'::regclass),
  "infra_riesgo_evento_tipo_id" int4,
  "infra_riesgo_id" int4,
  "mes_inicial" varchar(255) COLLATE "pg_catalog"."default",
  "mes_final" varchar(255) COLLATE "pg_catalog"."default",
  "evento_otro" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_riesgo_evento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_riesgo_evento_tipo";
CREATE TABLE "public"."infra_riesgo_evento_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_riesgo_evento_tipo_id_seq'::regclass),
  "evento" varchar(32) COLLATE "pg_catalog"."default",
  "es_vigente" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for infra_riesgo_proximo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_riesgo_proximo";
CREATE TABLE "public"."infra_riesgo_proximo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_riesgo_proximo_id_seq'::regclass),
  "infra_riesgo_id" int4,
  "infra_proximo_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_senialetica_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_senialetica_tipo";
CREATE TABLE "public"."infra_senialetica_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_senialetica_tipo_id_seq'::regclass),
  "senialetica" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_servicio_agua
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_servicio_agua";
CREATE TABLE "public"."infra_servicio_agua" (
  "id" int4 NOT NULL DEFAULT nextval('infra_servicio_agua_id_seq'::regclass),
  "infra_predio_id" int4,
  "infra_medio_suministro_agua_id" int4,
  "tanque_almacenamiento" bool,
  "bomba_agua" bool,
  "infra_disponibilidad_servicio_tipo_id" int4,
  "infra_agua_uso_tipo_id" int4,
  "infra_purificador_agua_tipo_id" int4,
  "cantidad_ambientes_agua" int4
)
;

-- ----------------------------
-- Table structure for infra_servicio_electrico
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_servicio_electrico";
CREATE TABLE "public"."infra_servicio_electrico" (
  "id" int4 NOT NULL DEFAULT nextval('infra_servicio_electrico_id_seq'::regclass),
  "infra_predio_id" int4,
  "infra_fuente_energia_tipo_id" int4,
  "infra_instalacion_tipo_id" int4,
  "infra_disponibilidad_servicio_tipo_id" int4,
  "cantidad_ambiente_pedagogico" int4,
  "cantidad_ambiente_no_pedagogico" int4,
  "cantidad_banos" int4
)
;

-- ----------------------------
-- Table structure for infra_servicio_otro
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_servicio_otro";
CREATE TABLE "public"."infra_servicio_otro" (
  "id" int4 NOT NULL DEFAULT nextval('infra_servicio_otro_id_seq'::regclass),
  "infra_predio_id" int4
)
;

-- ----------------------------
-- Table structure for infra_servicio_otro_categoria_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_servicio_otro_categoria_tipo";
CREATE TABLE "public"."infra_servicio_otro_categoria_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_servicio_otro_categoria_tipo_id_seq'::regclass),
  "servicio_categoria" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6),
  "es_vigente" bool
)
;

-- ----------------------------
-- Table structure for infra_servicio_otro_condicion
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_servicio_otro_condicion";
CREATE TABLE "public"."infra_servicio_otro_condicion" (
  "id" int4 NOT NULL DEFAULT nextval('infra_servicio_otro_condicion_id_seq'::regclass),
  "infra_predio_id" int4,
  "infra_condicion_id" int4
)
;

-- ----------------------------
-- Table structure for infra_servicio_otro_cuenta
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_servicio_otro_cuenta";
CREATE TABLE "public"."infra_servicio_otro_cuenta" (
  "id" int4 NOT NULL DEFAULT nextval('infra_servicio_otro_cuenta_id_seq'::regclass),
  "infra_predio_id" int4,
  "infra_servicio_otro_tipo_id" int4,
  "infra_predio_institucioneducativa_id" int4
)
;

-- ----------------------------
-- Table structure for infra_servicio_otro_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_servicio_otro_tipo";
CREATE TABLE "public"."infra_servicio_otro_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_servicio_otro_tipo_id_seq'::regclass),
  "servicio" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6),
  "infra_servicio_otro_categoria_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_servicio_saneamiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_servicio_saneamiento";
CREATE TABLE "public"."infra_servicio_saneamiento" (
  "id" int4 NOT NULL DEFAULT nextval('infra_servicio_saneamiento_id_seq'::regclass),
  "infra_predio_id" int4,
  "infra_medio_eliminacion_basura_tipo_id" int4,
  "infra_periodicidad_eliminacion_basura_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infra_servicio_saneamiento_medio_eliminacion_exc
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_servicio_saneamiento_medio_eliminacion_exc";
CREATE TABLE "public"."infra_servicio_saneamiento_medio_eliminacion_exc" (
  "id" int4 NOT NULL DEFAULT nextval('infra_servicio_saneamiento_medio_eliminacion_exc_id_seq'::regclass),
  "infra_servicio_saneamiento_id" int4,
  "infra_medio_eliminacion_exc_tipo_id" int4,
  "otros" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infra_tenencia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_tenencia_tipo";
CREATE TABLE "public"."infra_tenencia_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_tenencia_tipo_id_seq'::regclass),
  "tenencia" varchar(30) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "feha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_tiempo_suspendido_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_tiempo_suspendido_tipo";
CREATE TABLE "public"."infra_tiempo_suspendido_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_tiempo_suspendido_tipo_id_seq'::regclass),
  "tiempo_suspendido" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_topografia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_topografia_tipo";
CREATE TABLE "public"."infra_topografia_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infra_topografia_tipo_id_seq'::regclass),
  "topografia" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infra_ubicacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infra_ubicacion_tipo";
CREATE TABLE "public"."infra_ubicacion_tipo" (
  "id" int4 NOT NULL,
  "ubicacion" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0)
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_ambientes_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_ambientes_tipo";
CREATE TABLE "public"."infraestructura_gen_ambientes_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_gen_ambientes_tipo_id_seq'::regclass),
  "descripcion" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_area_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_area_tipo";
CREATE TABLE "public"."infraestructura_gen_area_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_avance_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_avance_tipo";
CREATE TABLE "public"."infraestructura_gen_avance_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_avance_tipo_id_seq'::regclass),
  "infraestructura_avance" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_caracteristicas_infra_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_caracteristicas_infra_tipo";
CREATE TABLE "public"."infraestructura_gen_caracteristicas_infra_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_equipamiento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_equipamiento_tipo";
CREATE TABLE "public"."infraestructura_gen_equipamiento_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_gen_equipamiento_tipo_id_seq'::regclass),
  "descripcion" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_especialidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_especialidad_tipo";
CREATE TABLE "public"."infraestructura_gen_especialidad_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_estado_general
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_estado_general";
CREATE TABLE "public"."infraestructura_gen_estado_general" (
  "id" int4 NOT NULL,
  "estado" varchar(160) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_estado_mob_equip_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_estado_mob_equip_tipo";
CREATE TABLE "public"."infraestructura_gen_estado_mob_equip_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(160) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_estadogeneral_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_estadogeneral_tipo";
CREATE TABLE "public"."infraestructura_gen_estadogeneral_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_estadogeneral_tipo_id_seq'::regclass),
  "infraestructura_estadogeneral" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_mobiliario_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_mobiliario_tipo";
CREATE TABLE "public"."infraestructura_gen_mobiliario_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_gen_mobiliario_tipo_id_seq'::regclass),
  "descripcion" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_muros_carac_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_muros_carac_tipo";
CREATE TABLE "public"."infraestructura_gen_muros_carac_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_muros_material_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_muros_material_tipo";
CREATE TABLE "public"."infraestructura_gen_muros_material_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_pisos_material_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_pisos_material_tipo";
CREATE TABLE "public"."infraestructura_gen_pisos_material_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_puertas_abre_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_puertas_abre_tipo";
CREATE TABLE "public"."infraestructura_gen_puertas_abre_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_puertas_seguro_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_puertas_seguro_tipo";
CREATE TABLE "public"."infraestructura_gen_puertas_seguro_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_revestimiento_material_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_revestimiento_material_tipo";
CREATE TABLE "public"."infraestructura_gen_revestimiento_material_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_talleres_especializados_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_talleres_especializados_tipo";
CREATE TABLE "public"."infraestructura_gen_talleres_especializados_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_turno_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_turno_tipo";
CREATE TABLE "public"."infraestructura_gen_turno_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_gen_horario_tipo_id_seq'::regclass),
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_uso_ambiente_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_uso_ambiente_tipo";
CREATE TABLE "public"."infraestructura_gen_uso_ambiente_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_gen_ventanas_carac_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_gen_ventanas_carac_tipo";
CREATE TABLE "public"."infraestructura_gen_ventanas_carac_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h1_acceso_aereo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h1_acceso_aereo_tipo";
CREATE TABLE "public"."infraestructura_h1_acceso_aereo_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(50) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h1_acceso_fluvial_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h1_acceso_fluvial_tipo";
CREATE TABLE "public"."infraestructura_h1_acceso_fluvial_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(50) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h1_acceso_vehicular_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h1_acceso_vehicular_tipo";
CREATE TABLE "public"."infraestructura_h1_acceso_vehicular_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(50) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h1_datosgenerales
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h1_datosgenerales";
CREATE TABLE "public"."infraestructura_h1_datosgenerales" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h1_datosgenerales_id_seq'::regclass),
  "infraestructura_juridiccion_geografica_id" int4 NOT NULL,
  "n19_zonabarrio" varchar(150) COLLATE "pg_catalog"."default",
  "n111_macrodistrito" varchar(100) COLLATE "pg_catalog"."default",
  "n112_distritomun" varchar(150) COLLATE "pg_catalog"."default",
  "n110_direccion" varchar(150) COLLATE "pg_catalog"."default",
  "n22_descripcionacceso" varchar(200) COLLATE "pg_catalog"."default",
  "n31_tramotroncal" varchar(200) COLLATE "pg_catalog"."default",
  "n32_tramocomplementaria" varchar(200) COLLATE "pg_catalog"."default",
  "n33_tramovecinal" varchar(200) COLLATE "pg_catalog"."default",
  "n34_vehicular_dist_dias" int2,
  "n34_vehicular_dist_hrs" int2,
  "n34_vehicular_dist_min" int2,
  "n34_vehicular_dist_costo" float8,
  "n34_terrestre_descripcion" varchar(200) COLLATE "pg_catalog"."default",
  "n34_fluvial_dist_dias" int2,
  "n34_fluvial_dist_hrs" int2,
  "n34_fluvial_dist_min" int2,
  "n34_fluvial_dist_costo" float8,
  "n34_fluvial_descripcion" varchar(200) COLLATE "pg_catalog"."default",
  "n34_aereo_dist_dias" int2,
  "n34_aereo_dist_hrs" int2,
  "n34_aereo_dist_min" int2,
  "n34_aereo_dist_costo" float8,
  "n34_aereo_descripcion" varchar(200) COLLATE "pg_catalog"."default",
  "n34_combinacion_dias" int2,
  "n34_combinacion_hrs" int2,
  "n34_combinacion_min" int4,
  "n34_combinacion_costo" float8,
  "n34_combinacion_descripcion" varchar(200) COLLATE "pg_catalog"."default",
  "n5_obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now(),
  "n110_infraestructura_h1_direccion_tipo_id" int4,
  "n34_peatonal_dist_dias" int4,
  "n34_peatonal_dist_hrs" int4,
  "n34_peatonal_dist_min" int4,
  "n34_peatonal_dist_costo" float8,
  "n34_peatonal_mun_dias" int4,
  "n34_peatonal_mun_hrs" int4,
  "n34_peatonal_mun_min" int4,
  "n34_peatonal_mun_costo" float8,
  "n34_vehicular_mun_dias" int4,
  "n34_vehicular_mun_hrs" int4,
  "n34_vehicular_mun_min" int4,
  "n34_vehicular_mun_costo" float8,
  "n34_fluvial_mun_dias" int4,
  "n34_fluvial_mun_hrs" int4,
  "n34_fluvial_mun_min" int4,
  "n34_fluvial_mun_costo" float8,
  "n34_aereo_mun_dias" int4,
  "n34_aereo_mun_hrs" int4,
  "n34_aereo_mun_min" int4,
  "n34_aereo_mun_costo" float8,
  "n34_infraestructura_h1_acceso_vehicular_tipo_dist1_id" int4,
  "n34_infraestructura_h1_acceso_vehicular_tipo_dist2_id" int4,
  "n34_infraestructura_h1_acceso_vehicular_tipo_dist3_id" int4,
  "n34_infraestructura_h1_acceso_fluvial_tipo_dist1_id" int4,
  "n34_infraestructura_h1_acceso_fluvial_tipo_dist2_id" int4,
  "n34_infraestructura_h1_acceso_aereo_tipo_dist_id" int4,
  "n21_fotografia_principal" varchar(200) COLLATE "pg_catalog"."default",
  "n21_fotografia_frontal" varchar(200) COLLATE "pg_catalog"."default",
  "n21_fotografia_lateral" varchar(200) COLLATE "pg_catalog"."default",
  "n21_fotografia_panoramica" varchar(200) COLLATE "pg_catalog"."default",
  "n34_peatonal_es_dist" bool NOT NULL DEFAULT false,
  "n34_vehicular_es_dist" bool NOT NULL DEFAULT false,
  "n34_fluvial_es_dist" bool NOT NULL DEFAULT false,
  "n34_aereo_es_dist" bool NOT NULL DEFAULT false,
  "n34_peatonal_es_mun" bool NOT NULL DEFAULT false,
  "n34_vehicular_es_mun" bool NOT NULL DEFAULT false,
  "n34_infraestructura_h1_acceso_vehicular_tipo_mun1_id" int4,
  "n34_infraestructura_h1_acceso_vehicular_tipo_mun2_id" int4,
  "n34_infraestructura_h1_acceso_vehicular_tipo_mun3_id" int4,
  "n34_fluvial_es_mun" bool NOT NULL DEFAULT false,
  "n34_infraestructura_h1_acceso_fluvial_tipo_mun1_id" int4,
  "n34_infraestructura_h1_acceso_fluvial_tipo_mun2_id" int4,
  "n34_aereo_es_mun" bool NOT NULL DEFAULT false,
  "n34_infraestructura_h1_acceso_aereo_tipo_mun_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h1_direccion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h1_direccion_tipo";
CREATE TABLE "public"."infraestructura_h1_direccion_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(20) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h1_institucioneseducativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h1_institucioneseducativa";
CREATE TABLE "public"."infraestructura_h1_institucioneseducativa" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h1_institucioneseducativa_id_seq'::regclass),
  "infraestructura_h1_datosgenerales_id" int4 NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "persona_id" int4,
  "telefono_je" varchar(100) COLLATE "pg_catalog"."default",
  "tenencia_tipo_id" int4,
  "orgcurricular_tipo_id" int4,
  "bth_especialidad" bool,
  "telefono_repre" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for infraestructura_h1_tenencia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h1_tenencia_tipo";
CREATE TABLE "public"."infraestructura_h1_tenencia_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h1_tenencia_tipo_id_id_seq'::regclass),
  "tenencia_tipo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_caracteristica
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_caracteristica";
CREATE TABLE "public"."infraestructura_h2_caracteristica" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h2_caracteristica_id_seq'::regclass),
  "infraestructura_juridiccion_geografica_id" int4 NOT NULL,
  "n11_areaconstruida" numeric(17,2) NOT NULL DEFAULT 0,
  "n11_arearecreacion" numeric(17,2) NOT NULL DEFAULT 0,
  "n11_areanoconstruida" numeric(17,2) NOT NULL DEFAULT 0,
  "n11_areacultivo" numeric(17,2) DEFAULT 0,
  "n11_areacriaanimales" numeric(17,2) DEFAULT 0,
  "n12_infraestructura_h2_topografia_tipo_id" int4 NOT NULL,
  "n13_muroperimetral" numeric(17,2) NOT NULL,
  "n13_edificacion_amurallada" int4 NOT NULL,
  "n13_muroperimetral_actual" numeric(17,2) NOT NULL,
  "n3_11_con_es_riesgo_inundacion" bool NOT NULL DEFAULT false,
  "n3_17_con_es_riesgo_riada" bool NOT NULL DEFAULT false,
  "n3_18_con_es_riesgo_tormenta" bool NOT NULL DEFAULT false,
  "n3_12_con_es_riesgo_incendio" bool NOT NULL DEFAULT false,
  "n3_19_con_es_riesgo_granizo" bool NOT NULL DEFAULT false,
  "n14_con_es_riesgo_humedad" bool NOT NULL DEFAULT false,
  "n14_con_es_riesgo_barranco" bool NOT NULL DEFAULT false,
  "n14_con_es_riesgo_contaminacion" bool NOT NULL DEFAULT false,
  "n3_14_con_es_riesgo_deslizamiento" bool NOT NULL DEFAULT false,
  "n3_15_con_es_riesgo_sifonamiento" bool NOT NULL DEFAULT false,
  "n3_16_con_es_riesgo_terremoto" bool NOT NULL DEFAULT false,
  "n14_con_es_riesgo_noexiste" bool NOT NULL DEFAULT true,
  "n15_cul_es_riesgo_inundacion" bool NOT NULL DEFAULT false,
  "n15_cul_es_riesgo_riada" bool NOT NULL DEFAULT false,
  "n15_cul_es_riesgo_tormenta" bool NOT NULL DEFAULT false,
  "n15_cul_es_riesgo_incendio" bool NOT NULL DEFAULT false,
  "n15_cul_es_riesgo_granizo" bool NOT NULL DEFAULT false,
  "n15_cul_es_riesgo_humedad" bool NOT NULL DEFAULT false,
  "n15_cul_es_riesgo_barranco" bool NOT NULL DEFAULT false,
  "n15_cul_es_riesgo_contaminacion" bool NOT NULL DEFAULT false,
  "n15_cul_es_riesgo_deslizamiento" bool NOT NULL DEFAULT false,
  "n15_cul_es_riesgo_sifonamiento" bool NOT NULL DEFAULT false,
  "n15_cul_es_riesgo_terremoto" bool NOT NULL DEFAULT false,
  "n15_cul_es_riesgo_noexiste" bool NOT NULL DEFAULT true,
  "n21_es_construida_educativo" bool NOT NULL DEFAULT false,
  "n22_anio_construccion" int2 NOT NULL DEFAULT 0,
  "n23_anio_refaccion" int2 NOT NULL DEFAULT 0,
  "n24_anio_ampliacion" int2 NOT NULL DEFAULT 0,
  "n25_infraestructura_h2_propiedad_tipo_id" int2 NOT NULL DEFAULT 0,
  "n26_razonsocial" varchar(100) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 0,
  "n27_estadogeneral_tipo_id" int2,
  "n28_techo_estadogeneral_tipo_id" int2,
  "n28_pared_estadogeneral_tipo_id" int2,
  "n28_piso_estadogeneral_tipo_id" int2,
  "n28_cielo_estadogeneral_tipo_id" int2,
  "n29_documento_tipo_id" int2,
  "n29_documento_obs" varchar(220) COLLATE "pg_catalog"."default",
  "n29_documento_nro_partida" varchar(100) COLLATE "pg_catalog"."default",
  "n210_es_plano_aprobado" bool,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now(),
  "n11_areatotal" numeric(17,2),
  "n11_area_huerto" float8,
  "n11_area_invernadero" float8,
  "n11_area_granja_escolar" float8,
  "n21_infraestructura_h2_construida_educativo_tipo_id" int4,
  "n22_anio_construccion_es_discap" bool,
  "n23_anio_refaccion_es_discap" bool,
  "n24_anio_ampliacion_es_discap" bool,
  "n28_folio_real_tarjeta_obs" varchar(500) COLLATE "pg_catalog"."default",
  "n211_adj_documentacion_folio" varchar(255) COLLATE "pg_catalog"."default",
  "n212_si_rampas" bool,
  "n212_si_tiene_rampa" bool,
  "n215_tipo_rampas_id" int4,
  "n3_13_con_es_riesgo_sequia" bool NOT NULL DEFAULT false,
  "n3_13_con_es_riesgo_sequia_mesi" date DEFAULT now(),
  "n3_13_con_es_riesgo_sequia_mesf" date DEFAULT now(),
  "n3_11_con_es_riesgo_inundacion_mesi" date DEFAULT now(),
  "n3_11_con_es_riesgo_inundacion_mesf" date DEFAULT now(),
  "n3_12_con_es_riesgo_incendio_mesi" date DEFAULT now(),
  "n3_12_con_es_riesgo_incendio_mesf" date DEFAULT now(),
  "n3_14_con_es_riesgo_deslizamiento_mesi" date DEFAULT now(),
  "n3_14_con_es_riesgo_deslizamiento_mesf" date DEFAULT now(),
  "n3_15_con_es_riesgo_sifonamiento_mesi" date DEFAULT now(),
  "n3_15_con_es_riesgo_sifonamiento_mesf" date DEFAULT now(),
  "n3_16_con_es_riesgo_terremoto_mesi" date DEFAULT now(),
  "n3_16_con_es_riesgo_terremoto_mesf" date DEFAULT now(),
  "n3_17_con_es_riesgo_riada_mesi" date DEFAULT now(),
  "n3_17_con_es_riesgo_riada_mesf" date DEFAULT now(),
  "n3_18_con_es_riesgo_tormenta_mesi" date DEFAULT now(),
  "n3_18_con_es_riesgo_tormenta_mesf" date DEFAULT now(),
  "n3_19_con_es_riesgo_granizo_mesi" date DEFAULT now(),
  "n3_19_con_es_riesgo_granizo_mesf" date DEFAULT now(),
  "n3_120_con_es_riesgo_helada" bool NOT NULL DEFAULT false,
  "n3_120_con_es_riesgo_helada_mesi" date DEFAULT now(),
  "n3_120_con_es_riesgo_helada_mesf" date DEFAULT now(),
  "n3_21_es_edif_prox_barrancos" bool NOT NULL DEFAULT false,
  "n3_21_es_edif_prox_rios_lag_que" bool NOT NULL DEFAULT false,
  "n3_21_es_edif_prox_esta_electricas" bool NOT NULL DEFAULT false,
  "n3_21_es_edif_prox_esta_gasolineras" bool NOT NULL DEFAULT false,
  "n3_21_es_edif_prox_fabr_mat_contami" bool NOT NULL DEFAULT false,
  "n3_21_es_edif_prox_botaderos_muni" bool NOT NULL DEFAULT false,
  "n3_21_es_edif_prox_centro_minero" bool NOT NULL DEFAULT false,
  "n3_21_es_edif_prox_paso_frontera" bool NOT NULL DEFAULT false,
  "n3_21_es_edif_prox_bares" bool NOT NULL DEFAULT false,
  "n3_21_es_edif_prox_bosques" bool NOT NULL DEFAULT false,
  "n3_31_es_suspencion_clases" bool NOT NULL DEFAULT false,
  "n3_41_es_albergue" bool NOT NULL DEFAULT false,
  "n3_54_es_senaletica_evac" bool NOT NULL DEFAULT false,
  "n2_13_senales_tipo_id" int4,
  "n3_55_es_deposito_agua" bool NOT NULL DEFAULT false,
  "n3_21_es_edif_prox_cerro_ladera" bool NOT NULL DEFAULT false,
  "n3_21_es_edif_prox_riesgo_delito" bool NOT NULL DEFAULT false,
  "n3_51_es_timbre_panico" bool NOT NULL DEFAULT false,
  "n3_51_es_timbre_panico_cant" int4 DEFAULT 0,
  "n3_52_es_extintores" bool NOT NULL DEFAULT false,
  "n3_52_extintores_cant" int4 DEFAULT 0,
  "n3_53_es_cam_seg" bool NOT NULL DEFAULT false,
  "n3_53_cam_seg_cant" int4 DEFAULT 0,
  "n3_53_es_cam_seg_funcionamiento" bool NOT NULL DEFAULT false,
  "n212_si_senaletica" bool NOT NULL DEFAULT false,
  "n212_senales_idioma_tipo1_id" int4,
  "n212_senales_idioma_tipo2_id" int4,
  "n31_nro_bloque" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_caracteristica_edificacion_rampas_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_caracteristica_edificacion_rampas_tipo";
CREATE TABLE "public"."infraestructura_h2_caracteristica_edificacion_rampas_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h2_caracteristica_terreno_rampas_tipo_id_seq'::regclass),
  "infraestructura_h2_caracteristica_id" int4 NOT NULL,
  "n215_tipo_rampas_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_caracteristica_edificacion_senales_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_caracteristica_edificacion_senales_tipo";
CREATE TABLE "public"."infraestructura_h2_caracteristica_edificacion_senales_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h2_caracteristica_terreno_senales_tipo_id_seq'::regclass),
  "infraestructura_h2_caracteristica_id" int4 NOT NULL,
  "n213_tipo_senales_id" int4,
  "n213_tipo_senales_idioma1_id" int4,
  "n213_tipo_senales_idioma2_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_caracteristica_edificados
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_caracteristica_edificados";
CREATE TABLE "public"."infraestructura_h2_caracteristica_edificados" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h2_caracteristica_edificados_id_seq'::regclass),
  "infraestructura_h2_caracteristica_id" int4 NOT NULL,
  "n31_nombre_bloque" varchar(55) COLLATE "pg_catalog"."default",
  "n3_area_m2" numeric(8,2) DEFAULT 0,
  "n3_numeroplantas" int4 DEFAULT 0,
  "n3_numero_ambientes_pedagogicos" int4 DEFAULT 0,
  "n3_numero_no_ambientes_pedagogicos" int4 DEFAULT 0,
  "n3_numero_total_pedagogicos" int4 DEFAULT 0,
  "n3_piso_material_tipo_id" int4,
  "n3_cielo_material_tipo_id" int4,
  "n3_pared_material_tipo_id" int4 DEFAULT 0,
  "n3_techo_material_tipo_id" int4 DEFAULT 0,
  "fecharegistro" timestamp(6) DEFAULT now(),
  "n32_si_tiene_ascensores" bool,
  "n33_adjuntar_foto_bloque" varchar(255) COLLATE "pg_catalog"."default",
  "n31_nro_bloque" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_caracteristica_edificados_pisos
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_caracteristica_edificados_pisos";
CREATE TABLE "public"."infraestructura_h2_caracteristica_edificados_pisos" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h2_caracteristica_edificados_pisos_id_seq'::regclass),
  "infraestructura_h2_caracteristica_edificados_id" int4 NOT NULL,
  "n11_nro_piso_tipo_id" int4,
  "n12_area_m2" float8,
  "n13_nro_amb_pedagogicos" int4,
  "n14_nro_amb_no_pedagogicos" int4,
  "n15_total_banios" int4,
  "n16_total_ambientes" int4,
  "n21_si_cielo_falso" bool,
  "n21_1_caracteristicas_tipo_id" int4,
  "n22_si_puertas" bool,
  "n22_1_seguro_tipo_id" int4,
  "n22_2_abre_tipo_id" int4,
  "n23_si_ventanas" bool,
  "n23_1_vidrios_tipo_id" int4,
  "n24_si_techo" bool,
  "n25_si_muros" bool,
  "n25_1_muros_material_tipo_id" int4,
  "n25_2_muros_caracteristicas_tipo_id" int4,
  "n26_si_revestimiento" bool,
  "n26_1_revest_material_tipo_id" int4,
  "n26_2_revest_caracteristicas_tipo_id" int4,
  "n27_si_piso" bool,
  "n27_1_piso_material_tipo_id" int4,
  "n27_2_piso_caracteristicas_tipo_id" int4,
  "n31_si_gradas" bool,
  "n32_gradas_tipo_id" int4,
  "n33_si_rampas" bool,
  "n35_si_senaletica" bool,
  "n3_1_senales_tipo_id" int4,
  "n35_senales_idioma_tipo1_id" int4,
  "n35_senales_idioma_tipo2_id" int4,
  "estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_caracteristica_edificados_pisos_gradas_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_caracteristica_edificados_pisos_gradas_tipo";
CREATE TABLE "public"."infraestructura_h2_caracteristica_edificados_pisos_gradas_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h2_caracteristica_edificados_pisos_grada_id_seq'::regclass),
  "infraestructura_h2_caracteristica_edificados_pisos_id" int4 NOT NULL,
  "n32_gradas_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_caracteristica_edificados_pisos_rampas_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_caracteristica_edificados_pisos_rampas_tipo";
CREATE TABLE "public"."infraestructura_h2_caracteristica_edificados_pisos_rampas_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h2_caracteristica_edificados_pisos_rampa_id_seq'::regclass),
  "infraestructura_h2_caracteristica_edificados_pisos_id" int4 NOT NULL,
  "n34_rampas_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_caracteristica_edificados_pisos_senales
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_caracteristica_edificados_pisos_senales";
CREATE TABLE "public"."infraestructura_h2_caracteristica_edificados_pisos_senales" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h2_caracteristica_edificados_pisos_senal_id_seq'::regclass),
  "infraestructura_h2_caracteristica_edificados_pisos_id" int4 NOT NULL,
  "n36_senales_tipo_id" int4,
  "n36_senales_idioma1_tipo_id" int4,
  "n36_senales_idioma2_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_cielo_material_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_cielo_material_tipo";
CREATE TABLE "public"."infraestructura_h2_cielo_material_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_cielo_material_tipo_id_seq'::regclass),
  "infraestructura_cielo_material_tipo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_construida_educativo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_construida_educativo_tipo";
CREATE TABLE "public"."infraestructura_h2_construida_educativo_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_documento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_documento_tipo";
CREATE TABLE "public"."infraestructura_h2_documento_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_documento_tipo_id_seq'::regclass),
  "infraestructura_documento" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_pared_material_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_pared_material_tipo";
CREATE TABLE "public"."infraestructura_h2_pared_material_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_pared_material_tipo_id_seq'::regclass),
  "infraestructura_pared_material_tipo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_piso_material_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_piso_material_tipo";
CREATE TABLE "public"."infraestructura_h2_piso_material_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_piso_material_tipo_id_seq'::regclass),
  "infraestructura_piso_material" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_piso_nro_piso_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_piso_nro_piso_tipo";
CREATE TABLE "public"."infraestructura_h2_piso_nro_piso_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_piso_pisos_material_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_piso_pisos_material_tipo";
CREATE TABLE "public"."infraestructura_h2_piso_pisos_material_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_pisos_gradas_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_pisos_gradas_tipo";
CREATE TABLE "public"."infraestructura_h2_pisos_gradas_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_propiedad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_propiedad_tipo";
CREATE TABLE "public"."infraestructura_h2_propiedad_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_propiedad_tipo_id_seq'::regclass),
  "infraestructura_propiedad" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_rampa_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_rampa_tipo";
CREATE TABLE "public"."infraestructura_h2_rampa_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_senales_idioma_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_senales_idioma_tipo";
CREATE TABLE "public"."infraestructura_h2_senales_idioma_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_senales_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_senales_tipo";
CREATE TABLE "public"."infraestructura_h2_senales_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_techo_material_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_techo_material_tipo";
CREATE TABLE "public"."infraestructura_h2_techo_material_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_techo_material_tipo_id_seq'::regclass),
  "infraestructura_techo_material_tipo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h2_topografia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h2_topografia_tipo";
CREATE TABLE "public"."infraestructura_h2_topografia_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_topografia_tipo_id_seq'::regclass),
  "infraestructura_topografia" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h3_delitos_edificio_detalle
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h3_delitos_edificio_detalle";
CREATE TABLE "public"."infraestructura_h3_delitos_edificio_detalle" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h3_delitos_edificio_detalle_id_seq'::regclass),
  "infraestructura_h3_riesgos_delitos_id" int4 NOT NULL,
  "n22_gestion_tipo_id" int4,
  "n22_cant_veces" int4 DEFAULT 0,
  "n22_turno_tipo_id" int4,
  "n22_ambientes_tipo_id" int4,
  "n22_mobiliario_tipo_id" int4,
  "n22_equipamiento_tipo_id" int4,
  "n22_obs_acciones" varchar(255) COLLATE "pg_catalog"."default",
  "n22_es_robo_edificio" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Table structure for infraestructura_h3_enlugar_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h3_enlugar_tipo";
CREATE TABLE "public"."infraestructura_h3_enlugar_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_enlugar_tipo_id_seq'::regclass),
  "infraestructura_enlugar" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h3_idioma_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h3_idioma_tipo";
CREATE TABLE "public"."infraestructura_h3_idioma_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_idioma_tipo_id_seq'::regclass),
  "infraestructura_idioma" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h3_periodicidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h3_periodicidad_tipo";
CREATE TABLE "public"."infraestructura_h3_periodicidad_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_periodicidad_tipo_id_seq'::regclass),
  "infraestructura_eliminacion_basura" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h3_riesgos_delitos
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h3_riesgos_delitos";
CREATE TABLE "public"."infraestructura_h3_riesgos_delitos" (
  "id" int4 NOT NULL,
  "infraestructura_juridiccion_geografica_id" int4 NOT NULL,
  "n21_robo_cantidad" int4 DEFAULT 0,
  "n21_es_hubo_asalto" bool NOT NULL DEFAULT false,
  "n11_es_inundacion" bool NOT NULL DEFAULT false,
  "n11_inundacion_fechainicial" date,
  "n11_inundacion_fechafinal" date,
  "n11_es_incendio" bool NOT NULL DEFAULT false,
  "n11_incendio_fechainicial" date,
  "n11_incendio_fechafinal" date,
  "n11_es_sequia" bool NOT NULL DEFAULT false,
  "n11_sequia_fechainicial" date,
  "n11_sequia_fechafinal" date,
  "n11_es_deslizamiento" bool NOT NULL DEFAULT false,
  "n11_deslizamiento_fechainicial" date,
  "n11_deslizamiento_fechafinal" date,
  "n11_es_riada" bool NOT NULL DEFAULT false,
  "n11_riada_fechainicial" date,
  "n11_riada_fechafinal" date,
  "n11_es_sismo" bool NOT NULL DEFAULT false,
  "n11_sismo_fechainicial" date,
  "n11_sismo_fechafinal" date,
  "n11_es_viento" bool NOT NULL DEFAULT false,
  "n11_viento_fechainicial" date,
  "n11_viento_fechafinal" date,
  "n11_es_granizada" bool NOT NULL DEFAULT false,
  "n11_granizada_fechainicial" date,
  "n11_granizada_fechafinal" date,
  "n11_es_helada" bool NOT NULL DEFAULT false,
  "n11_helada_fechainicial" date,
  "n11_helada_fechafinal" date,
  "n11_es_hundimiento" bool NOT NULL DEFAULT false,
  "n12_es_barranco" bool NOT NULL DEFAULT false,
  "n12_es_bosque" bool NOT NULL DEFAULT false,
  "n12_es_rio" bool NOT NULL DEFAULT false,
  "n12_es_cerro" bool NOT NULL DEFAULT false,
  "n12_es_centrominero" bool NOT NULL DEFAULT false,
  "n12_es_botadero" bool NOT NULL DEFAULT false,
  "n12_es_fabrica" bool NOT NULL DEFAULT false,
  "n12_es_pasofrontera" bool NOT NULL DEFAULT false,
  "n12_es_bar" bool NOT NULL DEFAULT false,
  "n12_es_estacionelectrica" bool NOT NULL DEFAULT false,
  "n12_es_zonariezgo" bool NOT NULL DEFAULT false,
  "n13_si_suspendieronclases" bool NOT NULL DEFAULT false,
  "n13_infraestructura_h3_suspencion_clases_tiempo_tipo_id" int4,
  "n14_si_albergue" bool NOT NULL DEFAULT false,
  "n15_es_timbrepanico" bool NOT NULL DEFAULT false,
  "n15_es_extintor" bool NOT NULL DEFAULT false,
  "n15_es_salidaemergencia" bool NOT NULL DEFAULT false,
  "n15_es_camaraseguridad" bool NOT NULL DEFAULT false,
  "n15_si_funciona_camaraseguridad" bool NOT NULL DEFAULT false,
  "n15_es_senaleticaevac" bool NOT NULL DEFAULT false,
  "n15_infraestructura_h3_senaletica_evac_tipo_id" int4,
  "n15_es_depositoagua" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Table structure for infraestructura_h3_senaletica_evac_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h3_senaletica_evac_tipo";
CREATE TABLE "public"."infraestructura_h3_senaletica_evac_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h3_suspencion_clases_tiempo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h3_suspencion_clases_tiempo_tipo";
CREATE TABLE "public"."infraestructura_h3_suspencion_clases_tiempo_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_acceso_agua_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_acceso_agua_tipo";
CREATE TABLE "public"."infraestructura_h4_acceso_agua_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_acceso_agua_tipo_id_seq'::regclass),
  "infraestructura_acceso_agua" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_ambientepedagogico_deportivo_equimiento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_ambientepedagogico_deportivo_equimiento_tipo";
CREATE TABLE "public"."infraestructura_h4_ambientepedagogico_deportivo_equimiento_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h4_ambientepedagogico_deportivo_equimien_id_seq'::regclass),
  "infraestructura_ambiente" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_bano_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_bano_tipo";
CREATE TABLE "public"."infraestructura_h4_bano_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('"infraestructura_baño_tipo_id_seq"'::regclass),
  "infraestructura_bano" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_disponibilidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_disponibilidad_tipo";
CREATE TABLE "public"."infraestructura_h4_disponibilidad_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_disponibilidad_tipo_id_seq'::regclass),
  "infraestructura_disponibilidad" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_eliminacion_basura_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_eliminacion_basura_tipo";
CREATE TABLE "public"."infraestructura_h4_eliminacion_basura_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_eliminacion_basura_tipo_id_seq'::regclass),
  "infraestructura_eliminacion_basura" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_fuente_electrica_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_fuente_electrica_tipo";
CREATE TABLE "public"."infraestructura_h4_fuente_electrica_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_fuente_electrica_tipo_id_seq'::regclass),
  "infraestructura_fuenteelectrica" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_medio_agua_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_medio_agua_tipo";
CREATE TABLE "public"."infraestructura_h4_medio_agua_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_medio_agua_tipo_id_seq'::regclass),
  "infraestructura_medio_agua" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_orgcurricular_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_orgcurricular_tipo";
CREATE TABLE "public"."infraestructura_h4_orgcurricular_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_orgcurricular_tipo_id_seq'::regclass),
  "infraestructura_ambiente" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_purificador_agua_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_purificador_agua_tipo";
CREATE TABLE "public"."infraestructura_h4_purificador_agua_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_purificador_agua_tipo_id_seq'::regclass),
  "infraestructura_purificador_agua" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_servicio
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_servicio";
CREATE TABLE "public"."infraestructura_h4_servicio" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h3_servicio_id_seq'::regclass),
  "infraestructura_juridiccion_geografica_id" int4 NOT NULL,
  "n11_es_energiaelectrica" bool DEFAULT false,
  "n12_fuente_electrica_tipo_id" int2 NOT NULL DEFAULT 0,
  "n12_fuente_electrica_otro" varchar(50) COLLATE "pg_catalog"."default",
  "n14_disponibilidad_tipo_id" int4 NOT NULL,
  "n15_numero_ambientes_pedagogicos" int2,
  "n15_numero_ambientes_no_pedagogicos" int2,
  "n15_numero_banios" int2,
  "n15_numero_medidores" int2,
  "n16_numero_medidores_funcionan" int2,
  "n16_numero_medidores_no_funcionan" int2,
  "n21_es_dipone_agua" bool DEFAULT false,
  "n22_medio_agua_tipo_id" int2 NOT NULL,
  "n22_medio_agua_otro" varchar(100) COLLATE "pg_catalog"."default",
  "n23_es_cuenta_tanque_agua" bool DEFAULT false,
  "n24_es_cuenta_bomba_agua" bool DEFAULT false,
  "n25_es_cuenta_red_agua" bool DEFAULT false,
  "n28_numero_ambientes_agua" int4 DEFAULT 0,
  "n25_acceso_agua_tipo_id" int4 NOT NULL DEFAULT 0,
  "n26_uso_agua_tipo_id" int4 NOT NULL DEFAULT 0,
  "n27_purificador_agua_tipo_id" int4 NOT NULL DEFAULT 0,
  "n31_es_instalacion_saneamiento" bool DEFAULT false,
  "n32_excretas_es_alcantarillado" bool DEFAULT false,
  "n32_excretas_es_septica" bool DEFAULT false,
  "n32_excretas_es_pozo" bool DEFAULT false,
  "n32_excretas_es_cielo_abierto" bool DEFAULT false,
  "n32_excretas_es_otro" bool DEFAULT false,
  "n33_excretas_es_nosabe" bool DEFAULT false,
  "n34_es_buenascondiciones" bool DEFAULT false,
  "n34_es_buenasventilacion" bool DEFAULT false,
  "n34_es_privacidad" bool DEFAULT false,
  "n33_elminacion_basura_tipo_id" int2 NOT NULL,
  "n41_eliminacion_basura_otro" varchar(100) COLLATE "pg_catalog"."default",
  "n34_periodicidad_tipo_id" int2 NOT NULL,
  "n41_es_centro_salud" bool DEFAULT false,
  "n41_metros_centro_salud" numeric(6,2),
  "n42_es_centro_policial" bool DEFAULT false,
  "n42_metros_centro_policial" numeric(6,2),
  "n53_es_centro_esparcimiento" bool DEFAULT false,
  "n53_metros_centro_esparcimiento" numeric(6,2),
  "n54_es_centro_cultural" bool DEFAULT false,
  "n54_metros_centro_cultural" numeric(6,2),
  "n55_es_centro_iglesia" bool DEFAULT false,
  "n55_metros_centro_iglesia" numeric(6,2),
  "n56_es_centro_internet" bool DEFAULT false,
  "n56_metros_centro_internet" numeric(6,2),
  "n57_es_centro_correo" bool DEFAULT false,
  "n57_metros_centro_correo" numeric(6,2),
  "n58_es_centro_telefono" bool DEFAULT false,
  "n58_metros_centro_telefono" numeric(6,2),
  "n59_es_centro_nucleo_educativo" bool DEFAULT false,
  "n59_metros_centro_nucleo_educativo" numeric(8,2),
  "n510_es_centro_radiocomunicacion" bool DEFAULT false,
  "n510_metros_centro_radiocomunicacion" numeric(6,2),
  "n511_es_servicio_enfermeria" bool DEFAULT false,
  "n512_es_servicio_internet" bool DEFAULT false,
  "n43_es_servicio_telecentro" bool DEFAULT false,
  "n514_es_servicio_gas" bool DEFAULT false,
  "n515_es_senal_discapacidad" bool DEFAULT false,
  "n515_es_senal_idioma_tipo_id" int2,
  "n516_es_funciona_cee" bool DEFAULT false,
  "n517_es_rampasacceso" bool DEFAULT false,
  "n517_rampasacceso_enlugar_tipo_id" int2 NOT NULL,
  "n518_es_guias_discapicidad_visual" bool DEFAULT false,
  "n518_guias_discapicidad_enlugar_tipo_id" int2 NOT NULL,
  "n519_es_ambientes_pedagogicos_discapacidad" bool DEFAULT false,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now(),
  "n13_es_tipo_instalacion" bool NOT NULL DEFAULT false,
  "n43_metros_servicio_telecentro" numeric(6,2),
  "n43_es_dna_slim" bool NOT NULL DEFAULT false,
  "n43_metros_dna_slim" numeric(6,2),
  "n43_es_est_bomberos" bool NOT NULL DEFAULT false,
  "n43_metros_est_bomberos" numeric(6,2),
  "n43_es_mercado_proxim" bool NOT NULL DEFAULT false,
  "n43_metros_mercado_proxim" numeric(6,2),
  "n43_es_comunitaria_proxim" bool NOT NULL DEFAULT false,
  "n43_metros_comunitaria_proxim" numeric(6,2),
  "n43_es_universidad_proxim" bool NOT NULL DEFAULT false,
  "n43_metros_universidad_proxim" numeric(6,2),
  "n43_es_tecnologico_proxim" bool NOT NULL DEFAULT false,
  "n43_metros_tecnologico_proxim" numeric(6,2),
  "n29_ambientes_con_agua" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_servicio_agua_ambientes
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_servicio_agua_ambientes";
CREATE TABLE "public"."infraestructura_h4_servicio_agua_ambientes" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h3_servicio_agua_ambientes_id_seq'::regclass),
  "infraestructura_h4_servicio_id" int4 NOT NULL,
  "n29_ambientes_agua_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_servicio_agua_ambientes_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_servicio_agua_ambientes_tipo";
CREATE TABLE "public"."infraestructura_h4_servicio_agua_ambientes_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_servicio_bateria_banos
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_servicio_bateria_banos";
CREATE TABLE "public"."infraestructura_h4_servicio_bateria_banos" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h3_servicio_saneamiento_id_seq'::regclass),
  "infraestructura_h4_servicio_id" int4 NOT NULL,
  "n5_ambiente_bano_tipo_id" int2 NOT NULL,
  "n5_areatotalm2" numeric(8,2) NOT NULL DEFAULT 0,
  "n5_pared_estadogeneral_tipo_id" int2,
  "n5_techo_estadogeneral_tipo_id" int2,
  "n5_piso_estadogeneral_tipo_id" int2,
  "n5_cielo_estadogeneral_tipo_id" int2,
  "n5_banio_conagua" int2 NOT NULL DEFAULT 0,
  "n5_banio_sinagua" int2 NOT NULL DEFAULT 0,
  "n5_letrina_funciona" int2 NOT NULL DEFAULT 0,
  "n5_letrina_nofunciona" int2 NOT NULL DEFAULT 0,
  "n5_inodoro_funciona" int2 NOT NULL DEFAULT 0,
  "n5_inodoro_nofunciona" int2 NOT NULL DEFAULT 0,
  "n5_urinario_funciona" int2 NOT NULL DEFAULT 0,
  "n5_urinario_nofunciona" int2 NOT NULL DEFAULT 0,
  "n5_lavamano_funciona" int2 NOT NULL DEFAULT 0,
  "n5_lavamano_nofunciona" int2 NOT NULL DEFAULT 0,
  "n5_ducha_funciona" int2 NOT NULL DEFAULT 0,
  "n5_ducha_nofunciona" int2 NOT NULL DEFAULT 0,
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now(),
  "n5_es_funciona_ambiente" bool NOT NULL DEFAULT false,
  "n52_es_tiene_techo" bool NOT NULL DEFAULT false,
  "n52_es_tiene_cielo_falso" bool NOT NULL DEFAULT false,
  "n52_tiene_cielo_falso_carac_tipo_id" int4,
  "n52_es_tiene_puerta" bool NOT NULL DEFAULT false,
  "n52_1_seguro_tipo_id" int4,
  "n52_2_abre_tipo_id" int4,
  "n52_es_tiene_ventana" bool NOT NULL DEFAULT false,
  "n52_tiene_ventana_carac_tipo_id" int4,
  "n52_es_tiene_muros" bool NOT NULL DEFAULT false,
  "n52_tiene_muros_mater_tipo_id" int4,
  "n52_tiene_muros_carac_tipo_id" int4,
  "n52_es_tiene_revest" bool NOT NULL DEFAULT false,
  "n52_tiene_revest_mater_tipo_id" int4,
  "n52_tiene_revest_carac_tipo_id" int4,
  "n52_es_tiene_piso" bool NOT NULL DEFAULT false,
  "n52_tiene_piso_mater_tipo_id" int4,
  "n52_tiene_piso_carac_tipo_id" int4,
  "estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_servicio_vestuarios
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_servicio_vestuarios";
CREATE TABLE "public"."infraestructura_h4_servicio_vestuarios" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h3_servicio_vestuarios_id_seq'::regclass),
  "infraestructura_h4_servicio_id" int4 NOT NULL,
  "n6_servicio_ambiente_tipo_id" int2 NOT NULL,
  "n6_areatotalm2" numeric(8,2) NOT NULL DEFAULT 0,
  "n6_es_funciona_ambiente" bool NOT NULL DEFAULT false,
  "fecharegistro" timestamp(6) DEFAULT now(),
  "n62_es_tiene_techo" bool NOT NULL DEFAULT false,
  "n62_es_tiene_cielo_falso" bool NOT NULL DEFAULT false,
  "n62_tiene_cielo_falso_carac_tipo_id" int4,
  "n62_es_tiene_puerta" bool NOT NULL DEFAULT false,
  "n62_1_seguro_tipo_id" int4,
  "n62_es_tiene_ventana" bool NOT NULL DEFAULT false,
  "n62_tiene_ventana_carac_tipo_id" int4,
  "n62_es_tiene_muros" bool NOT NULL DEFAULT false,
  "n62_tiene_muros_mater_tipo_id" int4,
  "n62_tiene_muros_carac_tipo_id" int4,
  "n62_es_tiene_revest" bool NOT NULL DEFAULT false,
  "n62_tiene_revest_mater_tipo_id" int4,
  "n62_tiene_revest_carac_tipo_id" int4,
  "n62_es_tiene_piso" bool NOT NULL DEFAULT false,
  "n62_tiene_piso_mater_tipo_id" int4,
  "n62_tiene_piso_carac_tipo_id" int4,
  "n62_2_abre_tipo_id" int4,
  "estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h4_uso_agua_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h4_uso_agua_tipo";
CREATE TABLE "public"."infraestructura_h4_uso_agua_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_uso_agua_tipo_id_seq'::regclass),
  "infraestructura_uso_agua" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambiente_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambiente_tipo";
CREATE TABLE "public"."infraestructura_h5_ambiente_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_ambiente_tipo_id_seq'::regclass),
  "infraestructura_ambiente" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambienteadministrativo_ambiente_equipamiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_ambiente_equipamiento";
CREATE TABLE "public"."infraestructura_h5_ambienteadministrativo_ambiente_equipamiento" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_ambiente_equip_id_seq'::regclass),
  "infraestructura_h5_ambienteadministrativo_ambiente_id" int4 NOT NULL,
  "n62_equipamiento_tipo_id" int4,
  "n62_cantidad" int4,
  "n62_estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambienteadministrativo_ambiente_mobiliario
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_ambiente_mobiliario";
CREATE TABLE "public"."infraestructura_h5_ambienteadministrativo_ambiente_mobiliario" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_ambiente_mobil_id_seq'::regclass),
  "infraestructura_h5_ambienteadministrativo_ambiente_id" int4 NOT NULL,
  "n62_mobiliario_tipo_id" int4,
  "n62_cantidad" int4,
  "n62_estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambienteadministrativo_cancha
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_cancha";
CREATE TABLE "public"."infraestructura_h5_ambienteadministrativo_cancha" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_cancha_id_seq'::regclass),
  "infraestructura_h5_ambienteadministrativo_id" int4 NOT NULL,
  "n21_deporte_destino" varchar(100) COLLATE "pg_catalog"."default",
  "n21_material_piso_tipo_id" int2 NOT NULL,
  "n21_piso_estadogeneral_tipo_id" int2 NOT NULL,
  "n21_es_techado" bool NOT NULL DEFAULT false,
  "n21_es_graderias" bool NOT NULL DEFAULT false,
  "n21_capacidad_graderias" int4 DEFAULT 0,
  "n21_area_cancha_mt2" numeric(8,2) DEFAULT 0,
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambienteadministrativo_coliseo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_coliseo";
CREATE TABLE "public"."infraestructura_h5_ambienteadministrativo_coliseo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_coliseo_id_seq'::regclass),
  "infraestructura_h5_ambienteadministrativo_id" int4 NOT NULL,
  "n24_material_piso_tipo_id" int2 NOT NULL,
  "n24_piso_estadogeneral_tipo_id" int2 NOT NULL,
  "n24_es_techado" bool NOT NULL DEFAULT false,
  "n24_capacidad" int4 NOT NULL,
  "n24_area_mt2" numeric(8,2) DEFAULT 0,
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambienteadministrativo_equipamiento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_equipamiento_tipo";
CREATE TABLE "public"."infraestructura_h5_ambienteadministrativo_equipamiento_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(160) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambienteadministrativo_inmobiliario
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_inmobiliario";
CREATE TABLE "public"."infraestructura_h5_ambienteadministrativo_inmobiliario" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_inmobiliario_id_seq'::regclass),
  "infraestructura_h5_ambienteadministrativo_id" int4 NOT NULL,
  "n12_inmobiliario_tipo_id" int4 NOT NULL,
  "n12_numero_bueno" int2 DEFAULT 0,
  "n12_numero_regular" int2 DEFAULT 0,
  "n12_numero_malo" int2 DEFAULT 0,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambienteadministrativo_mobiliario_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_mobiliario_tipo";
CREATE TABLE "public"."infraestructura_h5_ambienteadministrativo_mobiliario_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(160) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambienteadministrativo_parque
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_parque";
CREATE TABLE "public"."infraestructura_h5_ambienteadministrativo_parque" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_parque_id_seq'::regclass),
  "infraestructura_h5_ambienteadministrativo_id" int4 NOT NULL,
  "n23_material_piso_tipo_id" int2 NOT NULL,
  "n23_piso_estadogeneral_tipo_id" int2 NOT NULL,
  "n23_area_cancha_mt2" numeric(8,2) DEFAULT 0,
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambienteadministrativo_patio
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_patio";
CREATE TABLE "public"."infraestructura_h5_ambienteadministrativo_patio" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_patio_id_seq'::regclass),
  "infraestructura_h5_ambienteadministrativo_id" int4 NOT NULL,
  "n22_material_piso_tipo_id" int2 NOT NULL,
  "n22_piso_estadogeneral_tipo_id" int2 NOT NULL,
  "n22_area_cancha_mt2" numeric(8,2) DEFAULT 0,
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambienteadministrativo_picina
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambienteadministrativo_picina";
CREATE TABLE "public"."infraestructura_h5_ambienteadministrativo_picina" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_picina_id_seq'::regclass),
  "infraestructura_h5_ambienteadministrativo_id" int4 NOT NULL,
  "n25_predominante_material_tipo" int2 NOT NULL,
  "n25_piso_estadogeneral_tipo_id" int2 NOT NULL,
  "n25_es_techado" bool NOT NULL DEFAULT false,
  "n25_capacidad" int4 NOT NULL,
  "n25_area_mt2" numeric(8,2) DEFAULT 0,
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambientepedagogico
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambientepedagogico";
CREATE TABLE "public"."infraestructura_h5_ambientepedagogico" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h4_ambientepedagogico_id_seq'::regclass),
  "infraestructura_juridiccion_geografica_id" int4 NOT NULL,
  "n51_ambiente_tipo_id" int4,
  "n51_ambiente_ancho_mts" numeric(8,2),
  "n51_ambiente_largo_mts" numeric(8,2),
  "n51_ambiente_alto_mts" numeric(8,2),
  "n13_ambiente_estadogeneral_tipo_id" int2,
  "n13_iluminacionnatural_estadogeneral_tipo_id" int2,
  "n13_iluminacionelectrica_estadogeneral_tipo_id" int2,
  "n13_seguridad_estadogeneral_tipo_id" int2,
  "n13_piso_estadogeneral_tipo_id" int2,
  "n13_pared_estadogeneral_tipo_id" int2,
  "n13_techo_estadogeneral_tipo_id" int2,
  "n13_ventanas_estadogeneral_tipo_id" int2,
  "n13_puertas_estadogeneral_tipo_id" int2,
  "n13_pintura_estadogeneral_tipo_id" int2,
  "n13_cieloraso_estadogeneral_tipo_id" int2,
  "n51_capacidad_ambiente" int2 NOT NULL DEFAULT 0,
  "n15_uso_orgcurricular_tipo_id" int2,
  "fecharegistro" timestamp(6) DEFAULT now(),
  "n51_es_uso_ambiente" bool,
  "n51_area_tipo_id" int4,
  "n51_especialidad_tipo_id" int4,
  "n51_talleres_esp_tipo_id" int4,
  "n51_talleres_esp_otro" varchar(255) COLLATE "pg_catalog"."default",
  "n51_es_uso_universal" bool NOT NULL DEFAULT false,
  "n51_es_ambiente_cielo_fal" bool NOT NULL DEFAULT false,
  "n51_ambiente_cielo_fal_tipo_id" int4,
  "n51_es_ambiente_puerta" bool NOT NULL DEFAULT false,
  "n51_1_seguro_tipo_id" int4,
  "n51_2_abre_tipo_id" int4,
  "n51_es_ambiente_ventana" bool NOT NULL DEFAULT false,
  "n51_ambiente_ventana_tipo_id" int4,
  "n51_es_iluminacion_electrica" bool NOT NULL DEFAULT false,
  "n51_es_iluminacion_natural" bool NOT NULL DEFAULT false,
  "n51_es_ambiente_muros" bool NOT NULL DEFAULT false,
  "n51_ambiente_muro_mat_tipo_id" int4,
  "n51_ambiente_muro_carac_tipo_id" int4,
  "n51_es_ambiente_revestimiento" bool NOT NULL DEFAULT false,
  "n51_ambiente_revest_mat_tipo_id" int4,
  "n51_ambiente_revest_carac_tipo_id" int4,
  "n51_es_ambiente_piso" bool NOT NULL DEFAULT false,
  "n51_ambiente_piso_mat_tipo_id" int4,
  "n51_ambiente_piso_carac_tipo_id" int4,
  "n51_es_ambiente_techo" bool NOT NULL DEFAULT false,
  "n51_nro_bloque" varchar(55) COLLATE "pg_catalog"."default",
  "n51_nro_piso" int4,
  "n51_es_uso_bth" bool,
  "estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambientepedagogico_deportivo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_deportivo";
CREATE TABLE "public"."infraestructura_h5_ambientepedagogico_deportivo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h4_ambientepedagogico_deportivo_id_seq'::regclass),
  "infraestructura_juridiccion_geografica_id" int4 NOT NULL,
  "n53_es_recreativo" bool NOT NULL DEFAULT false,
  "n53_es_deportivo" bool NOT NULL DEFAULT false,
  "n53_es_cultural" bool NOT NULL DEFAULT false,
  "n53_es_uso_universal" bool NOT NULL DEFAULT false,
  "n53_ambiente_tipo" int4,
  "n53_ambiente_area_mts" numeric(8,2),
  "n53_ambiente_capacidad" int2 NOT NULL,
  "n53_es_techado" bool NOT NULL DEFAULT false,
  "n53_es_iluminacion_electrica" bool NOT NULL DEFAULT false,
  "n53_es_iluminacion_natural" bool NOT NULL DEFAULT false,
  "n53_es_graderia" bool NOT NULL DEFAULT false,
  "n53_ambiente_graderia_tipo_id" int4,
  "n53_es_ambiente_cielo_fal" bool NOT NULL DEFAULT false,
  "n53_ambiente_cielo_fal_tipo_id" int4,
  "n53_es_ambiente_puerta" bool NOT NULL DEFAULT false,
  "n51_1_seguro_tipo_id" int4,
  "n53_es_ambiente_ventana" bool NOT NULL DEFAULT false,
  "n53_ambiente_ventana_tipo_id" int4,
  "n53_es_ambiente_muros" bool NOT NULL DEFAULT false,
  "n53_ambiente_muro_mat_tipo_id" int4,
  "n53_ambiente_muro_carac_tipo_id" int4,
  "n53_es_ambiente_revestimiento" bool NOT NULL DEFAULT false,
  "n53_ambiente_revest_mat_tipo_id" int4,
  "n53_ambiente_revest_carac_tipo_id" int4,
  "n53_es_ambiente_piso" bool NOT NULL DEFAULT false,
  "n53_ambiente_piso_mat_tipo_id" int4,
  "n53_ambiente_piso_carac_tipo_id" int4,
  "n51_2_abre_tipo_id" int4,
  "estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambientepedagogico_deportivo_ambiente_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_deportivo_ambiente_tipo";
CREATE TABLE "public"."infraestructura_h5_ambientepedagogico_deportivo_ambiente_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h4_ambientepedagogico_deportivo_ambiente_id_seq'::regclass),
  "infraestructura_ambiente" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambientepedagogico_deportivo_equipamiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_deportivo_equipamiento";
CREATE TABLE "public"."infraestructura_h5_ambientepedagogico_deportivo_equipamiento" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h4_ambientepedagogico_deportivo_equipami_id_seq'::regclass),
  "infraestructura_h5_ambientepedagogico_deportivo_id" int4 NOT NULL,
  "n53_1_equipamiento_tipo_id" int4,
  "n53_1_cantidad" int4,
  "n53_1_estado_equipamiento_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambientepedagogico_equipamiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_equipamiento";
CREATE TABLE "public"."infraestructura_h5_ambientepedagogico_equipamiento" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h4_ambientepedagogico_equipamiento_id_seq'::regclass),
  "infraestructura_h5_ambientepedagogico_id" int4 NOT NULL,
  "n53_equipos_tipo_id" int4,
  "n53_cantidad" int4,
  "n53_estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambientepedagogico_equipamiento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_equipamiento_tipo";
CREATE TABLE "public"."infraestructura_h5_ambientepedagogico_equipamiento_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(160) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambientepedagogico_equipos_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_equipos_tipo";
CREATE TABLE "public"."infraestructura_h5_ambientepedagogico_equipos_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(160) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambientepedagogico_mobiliario
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_mobiliario";
CREATE TABLE "public"."infraestructura_h5_ambientepedagogico_mobiliario" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h4_ambientepedagogico_mobiliario_id_seq'::regclass),
  "infraestructura_h5_ambientepedagogico_id" int4 NOT NULL,
  "n52_mobiliario_tipo_id" int4,
  "n52_cantidad" int4,
  "n52_estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_ambientepedagogico_mobiliario_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_ambientepedagogico_mobiliario_tipo";
CREATE TABLE "public"."infraestructura_h5_ambientepedagogico_mobiliario_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(160) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_inmobiliario_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_inmobiliario_tipo";
CREATE TABLE "public"."infraestructura_h5_inmobiliario_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_inmobiliario_tipo_id_seq'::regclass),
  "infraestructura_inmobiliario" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_material_piso_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_material_piso_tipo";
CREATE TABLE "public"."infraestructura_h5_material_piso_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_material_piso_tipo_id_seq'::regclass),
  "infraestructura_material_piso" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h5_material_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h5_material_tipo";
CREATE TABLE "public"."infraestructura_h5_material_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_material_tipo_id_seq'::regclass),
  "infraestructura_material" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_ambiente_genero_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_ambiente_genero_tipo";
CREATE TABLE "public"."infraestructura_h6_ambiente_genero_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_ambienteadministrativo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo";
CREATE TABLE "public"."infraestructura_h6_ambienteadministrativo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_id_seq'::regclass),
  "infraestructura_juridiccion_geografica_id" int4 NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_ambienteadministrativo_ambiente
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_ambiente";
CREATE TABLE "public"."infraestructura_h6_ambienteadministrativo_ambiente" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_ambiente_id_seq'::regclass),
  "infraestructura_h6_ambienteadministrativo_id" int4 NOT NULL,
  "n11_ambienteadministrativo_tipo_id" int4 NOT NULL,
  "n11_numero_bueno" int2 DEFAULT 0,
  "n11_numero_regular" int2 DEFAULT 0,
  "n11_numero_malo" int2 DEFAULT 0,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now(),
  "n61_ambiente_area_adm" numeric(6,2),
  "n61_es_ambiente_techo" bool NOT NULL DEFAULT false,
  "n61_es_ambiente_cielo_fal" bool NOT NULL DEFAULT false,
  "n61_ambiente_cielo_fal_tipo_id" int4,
  "n61_es_ambiente_puerta" bool NOT NULL DEFAULT false,
  "n61_1_seguro_tipo_id" int4,
  "n61_es_ambiente_ventana" bool NOT NULL DEFAULT false,
  "n61_ambiente_ventana_tipo_id" int4,
  "n61_es_ambiente_muros" bool NOT NULL DEFAULT false,
  "n61_ambiente_muro_mat_tipo_id" int4,
  "n61_ambiente_muro_carac_tipo_id" int4,
  "n61_es_ambiente_revestimiento" bool NOT NULL DEFAULT false,
  "n61_ambiente_revest_mat_tipo_id" int4,
  "n61_ambiente_revest_carac_tipo_id" int4,
  "n61_es_ambiente_piso" bool NOT NULL DEFAULT false,
  "n61_ambiente_piso_mat_tipo_id" int4,
  "n61_ambiente_piso_carac_tipo_id" int4,
  "n61_2_abre_tipo_id" int4,
  "estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_ambienteadministrativo_equipamiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_equipamiento";
CREATE TABLE "public"."infraestructura_h6_ambienteadministrativo_equipamiento" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h6_ambienteadministrativo_equipamiento_id_seq'::regclass),
  "infraestructura_h6_ambienteadministrativo_ambiente_id" int4 NOT NULL,
  "n63_equipamiento_tipo_id" int4,
  "n63_cantidad" int4,
  "n63_estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_ambienteadministrativo_equipamiento_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_equipamiento_tipo";
CREATE TABLE "public"."infraestructura_h6_ambienteadministrativo_equipamiento_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(160) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_ambienteadministrativo_inter_dormitorios
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_inter_dormitorios";
CREATE TABLE "public"."infraestructura_h6_ambienteadministrativo_inter_dormitorios" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_inter_dormitor_id_seq'::regclass),
  "infraestructura_h6_ambienteadministrativo_internado_est_id" int4 NOT NULL,
  "n34_ambiente_tipo_id" int4,
  "n34_ambiente_cantidad" int4,
  "n34_ambiente_area" numeric(6,2),
  "n34_ambiente_cama_literas" int4,
  "n34_ambiente_cama_simples" int4,
  "n34_es_ambiente_techo" bool NOT NULL DEFAULT false,
  "n34_es_ambiente_cielo_fal" bool NOT NULL DEFAULT false,
  "n34_ambiente_cielo_fal_tipo_id" int4,
  "n34_es_ambiente_puerta" bool NOT NULL DEFAULT false,
  "n34_1_seguro_tipo_id" int4,
  "n34_es_ambiente_ventana" bool NOT NULL DEFAULT false,
  "n34_ambiente_ventana_tipo_id" int4,
  "n34_es_ambiente_muros" bool NOT NULL DEFAULT false,
  "n34_ambiente_muro_mat_tipo_id" int4,
  "n34_ambiente_muro_carac_tipo_id" int4,
  "n34_es_ambiente_revestimiento" bool NOT NULL DEFAULT false,
  "n34_ambiente_revest_mat_tipo_id" int4,
  "n34_ambiente_revest_carac_tipo_id" int4,
  "n34_es_ambiente_piso" bool NOT NULL DEFAULT false,
  "n34_ambiente_piso_mat_tipo_id" int4,
  "n34_ambiente_piso_carac_tipo_id" int4,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now(),
  "n34_2_abre_tipo_id" int4,
  "estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_ambienteadministrativo_internado_est
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_internado_est";
CREATE TABLE "public"."infraestructura_h6_ambienteadministrativo_internado_est" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_internado_est_id_seq'::regclass),
  "infraestructura_h6_ambienteadministrativo_id" int4 NOT NULL,
  "n31_es_internado_est" bool NOT NULL DEFAULT false,
  "n32_separacion_fem_mas" bool,
  "n33_responsable_tipo_id" int4,
  "n34_dormitorio_tipo_id" int4,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_ambienteadministrativo_mobiliario
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_mobiliario";
CREATE TABLE "public"."infraestructura_h6_ambienteadministrativo_mobiliario" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h6_ambienteadministrativo_mobiliario_id_seq'::regclass),
  "infraestructura_h6_ambienteadministrativo_ambiente_id" int4 NOT NULL,
  "n21_mobiliario_tipo_id" int4,
  "n21_cantidad" int4,
  "n21_estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_ambienteadministrativo_mobiliario_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_mobiliario_tipo";
CREATE TABLE "public"."infraestructura_h6_ambienteadministrativo_mobiliario_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(160) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_ambienteadministrativo_serv_alimentacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_serv_alimentacion";
CREATE TABLE "public"."infraestructura_h6_ambienteadministrativo_serv_alimentacion" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_serv_alimentac_id_seq'::regclass),
  "infraestructura_h6_ambienteadministrativo_id" int4 NOT NULL,
  "n41_ambiente_alimentacion_tipo_id" int4,
  "n41_metros_area" numeric(6,2),
  "n41_es_ambiente_techo" bool NOT NULL DEFAULT false,
  "n41_es_ambiente_cielo_fal" bool NOT NULL DEFAULT false,
  "n41_ambiente_cielo_fal_tipo_id" int4,
  "n41_es_ambiente_puerta" bool NOT NULL DEFAULT false,
  "n41_1_seguro_tipo_id" int4,
  "n41_es_ambiente_ventana" bool NOT NULL DEFAULT false,
  "n41_ambiente_ventana_tipo_id" int4,
  "n41_es_ambiente_muros" bool NOT NULL DEFAULT false,
  "n41_ambiente_muro_mat_tipo_id" int4,
  "n41_ambiente_muro_carac_tipo_id" int4,
  "n41_es_ambiente_revestimiento" bool NOT NULL DEFAULT false,
  "n41_ambiente_revest_mat_tipo_id" int4,
  "n41_ambiente_revest_carac_tipo_id" int4,
  "n41_es_ambiente_piso" bool NOT NULL DEFAULT false,
  "n41_ambiente_piso_mat_tipo_id" int4,
  "n41_ambiente_piso_carac_tipo_id" int4,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now(),
  "n41_2_abre_tipo_id" int4,
  "estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_ambienteadministrativo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_tipo";
CREATE TABLE "public"."infraestructura_h6_ambienteadministrativo_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_ambienteadministrativo_tipo_id_seq'::regclass),
  "infraestructura_ambiente" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_ambienteadministrativo_viv_maestros
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_ambienteadministrativo_viv_maestros";
CREATE TABLE "public"."infraestructura_h6_ambienteadministrativo_viv_maestros" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h5_ambienteadministrativo_viv_maestros_id_seq'::regclass),
  "infraestructura_h6_ambienteadministrativo_id" int4 NOT NULL,
  "n21_numero_ambientes" int2 DEFAULT 0,
  "n21_numero_habitantes" int2 DEFAULT 0,
  "n21_numero_banios" int2 DEFAULT 0,
  "n21_numero_duchas" int2 DEFAULT 0,
  "n21_numero_cocinas" int2 DEFAULT 0,
  "n21_metros_area" numeric(6,2),
  "n21_es_ambiente_techo" bool NOT NULL DEFAULT false,
  "n21_es_ambiente_cielo_fal" bool NOT NULL DEFAULT false,
  "n21_ambiente_cielo_fal_tipo_id" int4,
  "n21_es_ambiente_puerta" bool NOT NULL DEFAULT false,
  "n21_1_seguro_tipo_id" int4,
  "n21_es_ambiente_ventana" bool NOT NULL DEFAULT false,
  "n21_ambiente_ventana_tipo_id" int4,
  "n21_es_ambiente_muros" bool NOT NULL DEFAULT false,
  "n21_ambiente_muro_mat_tipo_id" int4,
  "n21_ambiente_muro_carac_tipo_id" int4,
  "n21_es_ambiente_revestimiento" bool NOT NULL DEFAULT false,
  "n21_ambiente_revest_mat_tipo_id" int4,
  "n21_ambiente_revest_carac_tipo_id" int4,
  "n21_es_ambiente_piso" bool NOT NULL DEFAULT false,
  "n21_ambiente_piso_mat_tipo_id" int4,
  "n21_ambiente_piso_carac_tipo_id" int4,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now(),
  "n21_2_abre_tipo_id" int4,
  "estado_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_equipamiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_equipamiento";
CREATE TABLE "public"."infraestructura_h6_equipamiento" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h6_equipamiento_id_seq'::regclass),
  "infraestructura_juridiccion_geografica_id" int4 NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_equipamiento_alimentacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_equipamiento_alimentacion";
CREATE TABLE "public"."infraestructura_h6_equipamiento_alimentacion" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h6_equipamiento_alimentacion_id_seq'::regclass),
  "infraestructura_h6_equipamiento_id" int4 NOT NULL,
  "n3_servicio_alimentacion_tipo_id" int4 NOT NULL,
  "n3_nro_ambientes" int4 NOT NULL,
  "n3_ambientes_estadogeneral_tipo_id" int4 NOT NULL,
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_equipamiento_dormitorio
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_equipamiento_dormitorio";
CREATE TABLE "public"."infraestructura_h6_equipamiento_dormitorio" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h6_equipamiento_dormitorio_id_seq'::regclass),
  "infraestructura_h6_equipamiento_id" int4 NOT NULL,
  "n2_dormitorio_genero_tipo_id" int2,
  "n2_cantidad_dormitorios" int4 NOT NULL DEFAULT 0,
  "n2_pared_estadogeneral_tipo_id" int2,
  "n2_techo_estadogeneral_tipo_id" int2,
  "n2_piso_estadogeneral_tipo_id" int2,
  "n2_cielo_estadogeneral_tipo_id" int2,
  "n2_camaliteras" int4 NOT NULL DEFAULT 0,
  "n2_camasimples" int4 NOT NULL DEFAULT 0,
  "n2_camaotro" int4 NOT NULL DEFAULT 0,
  "n1_aream2" numeric(8,2) DEFAULT 0,
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_equipamiento_pedagogico
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_equipamiento_pedagogico";
CREATE TABLE "public"."infraestructura_h6_equipamiento_pedagogico" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h6_equipamiento_pedagogico_id_seq'::regclass),
  "infraestructura_h6_equipamiento_id" int4 NOT NULL,
  "n4_mobiliario_tipo_id" int4 NOT NULL,
  "n4_numero_aula" int4 NOT NULL,
  "n4_numero_taller" int4 NOT NULL,
  "n4_numero_laboratorio" int4 NOT NULL,
  "n4_numero_biblioteca" int4 NOT NULL,
  "n4_numero_sala" int4 NOT NULL,
  "n4_mobiliario_estadogeneral_tipo_id" int4 NOT NULL,
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_equipamiento_pedagogico_adicional
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_equipamiento_pedagogico_adicional";
CREATE TABLE "public"."infraestructura_h6_equipamiento_pedagogico_adicional" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h6_equipamiento_pedagogico_adicional_id_seq'::regclass),
  "infraestructura_h6_equipamiento_id" int4 NOT NULL,
  "n5_mobiliario_adicional_tipo_id" int4 NOT NULL,
  "n5_cantidad" int4 NOT NULL,
  "n5_equipamiento_adiciona_estadogeneral_tipo_id" int4 NOT NULL,
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_equipamiento_vivienda
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_equipamiento_vivienda";
CREATE TABLE "public"."infraestructura_h6_equipamiento_vivienda" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_h6_equipamiento_vivienda_id_seq'::regclass),
  "infraestructura_h6_equipamiento_id" int4 NOT NULL,
  "n1_pared_estadogeneral_tipo_id" int2,
  "n1_techo_estadogeneral_tipo_id" int2,
  "n1_piso_estadogeneral_tipo_id" int2,
  "n1_cielo_estadogeneral_tipo_id" int2,
  "n1_numeroambientes" int4 DEFAULT 0,
  "n1_numerohambientes" int4 DEFAULT 0,
  "n1_es_banio" bool NOT NULL DEFAULT false,
  "n1_es_ducha" bool NOT NULL DEFAULT false,
  "n1_es_cocina" bool NOT NULL DEFAULT false,
  "n1_aream2" numeric(8,2) DEFAULT 0,
  "fecharegistro" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_mobiliario_adicional_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_mobiliario_adicional_tipo";
CREATE TABLE "public"."infraestructura_h6_mobiliario_adicional_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_mobiliario_adicional_tipo_id_seq'::regclass),
  "infraestructura_mobiliario_adicional" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_mobiliario_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_mobiliario_tipo";
CREATE TABLE "public"."infraestructura_h6_mobiliario_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_mobiliario_tipo_id_seq'::regclass),
  "infraestructura_mobiliario" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_responsable_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_responsable_tipo";
CREATE TABLE "public"."infraestructura_h6_responsable_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(60) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_h6_servicio_alimentacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_h6_servicio_alimentacion_tipo";
CREATE TABLE "public"."infraestructura_h6_servicio_alimentacion_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_servicio_alimentacion_tipo_id_seq'::regclass),
  "infraestructura_servicio_alimentacion" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for infraestructura_juridiccion_geografica
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_juridiccion_geografica";
CREATE TABLE "public"."infraestructura_juridiccion_geografica" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_juridiccion_geografica_id_seq'::regclass),
  "juridiccion_geografica_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "fechaoperativo" date NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now(),
  "infraestructura" int4,
  "latitud_x" float4,
  "longitud_y" float4
)
;

-- ----------------------------
-- Table structure for infraestructura_juridiccion_geografica_municipio_centroide
-- ----------------------------
DROP TABLE IF EXISTS "public"."infraestructura_juridiccion_geografica_municipio_centroide";
CREATE TABLE "public"."infraestructura_juridiccion_geografica_municipio_centroide" (
  "id" int4 NOT NULL DEFAULT nextval('infraestructura_juridiccion_geografica_municipio_centroi_id_seq'::regclass),
  "lugar_tipo_id_municipio2012" int4 NOT NULL,
  "depto" varchar(20) COLLATE "pg_catalog"."default",
  "prov" varchar(50) COLLATE "pg_catalog"."default",
  "mun" varchar(150) COLLATE "pg_catalog"."default",
  "pob" int4,
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "fecharegistro" timestamp(6) DEFAULT now(),
  "latitud_x" float4,
  "longitud_y" float4
)
;

-- ----------------------------
-- Table structure for institucionadministrativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucionadministrativa";
CREATE TABLE "public"."institucionadministrativa" (
  "id" int4 NOT NULL,
  "le_juridicciongeografica_id" int4 NOT NULL,
  "estadoinstitucion_tipo_id" int2 NOT NULL,
  "institucionadministrativa" varchar(100) COLLATE "pg_catalog"."default",
  "fecha_creacion" date,
  "fecha_cierre" date,
  "institucionadministrativa_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for institucionadministrativa_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucionadministrativa_tipo";
CREATE TABLE "public"."institucionadministrativa_tipo" (
  "id" int4 NOT NULL,
  "institucionadministrativa" varchar(150) COLLATE "pg_catalog"."default",
  "obs" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for institucioneducativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa";
CREATE TABLE "public"."institucioneducativa" (
  "id" int4 NOT NULL,
  "le_juridicciongeografica_id" int4 NOT NULL,
  "estadoinstitucion_tipo_id" int2 NOT NULL,
  "convenio_tipo_id" int2 NOT NULL,
  "dependencia_tipo_id" int2 NOT NULL,
  "institucioneducativa_tipo_id" int2 NOT NULL,
  "orgcurricular_tipo_id" int2 NOT NULL,
  "institucioneducativa" varchar(255) COLLATE "pg_catalog"."default",
  "rue_ue" int2,
  "fecha_resolucion" date,
  "nro_resolucion" varchar(45) COLLATE "pg_catalog"."default",
  "obs_rue" varchar(255) COLLATE "pg_catalog"."default",
  "des_ue_antes" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_creacion" date,
  "fecha_cierre" varchar(45) COLLATE "pg_catalog"."default",
  "institucioneducativa_acreditacion_tipo_id" int2,
  "obs_rue2" varchar(200) COLLATE "pg_catalog"."default",
  "des_ue_antes2" varchar(150) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6),
  "area_municipio" varchar(1) COLLATE "pg_catalog"."default",
  "fecha_fundacion" date
)
;

-- ----------------------------
-- Table structure for institucioneducativa_acreditacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_acreditacion_tipo";
CREATE TABLE "public"."institucioneducativa_acreditacion_tipo" (
  "id" int4 NOT NULL,
  "institucioneducativa_acreditacion" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for institucioneducativa_area_especial_autorizado
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_area_especial_autorizado";
CREATE TABLE "public"."institucioneducativa_area_especial_autorizado" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_area_especial_autorizado_id_seq'::regclass),
  "institucioneducativa_id" int4,
  "especial_area_tipo_id" int2,
  "fecha_registro" date DEFAULT now(),
  "fecha_modificacion" date
)
;

-- ----------------------------
-- Table structure for institucioneducativa_asignatura_tecnologico
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_asignatura_tecnologico";
CREATE TABLE "public"."institucioneducativa_asignatura_tecnologico" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_asignatura_tecnologico_id_seq'::regclass),
  "institucioneducativa_id" int4,
  "asignatura_tipo_id" int4,
  "fecha_registro" date DEFAULT now(),
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for institucioneducativa_control_operativo_menus
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_control_operativo_menus";
CREATE TABLE "public"."institucioneducativa_control_operativo_menus" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_control_operativo_menus_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "nota_tipo_id" int2 NOT NULL,
  "estado_menu" int2 NOT NULL,
  "fecharegistro" date
)
;

-- ----------------------------
-- Table structure for institucioneducativa_curso
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_curso";
CREATE TABLE "public"."institucioneducativa_curso" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_curso_id_seq'::regclass),
  "periodo_tipo_id" int2 NOT NULL,
  "ciclo_tipo_id" int2 NOT NULL,
  "grado_tipo_id" int2 NOT NULL,
  "paralelo_tipo_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "nivel_tipo_id" int2 NOT NULL,
  "sucursal_tipo_id" int4 NOT NULL,
  "turno_tipo_id" int2 NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "multigrado" int4,
  "desayuno_escolar" int4,
  "modalidad_ensenanza" int4,
  "idioma_mas_hablado_tipo_id" int4,
  "idioma_reg_hablado_tipo_id" int4,
  "idioma_men_hablado_tipo_id" int4,
  "pri_len_ensenanza_tipo_id" int4,
  "seg_len_ensenanza_tipo_id" int4,
  "ter_len_ensenanza_tipo_id" int4,
  "fin_des_escolar_tipo_id" int4,
  "nro_materias" int4,
  "consolidado" int4,
  "periodicidad_tipo_id" int4,
  "resolucion" int4,
  "periodicidad" varchar(7) COLLATE "pg_catalog"."default",
  "carreraespecialidad_tipo_id" int4,
  "modalidad_tipo_id" int4,
  "programa_tipo_id" int4,
  "nivelacreditacion_tipo_id" int4,
  "lugartipo_id" int4,
  "fecha_inicio" date,
  "fecha_fin" date,
  "fecharegistro_cuso" date,
  "lugar" varchar(100) COLLATE "pg_catalog"."default",
  "duracionhoras" int2,
  "numeroperiodo" int2,
  "programa_tipo_otros" varchar(60) COLLATE "pg_catalog"."default",
  "facilitador" varchar(120) COLLATE "pg_catalog"."default",
  "maestro_inscripcion_id_asesor" int4,
  "nota_periodo_tipo_id" int4,
  "superior_institucioneducativa_periodo_id" int4,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for institucioneducativa_curso_datos
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_curso_datos";
CREATE TABLE "public"."institucioneducativa_curso_datos" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_curso_datos_id_seq'::regclass),
  "lugar_tipo_id_seccion" int4 NOT NULL,
  "localidad" varchar(255) COLLATE "pg_catalog"."default",
  "institucioneducativa_curso_id" int4 NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "esactivo" bool,
  "plancurricular_tipo_id" int4,
  "fecha_cerrar" timestamp(6)
)
;

-- ----------------------------
-- Table structure for institucioneducativa_curso_especial
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_curso_especial";
CREATE TABLE "public"."institucioneducativa_curso_especial" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_curso_especial_id_seq'::regclass),
  "institucioneducativa_curso_id" int4,
  "especial_programa_tipo_id" int2,
  "especial_servicio_tipo_id" int2,
  "especial_area_tipo_id" int2,
  "especial_nivel_tecnico_tipo_id" int4 NOT NULL,
  "especial_tecnica_especialidad_tipo_id" int2,
  "especial_modalidad_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for institucioneducativa_curso_oferta
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_curso_oferta";
CREATE TABLE "public"."institucioneducativa_curso_oferta" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_curso_oferta_id_seq'::regclass),
  "asignatura_tipo_id" int4 NOT NULL,
  "horasmes" int4,
  "insitucioneducativa_curso_id" int4,
  "superior_modulo_periodo_id" int4
)
;

-- ----------------------------
-- Table structure for institucioneducativa_curso_oferta_maestro
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_curso_oferta_maestro";
CREATE TABLE "public"."institucioneducativa_curso_oferta_maestro" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_curso_oferta_maestro_id_seq'::regclass),
  "institucioneducativa_curso_oferta_id" int4 NOT NULL,
  "maestro_inscripcion_id" int4 NOT NULL,
  "horas_mes" int2,
  "fecha_registro" date,
  "nota_tipo_id" int2,
  "fecha_modificacion" date,
  "es_vigente_maestro" bool,
  "item" varchar(7) COLLATE "pg_catalog"."default",
  "financiamiento_tipo_id" int2,
  "es_vigente_administrativo" bool,
  "asignacion_fecha_inicio" date,
  "asignacion_fecha_fin" date
)
;

-- ----------------------------
-- Table structure for institucioneducativa_datos
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_datos";
CREATE TABLE "public"."institucioneducativa_datos" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_datos_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "telefonos" varchar(50) COLLATE "pg_catalog"."default",
  "fax" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "sitio_web" varchar(50) COLLATE "pg_catalog"."default",
  "decreto_supremo" varchar(20) COLLATE "pg_catalog"."default",
  "fecha_decreto_supremo" date,
  "imagen" varchar(50) COLLATE "pg_catalog"."default",
  "rector" varchar(150) COLLATE "pg_catalog"."default",
  "vicerector" varchar(150) COLLATE "pg_catalog"."default",
  "nombre_sede_subsede" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for institucioneducativa_encuesta
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_encuesta";
CREATE TABLE "public"."institucioneducativa_encuesta" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_encuesta_id_seq'::regclass),
  "institucioneducativa_id" int4,
  "cantidad_sala" int2,
  "cantidad_computadora" int2,
  "anio_adquisicion" int4,
  "costo_internet" int2,
  "proveedor_ue_id" int4,
  "proveedor_otro" varchar(255) COLLATE "pg_catalog"."default",
  "proveedor_zona_id" int4,
  "foto1" text COLLATE "pg_catalog"."default",
  "foto2" text COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6),
  "observacion" varchar(255) COLLATE "pg_catalog"."default",
  "pago_otro" varchar(150) COLLATE "pg_catalog"."default",
  "tiene_sala" int2,
  "tiene_piso" int2,
  "tiene_internet" int2,
  "realiza_pago_id" int4,
  "tiene_senal" int2,
  "gestion_tipo_id" int4,
  "proveedor_zona_otro" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for institucioneducativa_especialidad_tecnico_humanistico
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_especialidad_tecnico_humanistico";
CREATE TABLE "public"."institucioneducativa_especialidad_tecnico_humanistico" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_especialidad_tecnico_humanistico_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "especialidad_tecnico_humanistico_tipo_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "fecha_registro" date NOT NULL DEFAULT now(),
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for institucioneducativa_historial_tramite
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_historial_tramite";
CREATE TABLE "public"."institucioneducativa_historial_tramite" (
  "id" int2 NOT NULL DEFAULT nextval('institucioneducativa_historial_tramite_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "tramite_id" int4,
  "tramite_tipo_id" int4,
  "nro_resolucion" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_resolucion" date NOT NULL,
  "fecha_formulario" date,
  "valor_anterior" text COLLATE "pg_catalog"."default",
  "valor_nuevo" text COLLATE "pg_catalog"."default",
  "observacion" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(0),
  "fecha_modificacion" timestamp(0),
  "usuario_registro_id" int4,
  "usuario_modificacion_id" int4
)
;

-- ----------------------------
-- Table structure for institucioneducativa_humanistico_tecnico
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_humanistico_tecnico";
CREATE TABLE "public"."institucioneducativa_humanistico_tecnico" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_humanistico_tecnico_id_seq'::regclass),
  "gestion_tipo_id" int4,
  "institucioneducativa_id" int4,
  "institucioneducativa" varchar(70) COLLATE "pg_catalog"."default",
  "esimpreso" bool,
  "grado_tipo_id" int2,
  "institucioneducativa_humanistico_tecnico_tipo_id" int4,
  "fecha_creacion" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for institucioneducativa_humanistico_tecnico_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_humanistico_tecnico_tipo";
CREATE TABLE "public"."institucioneducativa_humanistico_tecnico_tipo" (
  "id" int4 NOT NULL,
  "institucioneducativa_humanistico_tecnico_tipo" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for institucioneducativa_nivel_autorizado
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_nivel_autorizado";
CREATE TABLE "public"."institucioneducativa_nivel_autorizado" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_nivel_autorizado_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "nivel_tipo_id" int2,
  "fecha_registro" date DEFAULT now(),
  "fecha_modificacion" date
)
;

-- ----------------------------
-- Table structure for institucioneducativa_noacreditados_ddjj
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_noacreditados_ddjj";
CREATE TABLE "public"."institucioneducativa_noacreditados_ddjj" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_noacreditados_ddjj_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "fecha" timestamp(6) NOT NULL DEFAULT now(),
  "esabierta" bool
)
;

-- ----------------------------
-- Table structure for institucioneducativa_operativo_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_operativo_log";
CREATE TABLE "public"."institucioneducativa_operativo_log" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_operativo_log_id_seq'::regclass),
  "institucioneducativa_operativo_log_tipo_id" int2 NOT NULL,
  "gestion_tipo_id" int2 NOT NULL,
  "periodo_tipo_id" int2 NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "institucioneducativa_sucursal" int4 NOT NULL,
  "tabla" varchar(100) COLLATE "pg_catalog"."default",
  "identificador" varchar(100) COLLATE "pg_catalog"."default",
  "codigo" varchar(100) COLLATE "pg_catalog"."default",
  "nota_tipo_id" int2,
  "consolidacion_valor" int2,
  "consulta_sql" varchar(255) COLLATE "pg_catalog"."default",
  "descripcion" varchar(255) COLLATE "pg_catalog"."default",
  "esexitoso" bool NOT NULL DEFAULT true,
  "esonline" bool NOT NULL DEFAULT true,
  "usuario" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_registro" timestamp(6) NOT NULL DEFAULT now(),
  "cliente_descripcion" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for institucioneducativa_operativo_log_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_operativo_log_tipo";
CREATE TABLE "public"."institucioneducativa_operativo_log_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_operativo_log_tipo_id_seq'::regclass),
  "operativo_log" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for institucioneducativa_operativo_validacionpersonal
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_operativo_validacionpersonal";
CREATE TABLE "public"."institucioneducativa_operativo_validacionpersonal" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_operativo_validacionpersonal_id_seq'::regclass),
  "gestion_tipo_id" int2 NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "nota_tipo_id" int2 NOT NULL,
  "rol_tipo_id" int4 NOT NULL,
  "fecha_registro" timestamp(6) DEFAULT now(),
  "fecha_modificacion" timestamp(6),
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "origen" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for institucioneducativa_registro_operativo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_registro_operativo_tipo";
CREATE TABLE "public"."institucioneducativa_registro_operativo_tipo" (
  "id" int2 NOT NULL,
  "operativo" int4 NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for institucioneducativa_sucursal
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_sucursal";
CREATE TABLE "public"."institucioneducativa_sucursal" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_sucursal_id_seq'::regclass),
  "sucursal_tipo_id" int4 NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "le_juridicciongeografica_id" int4 NOT NULL,
  "nombre_subcea" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "telefono1" varchar(10) COLLATE "pg_catalog"."default",
  "telefono2" varchar(10) COLLATE "pg_catalog"."default",
  "referencia_telefono2" varchar(45) COLLATE "pg_catalog"."default",
  "fax" varchar(10) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "casilla" varchar(45) COLLATE "pg_catalog"."default",
  "cod_cerrada_id" int2 NOT NULL,
  "periodo_tipo_id" int2 NOT NULL,
  "turno_tipo_id" int2,
  "direccion" varchar(100) COLLATE "pg_catalog"."default",
  "zona" varchar(50) COLLATE "pg_catalog"."default",
  "esabierta" bool
)
;

-- ----------------------------
-- Table structure for institucioneducativa_sucursal_especial_cierre
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_sucursal_especial_cierre";
CREATE TABLE "public"."institucioneducativa_sucursal_especial_cierre" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_sucursal_especial_cierre_id_seq'::regclass),
  "institucioneducativa_sucursal_id" int4 NOT NULL,
  "fecha" timestamp(6) DEFAULT now(),
  "obs" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "esactivo" bool NOT NULL
)
;

-- ----------------------------
-- Table structure for institucioneducativa_sucursal_tramite
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_sucursal_tramite";
CREATE TABLE "public"."institucioneducativa_sucursal_tramite" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativa_sucursal_tramite_id_seq'::regclass),
  "institucioneducativa_sucursal_id" int4 NOT NULL,
  "periodo_estado_id" int2 NOT NULL,
  "tramite_estado_id" int2 NOT NULL,
  "tramite_tipo_id" int2 NOT NULL,
  "distrito_cod" int4,
  "fechainicio" date,
  "usuario_id_inicio" int4 NOT NULL,
  "fechamodificacion" date,
  "usuario_id_modificacion" int4
)
;

-- ----------------------------
-- Table structure for institucioneducativa_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_tipo";
CREATE TABLE "public"."institucioneducativa_tipo" (
  "id" int2 NOT NULL,
  "descripcion" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "orgcurricular_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for institucioneducativa_usuario
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativa_usuario";
CREATE TABLE "public"."institucioneducativa_usuario" (
  "id" int4 NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "usuario_id" int4 NOT NULL,
  "esactivo" bool NOT NULL
)
;

-- ----------------------------
-- Table structure for institucioneducativanoacreditado
-- ----------------------------
DROP TABLE IF EXISTS "public"."institucioneducativanoacreditado";
CREATE TABLE "public"."institucioneducativanoacreditado" (
  "id" int4 NOT NULL DEFAULT nextval('institucioneducativanoacreditado_id_seq'::regclass),
  "dependencia_tipo_id" int2 NOT NULL,
  "orgcurricular_tipo_id" int2 NOT NULL,
  "institucioneducativa" varchar(70) COLLATE "pg_catalog"."default",
  "cod_dis" int4,
  "cod_rue" varchar(12) COLLATE "pg_catalog"."default",
  "gestion_id" int2,
  "esimpreso" bool
)
;

-- ----------------------------
-- Table structure for instruccion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."instruccion_tipo";
CREATE TABLE "public"."instruccion_tipo" (
  "id" int2 NOT NULL,
  "instruccion" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for jdp_circunscripcion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_circunscripcion_tipo";
CREATE TABLE "public"."jdp_circunscripcion_tipo" (
  "id" int2 NOT NULL,
  "circunscripcion" varchar(45) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for jdp_clasificacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_clasificacion_tipo";
CREATE TABLE "public"."jdp_clasificacion_tipo" (
  "id" int4 NOT NULL,
  "clasificacion" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for jdp_comision_juegos_cupo
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_comision_juegos_cupo";
CREATE TABLE "public"."jdp_comision_juegos_cupo" (
  "id" int4 NOT NULL DEFAULT nextval('jdp_comision_juegos_cupo_id_seq'::regclass),
  "prueba_tipo_id" int4,
  "comision_tipo_id" int4 NOT NULL,
  "cupo" int4 NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for jdp_comision_juegos_datos
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_comision_juegos_datos";
CREATE TABLE "public"."jdp_comision_juegos_datos" (
  "id" int4 NOT NULL DEFAULT nextval('jdp_comision_juegos_datos_id_seq'::regclass),
  "carnet_identidad" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "paterno" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "materno" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "celular" int4 NOT NULL,
  "correo" varchar(255) COLLATE "pg_catalog"."default",
  "comision_tipo_id" int4 NOT NULL,
  "foto" text COLLATE "pg_catalog"."default",
  "genero_tipo" int4,
  "_disciplina_tipo_id" int4,
  "departamento_tipo" int4,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "prueba_tipo_id" int4,
  "esentrenador" bool,
  "gestion_tipo_id" int4 NOT NULL,
  "posicion" int4,
  "avc" varchar(20) COLLATE "pg_catalog"."default",
  "institucioneducativa_id" int4,
  "fase_tipo_id" int4 NOT NULL DEFAULT 4
)
;

-- ----------------------------
-- Table structure for jdp_comision_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_comision_tipo";
CREATE TABLE "public"."jdp_comision_tipo" (
  "id" int4 NOT NULL,
  "comision" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "cantidad" int4,
  "estado" bool,
  "nivel_tipo_id" int4,
  "esactivo" bool
)
;

-- ----------------------------
-- Table structure for jdp_delegado_inscripcion_juegos
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_delegado_inscripcion_juegos";
CREATE TABLE "public"."jdp_delegado_inscripcion_juegos" (
  "id" int4 NOT NULL DEFAULT nextval('jdp_delegado_inscripcion_juegos_id_seq'::regclass),
  "fase_tipo_id" int4,
  "persona_id" int4,
  "comision_tipo_id" int4,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "lugar_tipo_id" int4,
  "gestion_tipo_id" int4,
  "ruta_imagen" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for jdp_disciplina_participacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_disciplina_participacion_tipo";
CREATE TABLE "public"."jdp_disciplina_participacion_tipo" (
  "id" int4 NOT NULL,
  "disciplina_participacion" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "cantidad" int4
)
;

-- ----------------------------
-- Table structure for jdp_disciplina_prueba_participacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_disciplina_prueba_participacion";
CREATE TABLE "public"."jdp_disciplina_prueba_participacion" (
  "id" int4 NOT NULL DEFAULT nextval('jdp_disciplina_prueba_participacion_id_seq'::regclass),
  "disciplina_tipo_id" int4,
  "prueba_participacion_tipo_id" int4,
  "cantidad" int4,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for jdp_disciplina_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_disciplina_tipo";
CREATE TABLE "public"."jdp_disciplina_tipo" (
  "id" int4 NOT NULL,
  "nivel_tipo_id" int2 NOT NULL,
  "disciplina" varchar(45) COLLATE "pg_catalog"."default",
  "estado" bool,
  "cantidad" varchar(32) COLLATE "pg_catalog"."default",
  "cantidad_maestro" int4,
  "cantidad_padre" int4,
  "disciplina_participacion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for jdp_equipo_estudiante_inscripcion_juegos
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_equipo_estudiante_inscripcion_juegos";
CREATE TABLE "public"."jdp_equipo_estudiante_inscripcion_juegos" (
  "id" int4 NOT NULL DEFAULT nextval('jdp_equipo_estudiante_inscripcion_juegos_id_seq'::regclass),
  "estudiante_inscripcion_juegos_id" int4,
  "equipo_id" int4,
  "equipo_nombre" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for jdp_estudiante_datopersonal
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_estudiante_datopersonal";
CREATE TABLE "public"."jdp_estudiante_datopersonal" (
  "id" int4 NOT NULL DEFAULT nextval('jdp_estudiante_datopersonal_id_seq'::regclass),
  "estudiante_id" int4,
  "gestion_tipo_id" int4,
  "estatura" float4,
  "peso" numeric(5,2),
  "foto" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(155) COLLATE "pg_catalog"."default",
  "talla" varchar(4) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for jdp_estudiante_inscripcion_juegos
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_estudiante_inscripcion_juegos";
CREATE TABLE "public"."jdp_estudiante_inscripcion_juegos" (
  "id" int4 NOT NULL DEFAULT nextval('jdp_estudiante_inscripcion_juegos_id_seq'::regclass),
  "estudiante_inscripcion_id" int4 NOT NULL,
  "prueba_tipo_id" int2 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "fase_tipo_id" int2 NOT NULL,
  "posicion" int4,
  "distancia" float4,
  "obs" varchar(105) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_modificacion" date,
  "usuario_id" int4,
  "puntaje" float8,
  "marca" varchar(100) COLLATE "pg_catalog"."default",
  "impreso" bool,
  "esactivo" bool DEFAULT true
)
;

-- ----------------------------
-- Table structure for jdp_fase_regla
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_fase_regla";
CREATE TABLE "public"."jdp_fase_regla" (
  "id" int4 NOT NULL,
  "nivel_tipo_id" int4,
  "fase_tipo_id" int4,
  "activo" bool,
  "fecha_ini" timestamp(0),
  "fecha_fin" timestamp(0)
)
;

-- ----------------------------
-- Table structure for jdp_fase_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_fase_tipo";
CREATE TABLE "public"."jdp_fase_tipo" (
  "id" int2 NOT NULL,
  "fase" varchar(45) COLLATE "pg_catalog"."default",
  "obs" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for jdp_modalidad_prueba
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_modalidad_prueba";
CREATE TABLE "public"."jdp_modalidad_prueba" (
  "id" int4 NOT NULL,
  "prueba_tipo_id" int4,
  "modalidad_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for jdp_modalidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_modalidad_tipo";
CREATE TABLE "public"."jdp_modalidad_tipo" (
  "id" int4 NOT NULL,
  "modalidad" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for jdp_persona_inscripcion_juegos
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_persona_inscripcion_juegos";
CREATE TABLE "public"."jdp_persona_inscripcion_juegos" (
  "id" int4 NOT NULL,
  "estudiante_inscripcion_juegos_id" int4,
  "persona_id" int4,
  "comision_tipo_id" int4,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for jdp_prueba_participacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_prueba_participacion_tipo";
CREATE TABLE "public"."jdp_prueba_participacion_tipo" (
  "id" int4 NOT NULL,
  "disciplina_participacion" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "cantidad" int4
)
;

-- ----------------------------
-- Table structure for jdp_prueba_regla
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_prueba_regla";
CREATE TABLE "public"."jdp_prueba_regla" (
  "id" int4 NOT NULL DEFAULT nextval('jdp_prueba_regla_id_seq'::regclass),
  "gestion_tipo_id" int4,
  "fase_tipo_id" int4,
  "clasificacion_tipo_id" int4,
  "ini_gestion_tipo_id" int4,
  "fin_gestion_tipo_id" int4,
  "cupo_inscripcion" int4,
  "cupo_presentacion" int4,
  "prueba_tipo_id" int4,
  "comision_cupo_inscripcion" int4 DEFAULT 1,
  "comision_cupo_presentacion" int4 DEFAULT 1
)
;
COMMENT ON COLUMN "public"."jdp_prueba_regla"."comision_cupo_inscripcion" IS 'CANTIDAD DE REGISTRO PERMITIDOS POR TIPO DE COMISION';
COMMENT ON COLUMN "public"."jdp_prueba_regla"."comision_cupo_presentacion" IS 'CANTIDAD DE COMISIONES PERMITIDAS POR PRUEBA';

-- ----------------------------
-- Table structure for jdp_prueba_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."jdp_prueba_tipo";
CREATE TABLE "public"."jdp_prueba_tipo" (
  "id" int2 NOT NULL,
  "genero_tipo_id" int4 NOT NULL,
  "disciplina_tipo_id" int4 NOT NULL,
  "prueba" varchar(45) COLLATE "pg_catalog"."default",
  "clasificador_puntuacion" varchar(1) COLLATE "pg_catalog"."default",
  "clasificador_tipo" varchar(1) COLLATE "pg_catalog"."default",
  "esactivo" bool,
  "prueba_participacion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for juegos_datos_seguimiento
-- ----------------------------
DROP TABLE IF EXISTS "public"."juegos_datos_seguimiento";
CREATE TABLE "public"."juegos_datos_seguimiento" (
  "id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "departamento_tipo_id" int4 NOT NULL,
  "nivel_tipo_id" int4 NOT NULL,
  "estudiante_cantidad_llegada" int2 NOT NULL,
  "estudiante_cantidad_salida" int2 NOT NULL,
  "delegado_cantidad_llegada" int2 NOT NULL,
  "delegado_cantidad_salida" int2 NOT NULL,
  "fecha_registro" timestamp(6) NOT NULL,
  "fecha_modificacion" timestamp(6),
  "usuario_registro" int4,
  "usuario_modificacion" int4
)
;

-- ----------------------------
-- Table structure for jurisdiccion_geografica
-- ----------------------------
DROP TABLE IF EXISTS "public"."jurisdiccion_geografica";
CREATE TABLE "public"."jurisdiccion_geografica" (
  "id" int4 NOT NULL,
  "lugar_tipo_id_localidad" int4 NOT NULL,
  "lugar_tipo_id_distrito" int4 NOT NULL,
  "obs" varchar(45) COLLATE "pg_catalog"."default",
  "cordx" float8,
  "cordy" float8,
  "distrito_tipo_id" int2,
  "lugar_tipo_id_localidad2012" int4,
  "circunscripcion_tipo_id" int2,
  "cod_nuc" char(5) COLLATE "pg_catalog"."default",
  "des_nuc" varchar(60) COLLATE "pg_catalog"."default",
  "direccion" varchar(255) COLLATE "pg_catalog"."default",
  "zona" varchar(255) COLLATE "pg_catalog"."default",
  "juridiccion_acreditacion_tipo_id" int2,
  "validacion_geografica_tipo_id" int4 DEFAULT 0,
  "fecha_modificacion_localizacion" timestamp(6),
  "fecha_modificacion_coordenada" timestamp(6),
  "fecha_modificacion" timestamp(6),
  "fecha_registro" timestamp(6),
  "usuario_id" int4
)
;

-- ----------------------------
-- Table structure for jurisdiccion_geografica_acreditacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."jurisdiccion_geografica_acreditacion_tipo";
CREATE TABLE "public"."jurisdiccion_geografica_acreditacion_tipo" (
  "id" int4 NOT NULL,
  "jurisdiccion_geografica_acreditacion" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for log_error
-- ----------------------------
DROP TABLE IF EXISTS "public"."log_error";
CREATE TABLE "public"."log_error" (
  "id" int4 NOT NULL DEFAULT nextval('log_error_id_seq'::regclass),
  "error" varchar(250) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "usuario" int4,
  "rude" varchar COLLATE "pg_catalog"."default",
  "ie" varchar COLLATE "pg_catalog"."default",
  "inscripcion_id" int4
)
;

-- ----------------------------
-- Table structure for log_regularizacion_maestro
-- ----------------------------
DROP TABLE IF EXISTS "public"."log_regularizacion_maestro";
CREATE TABLE "public"."log_regularizacion_maestro" (
  "id" int4 NOT NULL,
  "fecha" timestamp(6) NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "usuario_id" int4 NOT NULL,
  "browser" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "es_modificado" bool NOT NULL
)
;

-- ----------------------------
-- Table structure for log_transaccion
-- ----------------------------
DROP TABLE IF EXISTS "public"."log_transaccion";
CREATE TABLE "public"."log_transaccion" (
  "id" int8 NOT NULL,
  "key" int4 NOT NULL,
  "tabla" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha" timestamp(6) NOT NULL,
  "tipo_transaccion" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "ip" text COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_id" int4 NOT NULL,
  "observacion" text COLLATE "pg_catalog"."default" NOT NULL,
  "valor_nuevo" text COLLATE "pg_catalog"."default" NOT NULL,
  "valor_ant" text COLLATE "pg_catalog"."default",
  "sistema" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "archivo" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for lugar_nivel_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."lugar_nivel_tipo";
CREATE TABLE "public"."lugar_nivel_tipo" (
  "id" int2 NOT NULL,
  "nivel" varchar(45) COLLATE "pg_catalog"."default",
  "orden" varchar(45) COLLATE "pg_catalog"."default",
  "obs" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for lugar_reclusion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."lugar_reclusion_tipo";
CREATE TABLE "public"."lugar_reclusion_tipo" (
  "id" int2 NOT NULL,
  "lugar_reclusion" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for lugar_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."lugar_tipo";
CREATE TABLE "public"."lugar_tipo" (
  "id" int4 NOT NULL,
  "lugar_tipo_id" int4,
  "gestion_tipo_id" int4 NOT NULL,
  "pais_tipo_id" int2 NOT NULL,
  "lugar_nivel_id" int2 NOT NULL,
  "codigo" varchar(15) COLLATE "pg_catalog"."default",
  "lugar" varchar(125) COLLATE "pg_catalog"."default",
  "obs" varchar(145) COLLATE "pg_catalog"."default",
  "departamento_tipo_id" int2,
  "area2001" varchar(1) COLLATE "pg_catalog"."default",
  "area2012" varchar(1) COLLATE "pg_catalog"."default",
  "area_distrito" varchar(1) COLLATE "pg_catalog"."default",
  "poblacion" int4,
  "viviendas" int4
)
;

-- ----------------------------
-- Table structure for maestro_cuentabancaria
-- ----------------------------
DROP TABLE IF EXISTS "public"."maestro_cuentabancaria";
CREATE TABLE "public"."maestro_cuentabancaria" (
  "id" int4 NOT NULL DEFAULT nextval('maestro_cuentabancaria_id_seq'::regclass),
  "persona_id" int4 NOT NULL,
  "maestro_inscripcion_id" int4 NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "cargo_tipo_id" int4 NOT NULL,
  "entidadfinanciera_tipo_id" int4,
  "cuentabancaria" varchar(255) COLLATE "pg_catalog"."default",
  "carnet" varchar(255) COLLATE "pg_catalog"."default",
  "paterno" varchar COLLATE "pg_catalog"."default",
  "materno" varchar COLLATE "pg_catalog"."default",
  "nombre" varchar(255) COLLATE "pg_catalog"."default",
  "complemento" varchar(2) COLLATE "pg_catalog"."default",
  "esactivo" bool,
  "esoficial" bool NOT NULL DEFAULT true,
  "gestion_tipo_id" int4,
  "fecha_registro" timestamp(6) DEFAULT now(),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for maestro_inscripcion
-- ----------------------------
DROP TABLE IF EXISTS "public"."maestro_inscripcion";
CREATE TABLE "public"."maestro_inscripcion" (
  "id" int4 NOT NULL DEFAULT nextval('maestro_inscripcion_id_seq'::regclass),
  "cargo_tipo_id" int2 NOT NULL,
  "formacion_tipo_id" int2 NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "rda_planillas_id" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "persona_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "especialidad_tipo_id" int2 NOT NULL,
  "financiamiento_tipo_id" int2 NOT NULL,
  "periodo_tipo_id" int2 NOT NULL,
  "ref" varchar(80) COLLATE "pg_catalog"."default",
  "estadomaestro_id" int2,
  "rol_tipo_id" int2,
  "institucioneducativa_sucursal_id" int4 NOT NULL,
  "normalista" bool,
  "idioma_materno_id" int2,
  "leeescribebraile" bool,
  "estudia_idioma_materno_id" int4,
  "formaciondescripcion" varchar(50) COLLATE "pg_catalog"."default",
  "lugar_tipo" int4,
  "item_director" int4,
  "horas" int4,
  "item" varchar(6) COLLATE "pg_catalog"."default",
  "fecha_registro" date DEFAULT now(),
  "fecha_modificacion" date,
  "es_vigente_administrativo" bool DEFAULT false,
  "unidad_militar_tipo_id" int4,
  "recinto_penitenciario_tipo_id" int4,
  "educacion_diversa_tipo_id" int4,
  "asignacion_fecha_inicio" date,
  "asignacion_fecha_fin" date
)
;

-- ----------------------------
-- Table structure for maestro_inscripcion_especial
-- ----------------------------
DROP TABLE IF EXISTS "public"."maestro_inscripcion_especial";
CREATE TABLE "public"."maestro_inscripcion_especial" (
  "id" int4 NOT NULL DEFAULT nextval('maestro_inscripcion_especial_id_seq'::regclass),
  "maestro_inscripcion_id" int4 NOT NULL,
  "discapacidad" "public"."discapacidad_enum",
  "tipo_discapacidad" "public"."tipo_discapacidad_enum",
  "grado_discapacidad_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for maestro_inscripcion_idioma
-- ----------------------------
DROP TABLE IF EXISTS "public"."maestro_inscripcion_idioma";
CREATE TABLE "public"."maestro_inscripcion_idioma" (
  "id" int4 NOT NULL DEFAULT nextval('maestro_inscripcion_idioma_id_seq'::regclass),
  "idioma_materno_id" int2,
  "idiomaconoce_tipo_id_lee" int2,
  "idiomaconoce_tipo_id_habla" int2,
  "idiomaconoce_tipo_id_escribe" int2,
  "maestro_inscripcion_id" int4,
  "idioma_tipo_id_estudia" varchar(5) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for maestro_planillas
-- ----------------------------
DROP TABLE IF EXISTS "public"."maestro_planillas";
CREATE TABLE "public"."maestro_planillas" (
  "rda" int4 NOT NULL DEFAULT nextval('maestroplanillas_rda_seq'::regclass),
  "ci" int4,
  "paterno" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "materno" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "nombre" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "fecha_nacimiento" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "genero" varchar(1) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;

-- ----------------------------
-- Table structure for medio_transporte_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."medio_transporte_tipo";
CREATE TABLE "public"."medio_transporte_tipo" (
  "id" int4 NOT NULL,
  "descripcion_medio_trasnporte" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for medios_comunicacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."medios_comunicacion_tipo";
CREATE TABLE "public"."medios_comunicacion_tipo" (
  "id" int4 NOT NULL,
  "descripcion_medios_comunicacion" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for mensaje
-- ----------------------------
DROP TABLE IF EXISTS "public"."mensaje";
CREATE TABLE "public"."mensaje" (
  "id" int4 NOT NULL DEFAULT nextval('mensaje_id_seq'::regclass),
  "asunto" varchar(255) COLLATE "pg_catalog"."default",
  "mensaje" text COLLATE "pg_catalog"."default",
  "fecha" timestamp(6),
  "adjunto1" varchar(255) COLLATE "pg_catalog"."default",
  "adjunto2" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for mensaje_tramite
-- ----------------------------
DROP TABLE IF EXISTS "public"."mensaje_tramite";
CREATE TABLE "public"."mensaje_tramite" (
  "id" int4 NOT NULL DEFAULT nextval('mensaje_id'::regclass),
  "mensaje" text COLLATE "pg_catalog"."default",
  "titulo" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_ini" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_fin" varchar(255) COLLATE "pg_catalog"."default",
  "estado" varchar(255) COLLATE "pg_catalog"."default",
  "tipo_user" varchar(255) COLLATE "pg_catalog"."default",
  "id_user" varchar(16) COLLATE "pg_catalog"."default",
  "mensaje_d" int2
)
;

-- ----------------------------
-- Table structure for mensaje_usuario
-- ----------------------------
DROP TABLE IF EXISTS "public"."mensaje_usuario";
CREATE TABLE "public"."mensaje_usuario" (
  "id" int4 NOT NULL DEFAULT nextval('mensaje_usuario_id_seq'::regclass),
  "emisor" int4 NOT NULL,
  "receptor" int4 NOT NULL,
  "leido" bool,
  "mensaje_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for menu_nivel_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."menu_nivel_tipo";
CREATE TABLE "public"."menu_nivel_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('menu_nivel_tipo_id_seq'::regclass),
  "menu_nivel_tipo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "observacion" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for menu_objeto
-- ----------------------------
DROP TABLE IF EXISTS "public"."menu_objeto";
CREATE TABLE "public"."menu_objeto" (
  "id" int2 NOT NULL DEFAULT nextval('menu_objeto_id_seq'::regclass),
  "menu_tipo_id" int2 NOT NULL,
  "objeto_tipo_id" int2 NOT NULL,
  "fcreacion" date,
  "fupdate" date,
  "esactivo" bool NOT NULL DEFAULT false,
  "sistema_tipo_id" int4,
  "orden" int4
)
;

-- ----------------------------
-- Table structure for menu_sistema
-- ----------------------------
DROP TABLE IF EXISTS "public"."menu_sistema";
CREATE TABLE "public"."menu_sistema" (
  "id" int4 NOT NULL DEFAULT nextval('menu_sistema_id_seq'::regclass),
  "menu_tipo_id" int4 NOT NULL,
  "sistema_tipo_id" int4,
  "detalle_menu" varchar(100) COLLATE "pg_catalog"."default",
  "icono" varchar(50) COLLATE "pg_catalog"."default",
  "orden" int2,
  "fecha_inicio" timestamp(6),
  "fecha_fin" timestamp(6),
  "fecha_creacion" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for menu_sistema_rol
-- ----------------------------
DROP TABLE IF EXISTS "public"."menu_sistema_rol";
CREATE TABLE "public"."menu_sistema_rol" (
  "id" int4 NOT NULL DEFAULT nextval('menu_sistema_rol_id_seq'::regclass),
  "menu_sistema_id" int4,
  "sistema_rol_id" int2,
  "fecha_inicio" timestamp(6),
  "fecha_fin" timestamp(6),
  "esactivo" bool
)
;

-- ----------------------------
-- Table structure for menu_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."menu_tipo";
CREATE TABLE "public"."menu_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('menu_tipo_id_seq'::regclass),
  "detalle_menu" varchar(48) COLLATE "pg_catalog"."default" NOT NULL,
  "ruta" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "icono" varchar(50) COLLATE "pg_catalog"."default",
  "menu_tipo_id" int2,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "orden" int2,
  "menu_nivel_tipo_id" int2,
  "fecha_creacion" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for mes_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."mes_tipo";
CREATE TABLE "public"."mes_tipo" (
  "id" int4 NOT NULL,
  "mes" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for modalidad_estudio_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."modalidad_estudio_tipo";
CREATE TABLE "public"."modalidad_estudio_tipo" (
  "id" int4 NOT NULL,
  "modalidad_estudio" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for modalidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."modalidad_tipo";
CREATE TABLE "public"."modalidad_tipo" (
  "id" int2 NOT NULL,
  "modalidad" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for municipioestadistico
-- ----------------------------
DROP TABLE IF EXISTS "public"."municipioestadistico";
CREATE TABLE "public"."municipioestadistico" (
  "gid" int4 NOT NULL DEFAULT nextval('municipioestadistico_gid_seq'::regclass),
  "gid_aux" int8,
  "departamen" varchar(10) COLLATE "pg_catalog"."default",
  "provincia" varchar(35) COLLATE "pg_catalog"."default",
  "municipio" varchar(40) COLLATE "pg_catalog"."default",
  "poblacion" varchar(21) COLLATE "pg_catalog"."default",
  "lugar_tipo" int8,
  "geom" "public"."geometry"
)
;

-- ----------------------------
-- Table structure for mytable
-- ----------------------------
DROP TABLE IF EXISTS "public"."mytable";
CREATE TABLE "public"."mytable" (
  "id" int4 NOT NULL DEFAULT nextval('mytable_id_seq'::regclass),
  "mytable" int4 NOT NULL,
  "a1" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for nacion_originaria_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."nacion_originaria_tipo";
CREATE TABLE "public"."nacion_originaria_tipo" (
  "id" int4 NOT NULL,
  "nacion_originaria" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for nivel_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."nivel_tipo";
CREATE TABLE "public"."nivel_tipo" (
  "id" int2 NOT NULL,
  "nivel" varchar(45) COLLATE "pg_catalog"."default",
  "cod_org_curr_id" int2 NOT NULL,
  "vigente" bool NOT NULL,
  "observacion" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for nota_especial_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."nota_especial_tipo";
CREATE TABLE "public"."nota_especial_tipo" (
  "id" int4 NOT NULL,
  "nota" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" varchar(150) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for nota_periodo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."nota_periodo_tipo";
CREATE TABLE "public"."nota_periodo_tipo" (
  "id" int4 NOT NULL,
  "meses" int4 NOT NULL,
  "nota_periodo_tipo" varchar(15) COLLATE "pg_catalog"."default",
  "periodomes" int4
)
;

-- ----------------------------
-- Table structure for nota_presentacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."nota_presentacion_tipo";
CREATE TABLE "public"."nota_presentacion_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('nota_presentacion_tipo_id_seq'::regclass),
  "nota_presentacion" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "observacion" varchar(500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for nota_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."nota_tipo";
CREATE TABLE "public"."nota_tipo" (
  "id" int2 NOT NULL,
  "nota_tipo" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "orgcurricular_tipo_id" int2 NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "abrev" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "institucioneducativa_tipo_id" int2,
  "orden" int2,
  "nota_boletin" varchar(50) COLLATE "pg_catalog"."default",
  "abrev2" varchar(15) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for notificacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."notificacion";
CREATE TABLE "public"."notificacion" (
  "id" int4 NOT NULL DEFAULT nextval('notificacion_id_seq'::regclass),
  "mensaje" text COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_crea" date,
  "fecha_pub" date,
  "titulo" varchar(255) COLLATE "pg_catalog"."default",
  "adjunto" varchar(255) COLLATE "pg_catalog"."default",
  "estado" bool,
  "usuario_id" int4,
  "envio_tipo" bool NOT NULL,
  "noticia_tipo" int2
)
;

-- ----------------------------
-- Table structure for notificacion_norecordar
-- ----------------------------
DROP TABLE IF EXISTS "public"."notificacion_norecordar";
CREATE TABLE "public"."notificacion_norecordar" (
  "id" int4 NOT NULL DEFAULT nextval('notificacion_norecordar_id_seq'::regclass),
  "usuario_id" int4,
  "notif_id" int4,
  "fecha_lectura" date
)
;

-- ----------------------------
-- Table structure for notificacion_sistema
-- ----------------------------
DROP TABLE IF EXISTS "public"."notificacion_sistema";
CREATE TABLE "public"."notificacion_sistema" (
  "id" int4 NOT NULL DEFAULT nextval('notificacion_sistema_id_seq'::regclass),
  "notif_id" int4 NOT NULL,
  "sistema_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for notificacion_usuario
-- ----------------------------
DROP TABLE IF EXISTS "public"."notificacion_usuario";
CREATE TABLE "public"."notificacion_usuario" (
  "id" int4 NOT NULL DEFAULT nextval('notificacion_usuario_id_seq'::regclass),
  "notif_id" int4 NOT NULL,
  "usuario_id" int4,
  "visto" bool,
  "fecha" date,
  "rol_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for objeto_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."objeto_tipo";
CREATE TABLE "public"."objeto_tipo" (
  "id" int2 NOT NULL,
  "objeto" varchar(100) COLLATE "pg_catalog"."default",
  "esactivo" bool DEFAULT false,
  "icono" varchar(255) COLLATE "pg_catalog"."default",
  "orden" int4
)
;

-- ----------------------------
-- Table structure for observacion_inscripcion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."observacion_inscripcion_tipo";
CREATE TABLE "public"."observacion_inscripcion_tipo" (
  "id" int4 NOT NULL,
  "observacion" varchar(255) COLLATE "pg_catalog"."default",
  "peso" int2
)
;

-- ----------------------------
-- Table structure for observacion_persona_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."observacion_persona_tipo";
CREATE TABLE "public"."observacion_persona_tipo" (
  "id" int4 NOT NULL,
  "observacion" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for olim_archivo_subido
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_archivo_subido";
CREATE TABLE "public"."olim_archivo_subido" (
  "id" int4 NOT NULL DEFAULT nextval('olim_archivo_subido_id_seq'::regclass),
  "path_archivo" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "nombre_archivo" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_subida" timestamp(6) NOT NULL,
  "olim_etapa_tipo_id" int2 NOT NULL
)
;

-- ----------------------------
-- Table structure for olim_categoria_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_categoria_tipo";
CREATE TABLE "public"."olim_categoria_tipo" (
  "id" int4 NOT NULL,
  "categoria" varchar(300) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "olim_materia_tipo_id" int4,
  "descripcion" varchar(1500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for olim_director_inscripcion_datos
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_director_inscripcion_datos";
CREATE TABLE "public"."olim_director_inscripcion_datos" (
  "id" int4 NOT NULL DEFAULT nextval('olim_director_inscripcion_datos_id_seq'::regclass),
  "maestro_inscripcion_id" int4,
  "telefono1" varchar(60) COLLATE "pg_catalog"."default",
  "telefono2" varchar(60) COLLATE "pg_catalog"."default",
  "correo_electronico" varchar(60) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "es_vigente" bool
)
;

-- ----------------------------
-- Table structure for olim_discapacidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_discapacidad_tipo";
CREATE TABLE "public"."olim_discapacidad_tipo" (
  "id" int4 NOT NULL,
  "discapacidad" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for olim_estudiante_inscripcion
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_estudiante_inscripcion";
CREATE TABLE "public"."olim_estudiante_inscripcion" (
  "id" int4 NOT NULL DEFAULT nextval('olim_estudiante_inscripcion_id_seq'::regclass),
  "estudiante_inscripcion_id" int4,
  "telefono_estudiante" varchar(20) COLLATE "pg_catalog"."default",
  "correo_estudiante" varchar(255) COLLATE "pg_catalog"."default",
  "discapacidad_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "materia_tipo_id" int4,
  "carnet_codepedis" varchar(30) COLLATE "pg_catalog"."default",
  "carnet_ibc" varchar(30) COLLATE "pg_catalog"."default",
  "navegador" varchar(200) COLLATE "pg_catalog"."default",
  "foto_estudiante" varchar(500) COLLATE "pg_catalog"."default",
  "categoria_tipo_id" int4,
  "fecha_modificacion" timestamp(6),
  "usuario_registro_id" int4,
  "usuario_modificacion_id" int4,
  "periodo_tipo_id" int4,
  "gestion_tipo_id" int4,
  "olim_reglas_olimpiadas_tipo_id" int4,
  "olim_tutor_id" int4,
  "transaccion" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for olim_estudiante_inscripcion_curso_superior
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_estudiante_inscripcion_curso_superior";
CREATE TABLE "public"."olim_estudiante_inscripcion_curso_superior" (
  "id" int4 NOT NULL DEFAULT nextval('olim_estudiante_inscripcion_curso_superior_id_seq'::regclass),
  "olim_estudiante_inscripcion_id" int4,
  "nivel_tipo_id" int4,
  "grado_tipo_id" int4,
  "observarion" varchar(500) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_modificacion" date,
  "usuario_registro_id" int4,
  "usuario_modificacion_id" int4
)
;

-- ----------------------------
-- Table structure for olim_estudiante_nota_prueba
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_estudiante_nota_prueba";
CREATE TABLE "public"."olim_estudiante_nota_prueba" (
  "id" int4 NOT NULL DEFAULT nextval('olim_estudiante_nota_prueba_id_seq'::regclass),
  "olim_estudiante_inscripcion_id" int4 NOT NULL,
  "olim_modalidad_tipo_id" int2,
  "olim_medallero_tipo_id" int2,
  "olim_etapa_tipo_id" int2 NOT NULL,
  "olim_nivel_matematica_tipo_id" int2,
  "nota" numeric(5,2),
  "estado" bool,
  "observacion_subida" varchar(150) COLLATE "pg_catalog"."default",
  "estado_subida_nota" varchar(150) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) NOT NULL,
  "fecha_modificado" timestamp(6),
  "olim_materia_tipo_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for olim_etapa_periodo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_etapa_periodo";
CREATE TABLE "public"."olim_etapa_periodo" (
  "id" int4 NOT NULL DEFAULT nextval('olim_etapa_periodo_id_seq'::regclass),
  "fecha_inicio" timestamp(6) NOT NULL,
  "fecha_fin" timestamp(6) NOT NULL,
  "olim_registro_olimpiada_id" int4 NOT NULL,
  "olim_etapa_tipo_id" int2 NOT NULL
)
;

-- ----------------------------
-- Table structure for olim_etapa_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_etapa_tipo";
CREATE TABLE "public"."olim_etapa_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('olim_etapa_tipo_id_seq'::regclass),
  "etapa" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "observacion" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for olim_grupo_proyecto
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_grupo_proyecto";
CREATE TABLE "public"."olim_grupo_proyecto" (
  "id" int4 NOT NULL DEFAULT nextval('olim_grupo_proyecto_id_seq'::regclass),
  "nombre" varchar(300) COLLATE "pg_catalog"."default",
  "olim_grupo_proyecto_tipo_id" int4,
  "fecha_registro" date,
  "es_vigente" bool,
  "documento_pdf1" varchar(600) COLLATE "pg_catalog"."default",
  "documento_pdf2" varchar(600) COLLATE "pg_catalog"."default",
  "documento_pdf3" varchar(600) COLLATE "pg_catalog"."default",
  "fecha_modificacion" date,
  "usuario_registro_id" int4,
  "usuario_modificacion_id" int4,
  "periodo_tipo_id" int4,
  "materia_tipo_id" int4,
  "categoria_tipo_id" int4,
  "gestion_tipo_id" int4,
  "olim_reglas_olimpiadas_tipo_id" int4,
  "olim_tutor_id" int4,
  "nombre_proyecto" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_confirmacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for olim_grupo_proyecto_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_grupo_proyecto_tipo";
CREATE TABLE "public"."olim_grupo_proyecto_tipo" (
  "id" int4 NOT NULL,
  "tipo" varchar(30) COLLATE "pg_catalog"."default",
  "obs" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for olim_inscripcion_grupo_proyecto
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_inscripcion_grupo_proyecto";
CREATE TABLE "public"."olim_inscripcion_grupo_proyecto" (
  "id" int4 NOT NULL DEFAULT nextval('olim_inscripcion_grupo_proyecto_id_seq'::regclass),
  "olim_estudiante_inscripcion_id" int4,
  "olim_grupo_proyecto_id" int4,
  "fecha_registro" date
)
;

-- ----------------------------
-- Table structure for olim_inscripcion_tutor
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_inscripcion_tutor";
CREATE TABLE "public"."olim_inscripcion_tutor" (
  "id" int4 NOT NULL DEFAULT nextval('olim_inscripcion_tutor_id_seq'::regclass),
  "olim_estudiante_inscripcion_id" int4,
  "olim_tutor_id" int4,
  "fecha_registro" date
)
;

-- ----------------------------
-- Table structure for olim_materia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_materia_tipo";
CREATE TABLE "public"."olim_materia_tipo" (
  "id" int4 NOT NULL,
  "materia" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_ins_ini" date,
  "fecha_ins_fin" date,
  "olim_registro_olimpiada_id" int4,
  "descripcion" varchar(1500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for olim_medallero_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_medallero_tipo";
CREATE TABLE "public"."olim_medallero_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('olim_medallero_tipo_id_seq'::regclass),
  "puesto" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "observacion" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for olim_modalidad_numero_ingrantes_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_modalidad_numero_ingrantes_tipo";
CREATE TABLE "public"."olim_modalidad_numero_ingrantes_tipo" (
  "id" int4 NOT NULL,
  "condicion" varchar(255) COLLATE "pg_catalog"."default",
  "cantidad_miembros" int4
)
;

-- ----------------------------
-- Table structure for olim_modalidad_participacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_modalidad_participacion_tipo";
CREATE TABLE "public"."olim_modalidad_participacion_tipo" (
  "id" int4 NOT NULL,
  "modalidad" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for olim_modalidad_prueba_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_modalidad_prueba_tipo";
CREATE TABLE "public"."olim_modalidad_prueba_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('olim_modalidad_prueba_tipo_id_seq'::regclass),
  "olim_registro_olimpiada_id" int4 NOT NULL,
  "olim_modalidad_tipo_id" int2 NOT NULL
)
;

-- ----------------------------
-- Table structure for olim_modalidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_modalidad_tipo";
CREATE TABLE "public"."olim_modalidad_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('olim_modalidad_tipo_id_seq'::regclass),
  "modalidad" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "observacion" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for olim_nivel_matematica_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_nivel_matematica_tipo";
CREATE TABLE "public"."olim_nivel_matematica_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('olim_nivel_matematica_tipo_id_seq'::regclass),
  "nivel_matematica" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "observacion" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for olim_periodo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_periodo_tipo";
CREATE TABLE "public"."olim_periodo_tipo" (
  "id" int4 NOT NULL,
  "perido" varchar(30) COLLATE "pg_catalog"."default",
  "obs" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for olim_registro_olimpiada
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_registro_olimpiada";
CREATE TABLE "public"."olim_registro_olimpiada" (
  "id" int4 NOT NULL,
  "nombre_olimpiada" varchar(50) COLLATE "pg_catalog"."default",
  "fecha_inicio" date,
  "fecha_fin" date,
  "gestion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for olim_reglas_olimpiadas_nivel_grado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_reglas_olimpiadas_nivel_grado_tipo";
CREATE TABLE "public"."olim_reglas_olimpiadas_nivel_grado_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('olim_reglas_olimpiadas_nivel_grado_tipo_id_seq'::regclass),
  "olim_reglas_olimpiadas_tipo_id" int4,
  "nivel_tipo_id" int4,
  "grado_tipo_id" int4,
  "es_vigente" bool NOT NULL,
  "olim_materia_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for olim_reglas_olimpiadas_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_reglas_olimpiadas_tipo";
CREATE TABLE "public"."olim_reglas_olimpiadas_tipo" (
  "id" int8 NOT NULL DEFAULT nextval(('public.olim_reglas_olimpiadas_tipo_id_seq'::text)::regclass),
  "modalidad_participacion_tipo_id" int4,
  "modalidad_numero_integrantes_tipo_id" int4,
  "cantidad_equipos" int4,
  "cantidad_inscritos_grado" int4,
  "edad_inicial" int4,
  "edad_final" int4,
  "fecha_comparacion" date,
  "si_subir_documento" bool,
  "si_nombre_equipo" bool,
  "si_nombre_proyecto" bool,
  "gestion_tipo_id" int4,
  "periodo_tipo_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "usuario_registro_id" int4,
  "usuario_modificacion_id" int4,
  "olim_categoria_tipo_id" int4,
  "olim_materia_tipo_id" int4,
  "categoria" varchar(255) COLLATE "pg_catalog"."default",
  "si_ins_externa" bool
)
;

-- ----------------------------
-- Table structure for olim_tutor
-- ----------------------------
DROP TABLE IF EXISTS "public"."olim_tutor";
CREATE TABLE "public"."olim_tutor" (
  "id" int4 NOT NULL DEFAULT nextval('olim_inscripcion_tutor_id_seq'::regclass),
  "persona_id" int4,
  "telefono1" varchar(20) COLLATE "pg_catalog"."default",
  "telefono2" varchar(20) COLLATE "pg_catalog"."default",
  "correo_electronico" varchar(50) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_modificacion" date,
  "usuario_registro_id" int4,
  "usuario_modificacion_id" int4,
  "institucioneducativa_id" int4,
  "materia_tipo_id" int4,
  "categoria_tipo_id" int4,
  "periodo_tipo_id" int4,
  "gestion_tipo_id" int4,
  "olim_registro_olimpiada_id" int4
)
;

-- ----------------------------
-- Table structure for operacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."operacion_tipo";
CREATE TABLE "public"."operacion_tipo" (
  "id" int4 NOT NULL,
  "operacion" varchar(100) COLLATE "pg_catalog"."default",
  "_create" bool NOT NULL DEFAULT false,
  "_read" bool NOT NULL DEFAULT false,
  "_update" bool NOT NULL DEFAULT false,
  "_delete" bool NOT NULL DEFAULT false,
  "esactivo" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Table structure for operativo_control
-- ----------------------------
DROP TABLE IF EXISTS "public"."operativo_control";
CREATE TABLE "public"."operativo_control" (
  "id" int4 NOT NULL DEFAULT nextval('operativo_control_id_seq'::regclass),
  "operativo_tipo_id" int4 NOT NULL,
  "fecha_inicio" date NOT NULL,
  "fecha_fin" date,
  "distrito_tipo_id" int4,
  "institucioneducativa_id" int4,
  "obs" text COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) NOT NULL,
  "fecha_modificacion" timestamp(6),
  "usuario_registro_id" int4 NOT NULL,
  "usuario_modificacion_id" int4,
  "gestion_tipo_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for operativo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."operativo_tipo";
CREATE TABLE "public"."operativo_tipo" (
  "id" int4 NOT NULL,
  "operativo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "institucioneducativa_tipo_id" int4 NOT NULL,
  "fecha_registro" timestamp(6) NOT NULL,
  "fecha_modificacion" timestamp(6),
  "gestion_tipo_id" int4 NOT NULL,
  "periodo_tipo_id" int4,
  "esvigente" bool NOT NULL
)
;

-- ----------------------------
-- Table structure for orgcurricular_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."orgcurricular_tipo";
CREATE TABLE "public"."orgcurricular_tipo" (
  "id" int2 NOT NULL,
  "orgcurricula" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(105) COLLATE "pg_catalog"."default"
)
;
COMMENT ON TABLE "public"."orgcurricular_tipo" IS 'Organizacion Curricular';

-- ----------------------------
-- Table structure for origendiscapacidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."origendiscapacidad_tipo";
CREATE TABLE "public"."origendiscapacidad_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('origendiscapacidad_tipo_id_seq'::regclass),
  "discapacidad_" varchar(45) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;

-- ----------------------------
-- Table structure for pago_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."pago_tipo";
CREATE TABLE "public"."pago_tipo" (
  "id" int4 NOT NULL,
  "descripcion_pago" varchar COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for pais_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."pais_tipo";
CREATE TABLE "public"."pais_tipo" (
  "id" int2 NOT NULL,
  "pais" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "desc_abreviada" varchar(4) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for paralelo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."paralelo_tipo";
CREATE TABLE "public"."paralelo_tipo" (
  "id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "paralelo" varchar(45) COLLATE "pg_catalog"."default",
  "obs" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for periodo_estado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."periodo_estado_tipo";
CREATE TABLE "public"."periodo_estado_tipo" (
  "id" int4 NOT NULL,
  "estado" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for periodo_intervalo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."periodo_intervalo_tipo";
CREATE TABLE "public"."periodo_intervalo_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('periodo_intervalo_tipo_id_seq'::regclass),
  "periodo_intervalo" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for periodo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."periodo_tipo";
CREATE TABLE "public"."periodo_tipo" (
  "id" int2 NOT NULL,
  "periodo" varchar(45) COLLATE "pg_catalog"."default",
  "fechainicio" date NOT NULL,
  "fechafin" date NOT NULL
)
;

-- ----------------------------
-- Table structure for permanente_area_tematica_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."permanente_area_tematica_tipo";
CREATE TABLE "public"."permanente_area_tematica_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('permanente_area_tematica_tipo_id_seq'::regclass),
  "areatematica" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for permanente_cursocorto_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."permanente_cursocorto_tipo";
CREATE TABLE "public"."permanente_cursocorto_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('permanente_cursocorto_tipo_id_seq'::regclass),
  "cursocorto" varchar(120) COLLATE "pg_catalog"."default",
  "obs" varchar COLLATE "pg_catalog"."default",
  "habilitado" bool
)
;

-- ----------------------------
-- Table structure for permanente_institucioneducativa_cursocorto
-- ----------------------------
DROP TABLE IF EXISTS "public"."permanente_institucioneducativa_cursocorto";
CREATE TABLE "public"."permanente_institucioneducativa_cursocorto" (
  "id" int4 NOT NULL DEFAULT nextval('permanente_institucioneducativa_cursocorto_id_seq'::regclass),
  "poblacion_tipo_id" int2 NOT NULL,
  "areatematica_tipo_id" int2,
  "esabierto" bool NOT NULL DEFAULT true,
  "institucioneducativa_curso_id" int4 NOT NULL,
  "programa_tipo_id" int2,
  "sub_area_tipo_id" int2 NOT NULL,
  "cursocorto_tipo_id" int4 NOT NULL,
  "lugar_tipo_departamento_id" int4 NOT NULL,
  "lugar_tipo_provincia_id" int4 NOT NULL,
  "lugar_tipo_municipio_id" int4 NOT NULL,
  "lugar_detalle" varchar(50) COLLATE "pg_catalog"."default",
  "poblacion_detalle" varchar(50) COLLATE "pg_catalog"."default",
  "habilitado" bool
)
;

-- ----------------------------
-- Table structure for permanente_organizacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."permanente_organizacion_tipo";
CREATE TABLE "public"."permanente_organizacion_tipo" (
  "id" int4 NOT NULL,
  "organizacion" varchar(255) COLLATE "pg_catalog"."default",
  "observacion" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for permanente_poblacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."permanente_poblacion_tipo";
CREATE TABLE "public"."permanente_poblacion_tipo" (
  "id" int2 NOT NULL,
  "poblacion" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(1500) COLLATE "pg_catalog"."default",
  "organizacion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for permanente_programa_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."permanente_programa_tipo";
CREATE TABLE "public"."permanente_programa_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('permanente_programa_tipo_id_seq'::regclass),
  "programa" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for permanente_sub_area_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."permanente_sub_area_tipo";
CREATE TABLE "public"."permanente_sub_area_tipo" (
  "id" int2 NOT NULL,
  "sub_area" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for permanenteprograma_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."permanenteprograma_tipo";
CREATE TABLE "public"."permanenteprograma_tipo" (
  "id" int2 NOT NULL,
  "permanenteprograma" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for permiso
-- ----------------------------
DROP TABLE IF EXISTS "public"."permiso";
CREATE TABLE "public"."permiso" (
  "id" int4 NOT NULL DEFAULT nextval('permiso_id_seq'::regclass),
  "permiso" varchar(45) COLLATE "pg_catalog"."default",
  "menu_sistema_rol_id" int4,
  "_create" bool,
  "_read" bool,
  "_delete" bool,
  "_update" bool,
  "obs" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for permiso_0
-- ----------------------------
DROP TABLE IF EXISTS "public"."permiso_0";
CREATE TABLE "public"."permiso_0" (
  "id" int4 NOT NULL DEFAULT nextval('permiso_id_seq'::regclass),
  "permiso" varchar(45) COLLATE "pg_catalog"."default",
  "menu_objeto_id" int4,
  "_create" bool,
  "_read" bool,
  "_delete" bool,
  "_update" bool,
  "obs" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona";
CREATE TABLE "public"."persona" (
  "id" int4 NOT NULL DEFAULT nextval('persona_id_seq'::regclass),
  "idioma_materno_id" int4 NOT NULL,
  "genero_tipo_id" int4 NOT NULL,
  "sangre_tipo_id" int2 NOT NULL,
  "estadocivil_tipo_id" int2 NOT NULL,
  "carnet" varchar(15) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 0,
  "rda" int4 NOT NULL DEFAULT 0,
  "libreta_militar" varchar(20) COLLATE "pg_catalog"."default",
  "pasaporte" varchar(45) COLLATE "pg_catalog"."default",
  "paterno" varchar(75) COLLATE "pg_catalog"."default",
  "materno" varchar(75) COLLATE "pg_catalog"."default",
  "nombre" varchar(75) COLLATE "pg_catalog"."default",
  "fecha_nacimiento" date NOT NULL,
  "segip_id" int2 NOT NULL DEFAULT 0,
  "complemento" varchar(2) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "activo" bool,
  "correo" varchar(40) COLLATE "pg_catalog"."default",
  "foto" varchar(255) COLLATE "pg_catalog"."default",
  "celular" varchar(10) COLLATE "pg_catalog"."default",
  "direccion" varchar(50) COLLATE "pg_catalog"."default",
  "esvigente" bool DEFAULT false,
  "esvigente_apoderado" int2,
  "count_edit" int2,
  "obs_segip" varchar(100) COLLATE "pg_catalog"."default",
  "es_extranjero" bool NOT NULL DEFAULT false,
  "expedido_id" int4 NOT NULL DEFAULT 0,
  "localidad_nac" varchar(150) COLLATE "pg_catalog"."default",
  "pais_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for persona_administrativo_inscripcion
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona_administrativo_inscripcion";
CREATE TABLE "public"."persona_administrativo_inscripcion" (
  "id" int4 NOT NULL DEFAULT nextval('persona_administrativo_inscripcion_id_seq'::regclass),
  "gestion_tipo_id" int2 NOT NULL,
  "persona_administrativo_inscripcion_tipo_id" int4 NOT NULL,
  "persona_id" int4,
  "obs" varchar(100) COLLATE "pg_catalog"."default",
  "esactivo" bool,
  "distrito_tipo_id" int2 NOT NULL,
  "finalizado" bool
)
;

-- ----------------------------
-- Table structure for persona_administrativo_inscripcion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona_administrativo_inscripcion_tipo";
CREATE TABLE "public"."persona_administrativo_inscripcion_tipo" (
  "id" int4 NOT NULL,
  "persona_administrativo_inscripcion" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for persona_back
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona_back";
CREATE TABLE "public"."persona_back" (
  "id" int4 NOT NULL,
  "idioma_materno_id" int4 NOT NULL,
  "genero_tipo_id" int4 NOT NULL,
  "sangre_tipo_id" int2 NOT NULL,
  "estadocivil_tipo_id" int2 NOT NULL,
  "carnet" varchar(15) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 0,
  "rda" int4 NOT NULL DEFAULT 0,
  "libreta_militar" varchar(20) COLLATE "pg_catalog"."default",
  "pasaporte" varchar(45) COLLATE "pg_catalog"."default",
  "paterno" varchar(75) COLLATE "pg_catalog"."default",
  "materno" varchar(75) COLLATE "pg_catalog"."default",
  "nombre" varchar(75) COLLATE "pg_catalog"."default",
  "fecha_nacimiento" date NOT NULL,
  "segip_id" int2 NOT NULL DEFAULT 0,
  "complemento" varchar(2) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "activo" bool,
  "correo" varchar(40) COLLATE "pg_catalog"."default",
  "foto" varchar(255) COLLATE "pg_catalog"."default",
  "celular" varchar(10) COLLATE "pg_catalog"."default",
  "direccion" varchar(50) COLLATE "pg_catalog"."default",
  "esvigente" bool DEFAULT false,
  "esvigente_apoderado" int2,
  "count_edit" int2,
  "obs_segip" varchar(100) COLLATE "pg_catalog"."default",
  "es_extranjero" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Table structure for persona_carnet_control
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona_carnet_control";
CREATE TABLE "public"."persona_carnet_control" (
  "id" int4 NOT NULL DEFAULT nextval('persona_carnet_control_id_seq'::regclass),
  "persona_id" int4 NOT NULL,
  "carnet" varchar(15) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for persona_datos
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona_datos";
CREATE TABLE "public"."persona_datos" (
  "id" int4 NOT NULL,
  "persona_id" int4 NOT NULL,
  "telefono" varchar(45) COLLATE "pg_catalog"."default",
  "correo" varchar(45) COLLATE "pg_catalog"."default",
  "direccion" varchar(45) COLLATE "pg_catalog"."default",
  "gestion_id" int4,
  "oficialia" varchar(45) COLLATE "pg_catalog"."default",
  "libro" varchar(45) COLLATE "pg_catalog"."default",
  "partida" varchar(45) COLLATE "pg_catalog"."default",
  "folio" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for persona_documento
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona_documento";
CREATE TABLE "public"."persona_documento" (
  "id" int4 NOT NULL DEFAULT nextval('persona_documento_id_seq'::regclass),
  "persona_id" int4 NOT NULL,
  "documento_id" int4,
  "ruta" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for persona_historico
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona_historico";
CREATE TABLE "public"."persona_historico" (
  "id" int4 NOT NULL DEFAULT nextval('persona_historico_id_seq'::regclass),
  "carnet" varchar(15) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 0,
  "complemento" varchar(2) COLLATE "pg_catalog"."default",
  "nombre" varchar(75) COLLATE "pg_catalog"."default",
  "paterno" varchar(75) COLLATE "pg_catalog"."default",
  "materno" varchar(75) COLLATE "pg_catalog"."default",
  "fecha_nacimiento" date NOT NULL,
  "genero_tipo_id" int4 NOT NULL,
  "correo" varchar(40) COLLATE "pg_catalog"."default",
  "usuario_id" int4 NOT NULL,
  "fecha_actualizacion" date DEFAULT now()
)
;

-- ----------------------------
-- Table structure for persona_observacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona_observacion";
CREATE TABLE "public"."persona_observacion" (
  "id" int4 NOT NULL DEFAULT nextval('persona_observacion_id_seq'::regclass),
  "observacion_persona_tipo_id" int4,
  "rol_tipo_id" int4,
  "persona_id" int4,
  "gestion_tipo_id" int4,
  "usuario_id" int4,
  "fecha_registro" date NOT NULL DEFAULT now(),
  "obs" varchar(1000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for persona_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona_tipo";
CREATE TABLE "public"."persona_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('persona_tipo_id_seq'::regclass),
  "persona" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for plan_estudio
-- ----------------------------
DROP TABLE IF EXISTS "public"."plan_estudio";
CREATE TABLE "public"."plan_estudio" (
  "id" int4 NOT NULL DEFAULT nextval('plan_estudio_id_seq'::regclass),
  "estructura_educativa_asignatura_id" int4 NOT NULL,
  "plan_estudio_documento_id" int4 NOT NULL,
  "opcional" bool,
  "observacion" varchar(500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for plan_estudio_documento
-- ----------------------------
DROP TABLE IF EXISTS "public"."plan_estudio_documento";
CREATE TABLE "public"."plan_estudio_documento" (
  "id" int4 NOT NULL DEFAULT nextval('plan_estudio_documento_id_seq'::regclass),
  "nombre" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "numero" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "url" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "observacion" varchar(500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for pnp_reconocimiento_saberes
-- ----------------------------
DROP TABLE IF EXISTS "public"."pnp_reconocimiento_saberes";
CREATE TABLE "public"."pnp_reconocimiento_saberes" (
  "id" int4 NOT NULL DEFAULT nextval('pnp_reconocimiento_saberes_id_seq'::regclass),
  "estudiante_id" int4,
  "institucioneducativa_id" int4,
  "curso" int4,
  "homologado" bool,
  "usuario_id" int4,
  "usuario_homologado_id" int4,
  "fecha_creacion" timestamp(6),
  "fecha_homologacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for pnp_serial_rude
-- ----------------------------
DROP TABLE IF EXISTS "public"."pnp_serial_rude";
CREATE TABLE "public"."pnp_serial_rude" (
  "id" int4 NOT NULL DEFAULT nextval('pnp_serial_rude_id_seq'::regclass),
  "seqrude" int4
)
;

-- ----------------------------
-- Table structure for preuniversitario_categorias
-- ----------------------------
DROP TABLE IF EXISTS "public"."preuniversitario_categorias";
CREATE TABLE "public"."preuniversitario_categorias" (
  "id" int4 NOT NULL DEFAULT nextval('preuniversitario_categorias_id_seq'::regclass),
  "descripcion" varchar(100) COLLATE "pg_catalog"."default",
  "estado" bool,
  "createdAt" timestamptz(6) NOT NULL,
  "updatedAt" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for preuniversitario_comunicado
-- ----------------------------
DROP TABLE IF EXISTS "public"."preuniversitario_comunicado";
CREATE TABLE "public"."preuniversitario_comunicado" (
  "id" int4 NOT NULL DEFAULT nextval('preuniversitario_comunicado_id_seq'::regclass),
  "descripcion" varchar(255) COLLATE "pg_catalog"."default",
  "estado" bool,
  "createdAt" timestamptz(6) NOT NULL,
  "updatedAt" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for preuniversitario_habilitar_cursos
-- ----------------------------
DROP TABLE IF EXISTS "public"."preuniversitario_habilitar_cursos";
CREATE TABLE "public"."preuniversitario_habilitar_cursos" (
  "id" int4 NOT NULL DEFAULT nextval('preuniversitario_habilitar_cursos_id_seq'::regclass),
  "descripcion" varchar(255) COLLATE "pg_catalog"."default",
  "tipo_id" int4,
  "fecha_inicio" date,
  "fecha_fin" date,
  "estado" bool,
  "createdAt" timestamptz(6) NOT NULL,
  "updatedAt" timestamptz(6) NOT NULL,
  "enlace" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for preuniversitario_inscripcion
-- ----------------------------
DROP TABLE IF EXISTS "public"."preuniversitario_inscripcion";
CREATE TABLE "public"."preuniversitario_inscripcion" (
  "id" int4 NOT NULL DEFAULT nextval('preuniversitario_inscripcion_id_seq'::regclass),
  "codigo_rude" varchar(255) COLLATE "pg_catalog"."default",
  "nombres" varchar(255) COLLATE "pg_catalog"."default",
  "apellidos" varchar(255) COLLATE "pg_catalog"."default",
  "correo" varchar(255) COLLATE "pg_catalog"."default",
  "departamento" varchar(255) COLLATE "pg_catalog"."default",
  "curso_id" int4,
  "createdAt" timestamptz(6) NOT NULL,
  "updatedAt" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for preuniversitario_opciones
-- ----------------------------
DROP TABLE IF EXISTS "public"."preuniversitario_opciones";
CREATE TABLE "public"."preuniversitario_opciones" (
  "id" int4 NOT NULL DEFAULT nextval('preuniversitario_opciones_id_seq'::regclass),
  "pregunta_id" int4,
  "opcion" varchar(255) COLLATE "pg_catalog"."default",
  "valor" int4 DEFAULT 0,
  "respuesta_correcta" bool,
  "estado" bool
)
;

-- ----------------------------
-- Table structure for preuniversitario_preguntas
-- ----------------------------
DROP TABLE IF EXISTS "public"."preuniversitario_preguntas";
CREATE TABLE "public"."preuniversitario_preguntas" (
  "id" int4 NOT NULL DEFAULT nextval('preuniversitario_preguntas_id_seq'::regclass),
  "categoria_id" int4,
  "descripcion" varchar(255) COLLATE "pg_catalog"."default",
  "imagen" varchar(255) COLLATE "pg_catalog"."default",
  "tipo" int4,
  "respuesta" char(1) COLLATE "pg_catalog"."default",
  "estado" bool,
  "createdAt" timestamptz(6) NOT NULL,
  "updatedAt" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for preuniversitario_respuestas
-- ----------------------------
DROP TABLE IF EXISTS "public"."preuniversitario_respuestas";
CREATE TABLE "public"."preuniversitario_respuestas" (
  "id" int4 NOT NULL DEFAULT nextval('preuniversitario_respuestas_id_seq'::regclass),
  "codigo_rude" varchar(50) COLLATE "pg_catalog"."default",
  "categoria_id" int4,
  "respuesta" text COLLATE "pg_catalog"."default",
  "acierto" int4,
  "porcentaje" int4,
  "cantidad" int4,
  "estado" bool,
  "createdAt" timestamptz(6) NOT NULL,
  "updatedAt" timestamptz(6) NOT NULL,
  "curso_id" int4
)
;

-- ----------------------------
-- Table structure for primera_conferencia_educativa_armarc
-- ----------------------------
DROP TABLE IF EXISTS "public"."primera_conferencia_educativa_armarc";
CREATE TABLE "public"."primera_conferencia_educativa_armarc" (
  "id" int4 NOT NULL DEFAULT nextval('primera_conferencia_educativa_armarc_id_seq'::regclass),
  "fecha_registro" timestamp(6),
  "carnet" varchar(255) COLLATE "pg_catalog"."default",
  "nombres" varchar(255) COLLATE "pg_catalog"."default",
  "apellidos" varchar(255) COLLATE "pg_catalog"."default",
  "correo" varchar(255) COLLATE "pg_catalog"."default",
  "distrito" varchar(255) COLLATE "pg_catalog"."default",
  "asistencia" bool,
  "anulado" bool
)
;

-- ----------------------------
-- Table structure for primera_conferencia_educativa_asistencia_armarc
-- ----------------------------
DROP TABLE IF EXISTS "public"."primera_conferencia_educativa_asistencia_armarc";
CREATE TABLE "public"."primera_conferencia_educativa_asistencia_armarc" (
  "id" int4 NOT NULL DEFAULT nextval('primera_conferencia_educativa_asistencia_armarc_id_seq'::regclass),
  "fecha_registro" timestamp(6),
  "carnet" varchar(255) COLLATE "pg_catalog"."default",
  "correo" varchar(255) COLLATE "pg_catalog"."default",
  "codigo" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for procedencia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."procedencia_tipo";
CREATE TABLE "public"."procedencia_tipo" (
  "id" int4 NOT NULL,
  "procedencia" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for proceso_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."proceso_tipo";
CREATE TABLE "public"."proceso_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('proceso_tipo_id_seq'::regclass),
  "proceso_tipo" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS "public"."products";
CREATE TABLE "public"."products" (
  "productid" int4 NOT NULL DEFAULT nextval('products_productid_seq'::regclass),
  "productname" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "quantity" int4 NOT NULL,
  "price" numeric(5,2)
)
;

-- ----------------------------
-- Table structure for proveedor_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."proveedor_tipo";
CREATE TABLE "public"."proveedor_tipo" (
  "id" int4 NOT NULL,
  "proveedor" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for prueba_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."prueba_tipo";
CREATE TABLE "public"."prueba_tipo" (
  "id" int2 NOT NULL,
  "genero_tipo_id" int4 NOT NULL,
  "disciplina_tipo_id" int4 NOT NULL,
  "prueba" varchar(45) COLLATE "pg_catalog"."default",
  "clasificador_puntuacion" varchar(1) COLLATE "pg_catalog"."default",
  "clasificador_tipo" varchar(1) COLLATE "pg_catalog"."default",
  "esactivo" bool
)
;

-- ----------------------------
-- Table structure for rda_planillas
-- ----------------------------
DROP TABLE IF EXISTS "public"."rda_planillas";
CREATE TABLE "public"."rda_planillas" (
  "id" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "ci" varchar(10) COLLATE "pg_catalog"."default",
  "paterno" varchar(45) COLLATE "pg_catalog"."default",
  "materno" varchar(45) COLLATE "pg_catalog"."default",
  "nombre" varchar(45) COLLATE "pg_catalog"."default",
  "fecha_nacimiento" varchar(45) COLLATE "pg_catalog"."default",
  "genero" varchar(1) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for realiza_pago_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."realiza_pago_tipo";
CREATE TABLE "public"."realiza_pago_tipo" (
  "id" int4 NOT NULL,
  "entidad" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for recinto_penitenciario_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."recinto_penitenciario_tipo";
CREATE TABLE "public"."recinto_penitenciario_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('recinto_penitenciario_tipo_id_seq'::regclass),
  "recinto_penitenciario" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "lugar_reclusion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for registro_consolidacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."registro_consolidacion";
CREATE TABLE "public"."registro_consolidacion" (
  "tipo" int4 NOT NULL,
  "gestion" int4 NOT NULL,
  "unidad_educativa" int4 NOT NULL,
  "tabla" varchar(50) COLLATE "pg_catalog"."default",
  "identificador" varchar(100) COLLATE "pg_catalog"."default",
  "codigo" varchar(100) COLLATE "pg_catalog"."default",
  "descripcion_error" varchar(250) COLLATE "pg_catalog"."default",
  "fecha" date,
  "usuario" varchar(100) COLLATE "pg_catalog"."default",
  "consulta" text COLLATE "pg_catalog"."default",
  "bim1" int2,
  "bim2" int2,
  "bim3" int2,
  "bim4" int2,
  "periodo_id" int2 NOT NULL,
  "sub_cea" int2,
  "ban" int2,
  "esonline" bool DEFAULT false,
  "institucioneducativa_tipo_id" int4 NOT NULL,
  "rude" int2,
  "boletin" int2
)
;

-- ----------------------------
-- Table structure for registro_consolidacion_alternativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."registro_consolidacion_alternativa";
CREATE TABLE "public"."registro_consolidacion_alternativa" (
  "tipo" int4 NOT NULL,
  "gestion" int4 NOT NULL,
  "unidad_educativa" int4 NOT NULL,
  "tabla" varchar(50) COLLATE "pg_catalog"."default",
  "identificador" varchar(100) COLLATE "pg_catalog"."default",
  "codigo" varchar(100) COLLATE "pg_catalog"."default",
  "descripcion_error" varchar(150) COLLATE "pg_catalog"."default",
  "fecha" date,
  "usuario" varchar(100) COLLATE "pg_catalog"."default",
  "consulta" text COLLATE "pg_catalog"."default",
  "bim1" int2,
  "bim2" int2,
  "bim3" int2,
  "bim4" int2,
  "periodo_id" int2 NOT NULL,
  "sub_cea" int2 NOT NULL,
  "ban" int2
)
;

-- ----------------------------
-- Table structure for registro_rue
-- ----------------------------
DROP TABLE IF EXISTS "public"."registro_rue";
CREATE TABLE "public"."registro_rue" (
  "id" int4 NOT NULL DEFAULT nextval('registro_rue_seq'::regclass),
  "formulario_rue_id" int4,
  "operacion_rue" "public"."operacion_rue_enum",
  "campo" varchar(255) COLLATE "pg_catalog"."default",
  "valor_nuevo" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" date DEFAULT now(),
  "valor_anterior" varchar(255) COLLATE "pg_catalog"."default",
  "tabla" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for resettoken
-- ----------------------------
DROP TABLE IF EXISTS "public"."resettoken";
CREATE TABLE "public"."resettoken" (
  "token" text COLLATE "pg_catalog"."default",
  "owner" int4,
  "id" int4 NOT NULL DEFAULT nextval('resettoken_id_seq'::regclass),
  "createdAt" timestamptz(6),
  "updatedAt" timestamptz(6)
)
;

-- ----------------------------
-- Table structure for rol_permiso
-- ----------------------------
DROP TABLE IF EXISTS "public"."rol_permiso";
CREATE TABLE "public"."rol_permiso" (
  "id" int4 NOT NULL DEFAULT nextval('rol_permiso_id_seq'::regclass),
  "rol_tipo_id" int2 NOT NULL,
  "permiso_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for rol_persona
-- ----------------------------
DROP TABLE IF EXISTS "public"."rol_persona";
CREATE TABLE "public"."rol_persona" (
  "id" int4 NOT NULL DEFAULT nextval('rol_persona_id_seq'::regclass),
  "persona_id" int4 NOT NULL,
  "rol_tipo_id" int2 NOT NULL,
  "fecha_registro" date
)
;

-- ----------------------------
-- Table structure for rol_roles_asignacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."rol_roles_asignacion";
CREATE TABLE "public"."rol_roles_asignacion" (
  "id" int4 NOT NULL DEFAULT nextval('rol_roles_asignacion_id_seq'::regclass),
  "rol_id" int2,
  "roles" int2
)
;

-- ----------------------------
-- Table structure for rol_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."rol_tipo";
CREATE TABLE "public"."rol_tipo" (
  "id" int2 NOT NULL,
  "rol" varchar(105) COLLATE "pg_catalog"."default",
  "lugar_nivel_tipo_id" int2,
  "sub_sistema" char(100) COLLATE "pg_catalog"."default",
  "diminutivo" char(8) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."roles";
CREATE TABLE "public"."roles" (
  "id" int4 NOT NULL DEFAULT nextval('roles_id_seq'::regclass),
  "descripcion" varchar(50) COLLATE "pg_catalog"."default",
  "estado" bool,
  "nivel" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" varchar(255) COLLATE "pg_catalog"."default",
  "createdAt" timestamptz(6),
  "updatedAt" timestamptz(6)
)
;

-- ----------------------------
-- Table structure for rude
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude";
CREATE TABLE "public"."rude" (
  "id" int4 NOT NULL DEFAULT nextval('rude_id_seq'::regclass),
  "estudiante_inscripcion_id" int4,
  "institucioneducativa_tipo_id" int4,
  "es_pertence_nacion_originaria" bool,
  "nacion_originaria_tipo_id" int4,
  "seguro_salud" bool,
  "centro_salud" bool,
  "cantidad_centro_salud_tipo_id" int4,
  "trabajo_gestion_pasada" bool,
  "tiene_ocupacion_trabajo" bool,
  "frecuencia_trabajo_tipo_id" int4,
  "frecuencia_uso_internet_tipo_id" int4,
  "tiene_abandono" bool,
  "vive_habitualmente_tipo_id" int4,
  "vivienda_ocupa_tipo_id" int4,
  "modalidad_estudio_tipo_id" int4,
  "educacion_diversa_tipo_id" int4,
  "zona" varchar COLLATE "pg_catalog"."default",
  "avenida" varchar(255) COLLATE "pg_catalog"."default",
  "numero" varchar(255) COLLATE "pg_catalog"."default",
  "celular" varchar(255) COLLATE "pg_catalog"."default",
  "telefono_fijo" varchar(255) COLLATE "pg_catalog"."default",
  "municipio_lugar_tipo_id" int4,
  "cant_hijos" int4,
  "es_servicio_militar" bool,
  "servicio_militar_tipo_id" int4,
  "procedencia_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6),
  "tiene_discapacidad" bool,
  "lugar_registro_rude" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro_rude" date,
  "localidad" varchar(255) COLLATE "pg_catalog"."default",
  "respuesta_pago" bool,
  "tiene_ci" bool,
  "tiene_pasaporte" bool,
  "tiene_carnet_discapacidad" bool,
  "tiempo_llegada_horas" varchar(2) COLLATE "pg_catalog"."default",
  "tiempo_llegada_minutos" varchar(2) COLLATE "pg_catalog"."default",
  "registro_finalizado" int2,
  "localidad_lugar_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for rude_abandono
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_abandono";
CREATE TABLE "public"."rude_abandono" (
  "id" int4 NOT NULL DEFAULT nextval('rude_abandono_id_seq'::regclass),
  "rude_id" int4,
  "abandono_tipo_id" int4,
  "motivo_abandono" varchar COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6),
  "abandono_otro" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for rude_acceso_internet
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_acceso_internet";
CREATE TABLE "public"."rude_acceso_internet" (
  "id" int4 NOT NULL DEFAULT nextval('rude_acceso_internet_id_seq'::regclass),
  "rude_id" int4,
  "acceso_internet_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for rude_actividad
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_actividad";
CREATE TABLE "public"."rude_actividad" (
  "id" int4 NOT NULL DEFAULT nextval('rude_actividad_id_seq'::regclass),
  "rude_id" int4,
  "actividad_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6),
  "actividad_otro" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for rude_apoderado_inscripcion
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_apoderado_inscripcion";
CREATE TABLE "public"."rude_apoderado_inscripcion" (
  "id" int4 NOT NULL DEFAULT nextval('rude_apoderado_inscripcion_id_seq'::regclass),
  "apoderado_tipo_id" int4,
  "persona_id" int4,
  "estudiante_inscripcion_id" int4,
  "idioma_materno_tipo_id" int4,
  "instruccion_tipo_id" int4,
  "empleo" varchar(150) COLLATE "pg_catalog"."default",
  "telefono" varchar(15) COLLATE "pg_catalog"."default",
  "obs" varchar(150) COLLATE "pg_catalog"."default",
  "tieneocupacion" bool,
  "ocupacion_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for rude_catalogo
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_catalogo";
CREATE TABLE "public"."rude_catalogo" (
  "id" int2 NOT NULL,
  "gestion_tipo_id" int2,
  "nombre_tabla" varchar(255) COLLATE "pg_catalog"."default",
  "campo_tabla" varchar(255) COLLATE "pg_catalog"."default",
  "llave_tabla" int2,
  "clase_tabla_tipo_id" int2,
  "institucioneducativa_tipo_id" int2,
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for rude_centro_salud
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_centro_salud";
CREATE TABLE "public"."rude_centro_salud" (
  "id" int4 NOT NULL DEFAULT nextval('rude_centro_salud_id_seq'::regclass),
  "rude_id" int4,
  "centro_salud_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for rude_discapacidad_grado
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_discapacidad_grado";
CREATE TABLE "public"."rude_discapacidad_grado" (
  "id" int4 NOT NULL DEFAULT nextval('rude_discapacidad_grado_id_seq'::regclass),
  "rude_id" int4,
  "discapacidad_tipo_id" int4,
  "grado_discapacidad_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for rude_educacion_diversa
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_educacion_diversa";
CREATE TABLE "public"."rude_educacion_diversa" (
  "id" int4 NOT NULL DEFAULT nextval('rude_educacion_diversa_id_seq'::regclass),
  "rude_id" int4,
  "educacion_diversa_tipo_id" int4,
  "unidad_militar_tipo_id" int4,
  "recinto_penitenciario_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for rude_idioma
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_idioma";
CREATE TABLE "public"."rude_idioma" (
  "id" int4 NOT NULL DEFAULT nextval('rude_idioma_id_seq'::regclass),
  "rude_id" int4,
  "habla_tipo_id" int4,
  "idioma_tipo_id" int4,
  "observaciones" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for rude_medio_transporte
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_medio_transporte";
CREATE TABLE "public"."rude_medio_transporte" (
  "id" int4 NOT NULL DEFAULT nextval('rude_medio_transporte_id_seq'::regclass),
  "rude_id" int4,
  "medio_transporte_tipo_id" int4,
  "tiempo_maximo_trayecto_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6),
  "llega_otro" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for rude_medios_comunicacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_medios_comunicacion";
CREATE TABLE "public"."rude_medios_comunicacion" (
  "id" int4 NOT NULL DEFAULT nextval('rude_medios_comunicacion_id_seq'::regclass),
  "rude_id" int4,
  "medios_comunicacion_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for rude_meses_trabajados
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_meses_trabajados";
CREATE TABLE "public"."rude_meses_trabajados" (
  "id" int4 NOT NULL DEFAULT nextval('rude_meses_trabajados_id_seq'::regclass),
  "rude_id" int4,
  "mes_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for rude_recibio_pago
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_recibio_pago";
CREATE TABLE "public"."rude_recibio_pago" (
  "id" int4 NOT NULL DEFAULT nextval('rude_recibio_pago_id_seq'::regclass),
  "rude_id" int4 NOT NULL,
  "pago_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for rude_servicio_basico
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_servicio_basico";
CREATE TABLE "public"."rude_servicio_basico" (
  "id" int4 NOT NULL DEFAULT nextval('rude_servicio_basico_id_seq'::regclass),
  "rude_id" int4,
  "servicio_basico_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for rude_turno_trabajo
-- ----------------------------
DROP TABLE IF EXISTS "public"."rude_turno_trabajo";
CREATE TABLE "public"."rude_turno_trabajo" (
  "id" int4 NOT NULL DEFAULT nextval('rude_turno_trabajo_id_seq'::regclass),
  "rude_id" int4,
  "turno_tipo_id" int4,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for sangre_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."sangre_tipo";
CREATE TABLE "public"."sangre_tipo" (
  "id" int2 NOT NULL,
  "grupo_sanguineo" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for segip_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."segip_tipo";
CREATE TABLE "public"."segip_tipo" (
  "id" int2 NOT NULL,
  "detalle" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for series_gestion
-- ----------------------------
DROP TABLE IF EXISTS "public"."series_gestion";
CREATE TABLE "public"."series_gestion" (
  "item" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "serie" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for servicio_basico_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."servicio_basico_tipo";
CREATE TABLE "public"."servicio_basico_tipo" (
  "id" int4 NOT NULL,
  "servicio_basico" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for servicio_militar_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."servicio_militar_tipo";
CREATE TABLE "public"."servicio_militar_tipo" (
  "id" int4 NOT NULL,
  "lugar_servicio_militar" varchar(255) COLLATE "pg_catalog"."default",
  "es_activo" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for session_rol
-- ----------------------------
DROP TABLE IF EXISTS "public"."session_rol";
CREATE TABLE "public"."session_rol" (
  "id" int4 NOT NULL,
  "session_id" int4 NOT NULL,
  "rol_tipo_id" int2 NOT NULL
)
;

-- ----------------------------
-- Table structure for sistema_archivos
-- ----------------------------
DROP TABLE IF EXISTS "public"."sistema_archivos";
CREATE TABLE "public"."sistema_archivos" (
  "id" int4 NOT NULL,
  "sistema_tipo_id" int2,
  "nombre_archivo" varchar(255) COLLATE "pg_catalog"."default",
  "titulo" char(100) COLLATE "pg_catalog"."default",
  "resumen" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_creacion" date,
  "ver" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for sistema_archivos_rol
-- ----------------------------
DROP TABLE IF EXISTS "public"."sistema_archivos_rol";
CREATE TABLE "public"."sistema_archivos_rol" (
  "id" int4 NOT NULL,
  "sistema_archivos_id" int4,
  "rol_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for sistema_rol
-- ----------------------------
DROP TABLE IF EXISTS "public"."sistema_rol";
CREATE TABLE "public"."sistema_rol" (
  "id" int4 NOT NULL DEFAULT nextval('sistema_rol_id_seq'::regclass),
  "rol_tipo_id" int2,
  "sistema_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for sistema_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."sistema_tipo";
CREATE TABLE "public"."sistema_tipo" (
  "id" int2 NOT NULL,
  "sistema" varchar(55) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "abreviatura" char(5) COLLATE "pg_catalog"."default",
  "bundle" varchar(100) COLLATE "pg_catalog"."default",
  "url" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for socioeconomico_especial
-- ----------------------------
DROP TABLE IF EXISTS "public"."socioeconomico_especial";
CREATE TABLE "public"."socioeconomico_especial" (
  "id" int4 NOT NULL DEFAULT nextval('socioeconomico_especial_id_seq'::regclass),
  "gestion_tipo_id" int4,
  "domicilio_departamento_id" int2,
  "domicilio_provincia_id" int2,
  "domicilio_municipio" varchar(255) COLLATE "pg_catalog"."default",
  "domicilio_localidad" varchar(255) COLLATE "pg_catalog"."default",
  "direccion_zona" varchar(45) COLLATE "pg_catalog"."default",
  "direccion_calle" varchar(45) COLLATE "pg_catalog"."default",
  "direccion_nro" varchar(45) COLLATE "pg_catalog"."default",
  "direccion_telefono" varchar(45) COLLATE "pg_catalog"."default",
  "direccion_celular" varchar(45) COLLATE "pg_catalog"."default",
  "idioma1_tipo_id" int2,
  "idioma2_tipo_id" int2,
  "idioma3_tipo_id" int2,
  "etnia_tipo_id" int2,
  "vive_con" varchar(100) COLLATE "pg_catalog"."default",
  "pariente_discapacidad" varchar(255) COLLATE "pg_catalog"."default",
  "grado_parentesco" varchar(100) COLLATE "pg_catalog"."default",
  "seguro" varchar(255) COLLATE "pg_catalog"."default",
  "medicacion" varchar(255) COLLATE "pg_catalog"."default",
  "sangre_tipo_id" int4,
  "usuario_id" int4,
  "fecha_last_update" date,
  "estudianteinscripcion_id" int4
)
;

-- ----------------------------
-- Table structure for socioeconomico_regular
-- ----------------------------
DROP TABLE IF EXISTS "public"."socioeconomico_regular";
CREATE TABLE "public"."socioeconomico_regular" (
  "id" int4 NOT NULL,
  "idioma_tipo_id" int2 NOT NULL,
  "idioma_tipo_id2" int2 NOT NULL,
  "etnia_tipo_id" int2 NOT NULL,
  "idioma_tipo_id3" int2 NOT NULL,
  "idioma_tipo_id4" int2 NOT NULL,
  "discapacidad_tipo_id" int2 NOT NULL,
  "idioma_tipo_id5" int2 NOT NULL,
  "estudiante_inscripcion_id" int4 NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "atenmedica_tipo_id" int2 NOT NULL,
  "idioma_tipo_id6" int2 NOT NULL,
  "certificado_nac" int2,
  "libreta_escolar" bool,
  "libreta_familiar" bool,
  "libreta_militar" bool,
  "libreta_vacunas" bool,
  "medio_comunicacion_celular" bool,
  "medio_comunicacion_telefono" bool,
  "medio_comunicacion_television" bool,
  "medio_comunicacion_computadora" bool,
  "medio_comunicacion_radio" bool,
  "medio_comunicacion_internet" bool,
  "seguro_salud" bool,
  "discapacidad_id" int4 NOT NULL DEFAULT 0,
  "servicio_aguadomicilio" bool,
  "servicio_aguapileta" bool,
  "servicio_agualagolaguna" bool,
  "servicio_aguapozo" bool,
  "servicio_aguasisterna" bool,
  "servicio_aguavertiente" bool,
  "servicio_energiaredpublica" bool,
  "servicio_energiageneradorelectr" bool,
  "servicio_energiapanelsolar" bool,
  "servicio_gasdomicilio" bool,
  "servicio_gaslicuado" bool,
  "servicio_gasnatural" bool,
  "servicio_sanitarioalcantarill" bool,
  "servicio_sanitariopozoseptico" bool,
  "direccion_departamento_id" int4 NOT NULL,
  "direccion_provincia_id" int4 NOT NULL,
  "direccion_seccion_id" int4 NOT NULL,
  "direccion_canton_id" int4 NOT NULL,
  "direccion_localidad_id" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "empleo" varchar(80) COLLATE "pg_catalog"."default",
  "direccion_desc_localidad" varchar(125) COLLATE "pg_catalog"."default",
  "direccion_zona" varchar(80) COLLATE "pg_catalog"."default",
  "direccion_calle_nro" varchar(100) COLLATE "pg_catalog"."default",
  "direccion_telefono" varchar(8) COLLATE "pg_catalog"."default",
  "transporte_id" int4 NOT NULL DEFAULT 0,
  "transporte_tiempo" int4 NOT NULL DEFAULT 0,
  "transporte_distancia" int4 NOT NULL DEFAULT 0,
  "numero_hijo" int2 NOT NULL DEFAULT 0,
  "servicio_aguacaneria" bool,
  "servicio_aguaotro" bool,
  "servicio_sanitariopozo" bool,
  "servicio_sanitariocalle" bool,
  "servicio_sanitariorio" bool,
  "direccion_nro_vivienda" int4,
  "centrosalud" bool,
  "frecuencia_salud_id" int4,
  "discapacidad_sensorial" bool,
  "discapacidad_motriz" bool,
  "discapacidad_mental" bool,
  "origen_discapacidad_id" int4,
  "actividad_id" int4,
  "frecuencia_actividad_id" int4,
  "actividad_pago" bool,
  "internet_domicilio" bool,
  "internet_ue" bool,
  "internet_publico" bool,
  "internet_no" bool,
  "frecuencia_internet_id" int4,
  "frecuencia_transporte_id" int4 NOT NULL DEFAULT 0,
  "servicio_energia" bool
)
;

-- ----------------------------
-- Table structure for solicitud_tramite
-- ----------------------------
DROP TABLE IF EXISTS "public"."solicitud_tramite";
CREATE TABLE "public"."solicitud_tramite" (
  "id" int4 NOT NULL DEFAULT nextval('solicitud_tramite_id_seq'::regclass),
  "datos" text COLLATE "pg_catalog"."default",
  "codigo" varchar(15) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamp(6) NOT NULL,
  "estado" bool
)
;

-- ----------------------------
-- Table structure for spatial_ref_sys
-- ----------------------------
DROP TABLE IF EXISTS "public"."spatial_ref_sys";
CREATE TABLE "public"."spatial_ref_sys" (
  "srid" int4 NOT NULL,
  "auth_name" varchar(256) COLLATE "pg_catalog"."default",
  "auth_srid" int4,
  "srtext" varchar(2048) COLLATE "pg_catalog"."default",
  "proj4text" varchar(2048) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for sucursal_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."sucursal_tipo";
CREATE TABLE "public"."sucursal_tipo" (
  "id" int4 NOT NULL,
  "descripcion" varchar(45) COLLATE "pg_catalog"."default",
  "obs" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for superior_acreditacion_especialidad
-- ----------------------------
DROP TABLE IF EXISTS "public"."superior_acreditacion_especialidad";
CREATE TABLE "public"."superior_acreditacion_especialidad" (
  "id" int4 NOT NULL,
  "superior_acreditacion_tipo_id" int4 NOT NULL,
  "superior_especialidad_tipo_id" int4 NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for superior_acreditacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."superior_acreditacion_tipo";
CREATE TABLE "public"."superior_acreditacion_tipo" (
  "id" int4 NOT NULL,
  "codigo" int4,
  "acreditacion" varchar(50) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for superior_area_saberes_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."superior_area_saberes_tipo";
CREATE TABLE "public"."superior_area_saberes_tipo" (
  "id" int4 NOT NULL,
  "area_superior" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for superior_especialidad_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."superior_especialidad_tipo";
CREATE TABLE "public"."superior_especialidad_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('superior_especialidad_tipo_id_seq'::regclass),
  "codigo" int4,
  "especialidad" varchar(50) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "superior_facultad_area_tipo_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for superior_facultad_area_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."superior_facultad_area_tipo";
CREATE TABLE "public"."superior_facultad_area_tipo" (
  "id" int4 NOT NULL,
  "codigo" int4,
  "facultad_area" varchar(50) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "institucioneducativa_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for superior_institucioneducativa_acreditacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."superior_institucioneducativa_acreditacion";
CREATE TABLE "public"."superior_institucioneducativa_acreditacion" (
  "id" int4 NOT NULL DEFAULT nextval('superior_institucioneducativa_acreditacion_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "acreditacion_especialidad_id" int4 NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4 NOT NULL,
  "institucioneducativa_sucursal_id" int4,
  "pensum_numero" int4,
  "fecha_inicio" date,
  "fecha_fin" date,
  "esactivo" bool,
  "superior_turno_tipo_id" int4,
  "horas_especialidad" int4
)
;

-- ----------------------------
-- Table structure for superior_institucioneducativa_periodo
-- ----------------------------
DROP TABLE IF EXISTS "public"."superior_institucioneducativa_periodo";
CREATE TABLE "public"."superior_institucioneducativa_periodo" (
  "id" int4 NOT NULL,
  "superior_institucioneducativa_acreditacion_id" int4 NOT NULL,
  "superior_periodo_tipo_id" int4 NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "horas_periodo" int4
)
;

-- ----------------------------
-- Table structure for superior_modulo_periodo
-- ----------------------------
DROP TABLE IF EXISTS "public"."superior_modulo_periodo";
CREATE TABLE "public"."superior_modulo_periodo" (
  "id" int4 NOT NULL DEFAULT nextval('superior_modulo_periodo_id_seq'::regclass),
  "superior_modulo_tipo_id" int4 NOT NULL,
  "institucioneducativa_periodo_id" int4 NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "horas_modulo" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for superior_modulo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."superior_modulo_tipo";
CREATE TABLE "public"."superior_modulo_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('superior_modulo_tipo_id_seq'::regclass),
  "modulo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default",
  "superior_area_saberes_tipo_id" int4 NOT NULL,
  "codigo" int4,
  "sigla" varchar(7) COLLATE "pg_catalog"."default",
  "oficial" int2,
  "contenido" varchar(250) COLLATE "pg_catalog"."default",
  "esvigente" bool
)
;

-- ----------------------------
-- Table structure for superior_periodo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."superior_periodo_tipo";
CREATE TABLE "public"."superior_periodo_tipo" (
  "id" int4 NOT NULL,
  "periodo_superior" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for superior_turno_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."superior_turno_tipo";
CREATE TABLE "public"."superior_turno_tipo" (
  "id" int4 NOT NULL,
  "turno_superior" varchar(120) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tiempo_maximo_trayecto_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."tiempo_maximo_trayecto_tipo";
CREATE TABLE "public"."tiempo_maximo_trayecto_tipo" (
  "id" int4 NOT NULL,
  "descripcion_tiempo_max_tipo" varchar(255) COLLATE "pg_catalog"."default",
  "es_vigente" bool,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for tmp_alternativa_inscritos_vs_pagado_10062020
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_alternativa_inscritos_vs_pagado_10062020";
CREATE TABLE "public"."tmp_alternativa_inscritos_vs_pagado_10062020" (
  "gestion_tipo_id" int4,
  "institucioneducativa_id" int4,
  "turno_tipo_id" int2,
  "nivel_tipo_id" int2,
  "grado_tipo_id" int2,
  "paralelo_tipo_id" varchar(2) COLLATE "pg_catalog"."default",
  "estadomatricula_tipo_id" int2,
  "estadomatricula_inicio_tipo_id" int2,
  "ide" int4,
  "codigo_rude" varchar(18) COLLATE "pg_catalog"."default",
  "carnet_identidad" varchar(20) COLLATE "pg_catalog"."default",
  "complemento" varchar(2) COLLATE "pg_catalog"."default",
  "paterno" varchar(45) COLLATE "pg_catalog"."default",
  "materno" varchar(45) COLLATE "pg_catalog"."default",
  "nombre" varchar(45) COLLATE "pg_catalog"."default",
  "genero_tipo_id" int2,
  "fecha_nacimiento" date,
  "segip_id" int2,
  "idins" int4,
  "cod_ue_id" int4,
  "desc_ue" varchar(255) COLLATE "pg_catalog"."default",
  "estadoinstitucion_tipo_id" int2,
  "cod_dependencia_id" int2,
  "id_departamento" varchar(15) COLLATE "pg_catalog"."default",
  "desc_departamento" varchar(125) COLLATE "pg_catalog"."default",
  "id_provincia" varchar(15) COLLATE "pg_catalog"."default",
  "desc_provincia" varchar(125) COLLATE "pg_catalog"."default",
  "id_seccion" varchar(15) COLLATE "pg_catalog"."default",
  "desc_seccion" varchar(125) COLLATE "pg_catalog"."default",
  "idmun" varchar(15) COLLATE "pg_catalog"."default",
  "municipio" varchar(125) COLLATE "pg_catalog"."default",
  "cod_distrito" varchar(15) COLLATE "pg_catalog"."default",
  "distrito" varchar(125) COLLATE "pg_catalog"."default",
  "unico" int2,
  "pagado" int2,
  "observado" int2,
  "genero" varchar(255) COLLATE "pg_catalog"."default",
  "desc_pago" varchar(255) COLLATE "pg_catalog"."default",
  "estadomatricula" varchar(255) COLLATE "pg_catalog"."default",
  "desc_antiguo" varchar(255) COLLATE "pg_catalog"."default",
  "dependencia" varchar(255) COLLATE "pg_catalog"."default",
  "nivel" varchar(255) COLLATE "pg_catalog"."default",
  "grado" varchar(255) COLLATE "pg_catalog"."default",
  "area" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tmp_alumnos_seleccionados_autonomias_952018
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_alumnos_seleccionados_autonomias_952018";
CREATE TABLE "public"."tmp_alumnos_seleccionados_autonomias_952018" (
  "institucioneducativa_id" int4 NOT NULL,
  "matini1" int8,
  "matini2" int8,
  "matpri1" int8,
  "matpri2" int8,
  "matpri3" int8,
  "matpri4" int8,
  "matpri5" int8,
  "matpri6" int8,
  "matsec1" int8,
  "matsec2" int8,
  "matsec3" int8,
  "matsec4" int8,
  "matsec5" int8,
  "matsec6" int8
)
;

-- ----------------------------
-- Table structure for tmp_asignacion_fecha_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_asignacion_fecha_tipo";
CREATE TABLE "public"."tmp_asignacion_fecha_tipo" (
  "id" int8 NOT NULL,
  "gestion" int4,
  "mes" int4,
  "asignacion_fecha_inicio" date,
  "asignacion_fecha_fin" date
)
;

-- ----------------------------
-- Table structure for tmp_calidad_techo
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_calidad_techo";
CREATE TABLE "public"."tmp_calidad_techo" (
  "id" int4 NOT NULL,
  "gestion_tipo_id" int4,
  "validacion_regla_tipo_id" int4,
  "lugar_tipo_id_distrito" int4,
  "cant" int4,
  "obs" varchar(1000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tmp_cargoplanilla_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_cargoplanilla_tipo";
CREATE TABLE "public"."tmp_cargoplanilla_tipo" (
  "id" int4 NOT NULL,
  "esc" varchar(2) COLLATE "pg_catalog"."default",
  "codcar" varchar(2) COLLATE "pg_catalog"."default",
  "descripcion_cargo" varchar(50) COLLATE "pg_catalog"."default",
  "tipo" varchar(1) COLLATE "pg_catalog"."default",
  "tipoporcate" varchar(1) COLLATE "pg_catalog"."default",
  "cargosup" int2,
  "cargoinf" int2,
  "habilitado" int2,
  "cod_func" int2,
  "fec_mod" date,
  "descripcion_cargo_agregado" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tmp_catalogo_alternativa_humanistica
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_catalogo_alternativa_humanistica";
CREATE TABLE "public"."tmp_catalogo_alternativa_humanistica" (
  "nivel_id" int4 NOT NULL,
  "facultad_area" varchar(50) COLLATE "pg_catalog"."default",
  "ciclo_id" int4 NOT NULL,
  "especialidad" varchar(50) COLLATE "pg_catalog"."default",
  "grado_id" int4 NOT NULL,
  "acreditacion" varchar(50) COLLATE "pg_catalog"."default",
  "modulo_id" int4 NOT NULL,
  "modulo" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tmp_diccionario
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_diccionario";
CREATE TABLE "public"."tmp_diccionario" (
  "id" int8 NOT NULL,
  "palabra" varchar(255) COLLATE "pg_catalog"."default",
  "bus_a" varchar(255) COLLATE "pg_catalog"."default",
  "bus_b" varchar(255) COLLATE "pg_catalog"."default",
  "bus_c" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tmp_diccionario_2
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_diccionario_2";
CREATE TABLE "public"."tmp_diccionario_2" (
  "id" int8 NOT NULL,
  "palabra_correcta" varchar(255) COLLATE "pg_catalog"."default",
  "palabra_incorrecta" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tmp_especial_inscritos_vs_pagado_10062020
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_especial_inscritos_vs_pagado_10062020";
CREATE TABLE "public"."tmp_especial_inscritos_vs_pagado_10062020" (
  "gestion_tipo_id" int4,
  "institucioneducativa_id" int4,
  "turno_tipo_id" int2,
  "nivel_tipo_id" int2,
  "grado_tipo_id" int2,
  "paralelo_tipo_id" varchar(2) COLLATE "pg_catalog"."default",
  "estadomatricula_tipo_id" int2,
  "estadomatricula_inicio_tipo_id" int2,
  "ide" int4,
  "codigo_rude" varchar(18) COLLATE "pg_catalog"."default",
  "carnet_identidad" varchar(20) COLLATE "pg_catalog"."default",
  "complemento" varchar(2) COLLATE "pg_catalog"."default",
  "paterno" varchar(45) COLLATE "pg_catalog"."default",
  "materno" varchar(45) COLLATE "pg_catalog"."default",
  "nombre" varchar(45) COLLATE "pg_catalog"."default",
  "genero_tipo_id" int2,
  "fecha_nacimiento" date,
  "segip_id" int2,
  "idins" int4,
  "unico" int2,
  "pagado" int2,
  "observado" int2,
  "apoderado" int2,
  "genero" varchar(255) COLLATE "pg_catalog"."default",
  "desc_pago" varchar(255) COLLATE "pg_catalog"."default",
  "desc_antiguo" varchar(255) COLLATE "pg_catalog"."default",
  "estadomatricula" varchar(255) COLLATE "pg_catalog"."default",
  "dependencia" varchar(255) COLLATE "pg_catalog"."default",
  "area" varchar(255) COLLATE "pg_catalog"."default",
  "departamento" varchar(255) COLLATE "pg_catalog"."default",
  "distrito" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tmp_estudiante_ultimo_curso
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_estudiante_ultimo_curso";
CREATE TABLE "public"."tmp_estudiante_ultimo_curso" (
  "id" int8 NOT NULL,
  "gestion_id" int2 NOT NULL,
  "codigo_rude_id" varchar(18) COLLATE "pg_catalog"."default" NOT NULL,
  "nivel_id" numeric(3) NOT NULL,
  "ciclo_id" numeric(3) NOT NULL,
  "grado_id" numeric(3) NOT NULL,
  "niv_mat" int4,
  "estado_matricula_fin_id" numeric(3) NOT NULL
)
;

-- ----------------------------
-- Table structure for tmp_institucioneducativa_curso_mult
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_institucioneducativa_curso_mult";
CREATE TABLE "public"."tmp_institucioneducativa_curso_mult" (
  "gestion_tipo_id" int4 NOT NULL,
  "institucioneducativa_id" int4,
  "nivel_tipo_id" int2,
  "grado_tipo_id" int2,
  "turno_tipo_id" int2,
  "paralelo_tipo_id" varchar(2) COLLATE "pg_catalog"."default",
  "multigrado" int4,
  "als" int8,
  "multigrado_prob" numeric
)
;

-- ----------------------------
-- Table structure for tmp_mun_autonomias_17_05_2016
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_mun_autonomias_17_05_2016";
CREATE TABLE "public"."tmp_mun_autonomias_17_05_2016" (
  "cod_dep12" varchar(5) COLLATE "pg_catalog"."default" NOT NULL,
  "des_dep12" varchar(510) COLLATE "pg_catalog"."default",
  "cod_pro12" varchar(5) COLLATE "pg_catalog"."default" NOT NULL,
  "des_pro12" varchar(510) COLLATE "pg_catalog"."default",
  "cod_sec12" varchar(5) COLLATE "pg_catalog"."default" NOT NULL,
  "des_sec12" varchar(510) COLLATE "pg_catalog"."default",
  "matini1" int4,
  "matini2" int4,
  "matini" int4,
  "matpri1" int4,
  "matpri2" int4,
  "matpri3" int4,
  "matpri4" int4,
  "matpri5" int4,
  "matpri6" int4,
  "matpri" int4,
  "matsec1" int4,
  "matsec2" int4,
  "matsec3" int4,
  "matsec4" int4,
  "matsec5" int4,
  "matsec6" int4,
  "matsec" int4,
  "matips" int4
)
;

-- ----------------------------
-- Table structure for tmp_nombre_genero
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_nombre_genero";
CREATE TABLE "public"."tmp_nombre_genero" (
  "id" int4 NOT NULL,
  "nombre" varchar(150) COLLATE "pg_catalog"."default",
  "genero_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for tmp_planilla
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_planilla";
CREATE TABLE "public"."tmp_planilla" (
  "gestion" int4 NOT NULL,
  "mes" int4 NOT NULL,
  "servicio" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "programa" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "item" varchar(7) COLLATE "pg_catalog"."default" NOT NULL,
  "c31" int4,
  "carnet" varchar(15) COLLATE "pg_catalog"."default",
  "paterno" varchar(15) COLLATE "pg_catalog"."default",
  "materno" varchar(15) COLLATE "pg_catalog"."default",
  "nombre1" varchar(15) COLLATE "pg_catalog"."default",
  "nombre2" varchar(15) COLLATE "pg_catalog"."default",
  "cargo" int4,
  "porcate" int4,
  "horapr" int4,
  "horapa" int4,
  "horas" int4,
  "diastrab" int4,
  "afp" int4,
  "tipo_proceso" int4,
  "pagado" int4,
  "subsidio" varchar(10) COLLATE "pg_catalog"."default",
  "acreedor" int4,
  "reintegro" varchar(15) COLLATE "pg_catalog"."default",
  "saldo_iva" numeric(10,2),
  "basico" numeric(10,2),
  "catego" numeric(10,2),
  "acumulo" numeric(10,2),
  "reintegros" numeric(10,2),
  "bonojer" numeric(10,2),
  "bonozona" numeric(10,2),
  "bonofron" numeric(10,2),
  "ingres3" numeric(10,2),
  "ingres5" numeric(10,2),
  "rein_sub" numeric(10,2),
  "subsidios" numeric(10,2),
  "sumahab" numeric(10,2),
  "fonvi_inv" numeric(10,2),
  "renta" numeric(10,2),
  "adap" numeric(10,2),
  "multas_fal" numeric(10,2),
  "descue10" numeric(10,2),
  "cob" numeric(10,2),
  "des_subsi" numeric(10,2),
  "otrosdesc" numeric(10,2),
  "afp10" numeric(10,2),
  "afp02" numeric(10,2),
  "afp005" numeric(10,2),
  "p13110" numeric(10,2),
  "p13120" numeric(10,2),
  "p13200" numeric(10,2),
  "sumades" numeric(10,2),
  "totcheque" numeric(10,2),
  "mmaachq" varchar(15) COLLATE "pg_catalog"."default",
  "nrochq" varchar(15) COLLATE "pg_catalog"."default",
  "digchq" int4,
  "cod_dep" int4,
  "cod_obs" int4,
  "cod_ue" varchar(15) COLLATE "pg_catalog"."default",
  "cod_rda" int4,
  "cod_dis" int4,
  "niv" int4,
  "carnet2" int4,
  "carnet_integer" int4
)
;

-- ----------------------------
-- Table structure for tmp_planilla_datos_personales_unico
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_planilla_datos_personales_unico";
CREATE TABLE "public"."tmp_planilla_datos_personales_unico" (
  "nro" int8 NOT NULL,
  "gestion" int4,
  "carnet" varchar COLLATE "pg_catalog"."default",
  "paterno" varchar(15) COLLATE "pg_catalog"."default",
  "materno" varchar(15) COLLATE "pg_catalog"."default",
  "nombre1" varchar(15) COLLATE "pg_catalog"."default",
  "nombre2" varchar(15) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tmp_planilla_maestros
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_planilla_maestros";
CREATE TABLE "public"."tmp_planilla_maestros" (
  "id" int4 NOT NULL,
  "institucioneducativa_id" int4 NOT NULL,
  "gestion_tipo_id" int4,
  "mes" int2,
  "carnet" varchar(8) COLLATE "pg_catalog"."default",
  "paterno" varchar(15) COLLATE "pg_catalog"."default",
  "materno" varchar(15) COLLATE "pg_catalog"."default",
  "nombre1" varchar(15) COLLATE "pg_catalog"."default",
  "nombre2" varchar(15) COLLATE "pg_catalog"."default",
  "cargoplanilla_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for tmp_planilla_tgn
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_planilla_tgn";
CREATE TABLE "public"."tmp_planilla_tgn" (
  "gestion" int4 NOT NULL,
  "cod_ue" int4 NOT NULL,
  "carnet" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "frec" int8
)
;

-- ----------------------------
-- Table structure for tmp_planilla_tgn_todo
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_planilla_tgn_todo";
CREATE TABLE "public"."tmp_planilla_tgn_todo" (
  "gestion" int4 NOT NULL,
  "cod_ue" int4 NOT NULL,
  "carnet" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "cod_func" int4 NOT NULL,
  "frec" int8
)
;

-- ----------------------------
-- Table structure for tmp_regular_inscritos_vs_pagado_10062020
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_regular_inscritos_vs_pagado_10062020";
CREATE TABLE "public"."tmp_regular_inscritos_vs_pagado_10062020" (
  "id_departamento" varchar(15) COLLATE "pg_catalog"."default",
  "desc_departamento" varchar(125) COLLATE "pg_catalog"."default",
  "cod_distrito" varchar(15) COLLATE "pg_catalog"."default",
  "distrito" varchar(125) COLLATE "pg_catalog"."default",
  "tipo_area" varchar(1) COLLATE "pg_catalog"."default",
  "cod_ue_id" int4,
  "desc_ue" varchar(255) COLLATE "pg_catalog"."default",
  "cod_dependencia_id" int2,
  "dependencia" varchar(45) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4,
  "institucioneducativa_id" int4,
  "turno_tipo_id" int2,
  "nivel_tipo_id" int2,
  "grado_tipo_id" int2,
  "paralelo_tipo_id" varchar(2) COLLATE "pg_catalog"."default",
  "estadomatricula_tipo_id" int2,
  "estadomatricula_inicio_tipo_id" int2,
  "fecha_registro" date,
  "codigo_rude" varchar(18) COLLATE "pg_catalog"."default",
  "carnet_identidad" varchar(20) COLLATE "pg_catalog"."default",
  "complemento" varchar(2) COLLATE "pg_catalog"."default",
  "paterno" varchar(45) COLLATE "pg_catalog"."default",
  "materno" varchar(45) COLLATE "pg_catalog"."default",
  "nombre" varchar(45) COLLATE "pg_catalog"."default",
  "fecha_nacimiento" date,
  "segip_id" int2,
  "idins" int4,
  "pago" int2,
  "antiguo" int2,
  "apoderado" int2
)
;

-- ----------------------------
-- Table structure for tmp_t_trans_ue
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_t_trans_ue";
CREATE TABLE "public"."tmp_t_trans_ue" (
  "cod_trans_ue" int4 NOT NULL,
  "cod_ue" varchar(8) COLLATE "pg_catalog"."default",
  "cod_form_ue" varchar(8) COLLATE "pg_catalog"."default",
  "user_id" varchar(10) COLLATE "pg_catalog"."default",
  "campo" varchar(15) COLLATE "pg_catalog"."default",
  "dato" varchar(50) COLLATE "pg_catalog"."default",
  "fec_trans" timestamp(6),
  "fec_sist" timestamp(6),
  "oper" varchar(1) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tmp_ues_autonomias_17_05_2016
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_ues_autonomias_17_05_2016";
CREATE TABLE "public"."tmp_ues_autonomias_17_05_2016" (
  "id_departamento" int4,
  "desc_departamento" varchar(10) COLLATE "pg_catalog"."default",
  "id_provincia" varchar(2) COLLATE "pg_catalog"."default",
  "desc_provincia" varchar(25) COLLATE "pg_catalog"."default",
  "id_seccion" varchar(2) COLLATE "pg_catalog"."default",
  "desc_seccion" varchar(50) COLLATE "pg_catalog"."default",
  "id_canton" int4,
  "desc_canton" varchar(45) COLLATE "pg_catalog"."default",
  "id_localidad" varchar(6) COLLATE "pg_catalog"."default",
  "desc_localidad" varchar(125) COLLATE "pg_catalog"."default",
  "dependencia" varchar(16) COLLATE "pg_catalog"."default",
  "tipo_area" varchar(1) COLLATE "pg_catalog"."default",
  "cod_ue" int4 NOT NULL,
  "cod_le_id" varchar(8) COLLATE "pg_catalog"."default",
  "desc_ue" varchar(70) COLLATE "pg_catalog"."default",
  "telefono1" varchar(8) COLLATE "pg_catalog"."default",
  "telefono2" varchar(8) COLLATE "pg_catalog"."default",
  "referencia_telefono2" varchar(45) COLLATE "pg_catalog"."default",
  "cont" int4,
  "fax" varchar(8) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "casilla" varchar(45) COLLATE "pg_catalog"."default",
  "cod_distrito" int4,
  "distrito" varchar(45) COLLATE "pg_catalog"."default",
  "zona" varchar(50) COLLATE "pg_catalog"."default",
  "direccion" varchar(100) COLLATE "pg_catalog"."default",
  "ci" varchar(100) COLLATE "pg_catalog"."default",
  "nombre_dir" varchar(342) COLLATE "pg_catalog"."default",
  "matini1" int2,
  "matini2" int2,
  "matpri1" int2,
  "matpri2" int2,
  "matpri3" int2,
  "matpri4" int2,
  "matpri5" int2,
  "matpri6" int2,
  "matsec1" int2,
  "matsec2" int2,
  "matsec3" int2,
  "matsec4" int2,
  "matsec5" int2,
  "matsec6" int2,
  "cod_dep12" varchar(510) COLLATE "pg_catalog"."default",
  "des_dep12" varchar(510) COLLATE "pg_catalog"."default",
  "cod_pro12" varchar(510) COLLATE "pg_catalog"."default",
  "des_pro12" varchar(510) COLLATE "pg_catalog"."default",
  "cod_sec12" varchar(510) COLLATE "pg_catalog"."default",
  "des_sec12" varchar(510) COLLATE "pg_catalog"."default",
  "cantini1" int4,
  "cantini2" int4,
  "cantpri1" int4,
  "cantpri2" int4,
  "cantpri3" int4,
  "cantpri4" int4,
  "cantpri5" int4,
  "cantpri6" int4,
  "cantsec1" int4,
  "cantsec2" int4,
  "cantsec3" int4,
  "cantsec4" int4,
  "cantsec5" int4,
  "cantsec6" int4,
  "cordx" float8,
  "cordy" float8
)
;

-- ----------------------------
-- Table structure for tmp_ues_autonomias_17_05_2016_org
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_ues_autonomias_17_05_2016_org";
CREATE TABLE "public"."tmp_ues_autonomias_17_05_2016_org" (
  "id_departamento" int4,
  "desc_departamento" varchar(10) COLLATE "pg_catalog"."default",
  "id_provincia" varchar(2) COLLATE "pg_catalog"."default",
  "desc_provincia" varchar(25) COLLATE "pg_catalog"."default",
  "id_seccion" varchar(2) COLLATE "pg_catalog"."default",
  "desc_seccion" varchar(50) COLLATE "pg_catalog"."default",
  "id_canton" int4,
  "desc_canton" varchar(45) COLLATE "pg_catalog"."default",
  "id_localidad" varchar(6) COLLATE "pg_catalog"."default",
  "desc_localidad" varchar(125) COLLATE "pg_catalog"."default",
  "dependencia" varchar(16) COLLATE "pg_catalog"."default",
  "tipo_area" varchar(1) COLLATE "pg_catalog"."default",
  "cod_ue" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "cod_le_id" varchar(8) COLLATE "pg_catalog"."default",
  "desc_ue" varchar(70) COLLATE "pg_catalog"."default",
  "telefono1" varchar(8) COLLATE "pg_catalog"."default",
  "telefono2" varchar(8) COLLATE "pg_catalog"."default",
  "referencia_telefono2" varchar(45) COLLATE "pg_catalog"."default",
  "cont" int4,
  "fax" varchar(8) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "casilla" varchar(45) COLLATE "pg_catalog"."default",
  "cod_distrito" int4,
  "distrito" varchar(45) COLLATE "pg_catalog"."default",
  "zona" varchar(50) COLLATE "pg_catalog"."default",
  "direccion" varchar(100) COLLATE "pg_catalog"."default",
  "ci" varchar(100) COLLATE "pg_catalog"."default",
  "nombre_dir" varchar(342) COLLATE "pg_catalog"."default",
  "matini1" int2,
  "matini2" int2,
  "matpri1" int2,
  "matpri2" int2,
  "matpri3" int2,
  "matpri4" int2,
  "matpri5" int2,
  "matpri6" int2,
  "matsec1" int2,
  "matsec2" int2,
  "matsec3" int2,
  "matsec4" int2,
  "matsec5" int2,
  "matsec6" int2,
  "cod_dep12" varchar(510) COLLATE "pg_catalog"."default",
  "des_dep12" varchar(510) COLLATE "pg_catalog"."default",
  "cod_pro12" varchar(510) COLLATE "pg_catalog"."default",
  "des_pro12" varchar(510) COLLATE "pg_catalog"."default",
  "cod_sec12" varchar(510) COLLATE "pg_catalog"."default",
  "des_sec12" varchar(510) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tmp_valida_grados_als
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_valida_grados_als";
CREATE TABLE "public"."tmp_valida_grados_als" (
  "gestion" int4 NOT NULL,
  "nivel_id" int4 NOT NULL,
  "grado_id" int4 NOT NULL,
  "orden" int4
)
;

-- ----------------------------
-- Table structure for tmpue
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmpue";
CREATE TABLE "public"."tmpue" (
  "id" int8 NOT NULL,
  "institucioneducativa" char(8) COLLATE "pg_catalog"."default",
  "dependencia_tipo" varchar(45) COLLATE "pg_catalog"."default",
  "area_tipo" varchar(1) COLLATE "pg_catalog"."default",
  "org_curr_tipo" varchar(45) COLLATE "pg_catalog"."default",
  "turno_tipo" varchar(45) COLLATE "pg_catalog"."default",
  "departamento_tipo" varchar(125) COLLATE "pg_catalog"."default",
  "provincia" varchar(125) COLLATE "pg_catalog"."default",
  "seccion" varchar(125) COLLATE "pg_catalog"."default",
  "canton" varchar(125) COLLATE "pg_catalog"."default",
  "localidad_tipo" varchar(125) COLLATE "pg_catalog"."default",
  "distrito_tipo" varchar(75) COLLATE "pg_catalog"."default",
  "obs" varchar(45) COLLATE "pg_catalog"."default",
  "jurisdiccion_geografica_id" int4,
  "esactivo" bool,
  "resolucion" varchar(45) COLLATE "pg_catalog"."default",
  "gestion" int4,
  "direccion" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tramite
-- ----------------------------
DROP TABLE IF EXISTS "public"."tramite";
CREATE TABLE "public"."tramite" (
  "id" int4 NOT NULL DEFAULT nextval(('tramite_id_seq'::text)::regclass),
  "tramite" varchar(50) COLLATE "pg_catalog"."default",
  "estudiante_inscripcion_id" int4,
  "flujo_tipo_id" int2 NOT NULL,
  "tramite_tipo" int2 NOT NULL,
  "fecha_tramite" date,
  "fecha_registro" date,
  "fecha_fin" date,
  "esactivo" bool NOT NULL,
  "gestion_id" int2,
  "apoderado_inscripcion_id" int4,
  "maestro_inscripcion_id" int4,
  "institucioneducativa_id" int4
)
;

-- ----------------------------
-- Table structure for tramite_alternativa
-- ----------------------------
DROP TABLE IF EXISTS "public"."tramite_alternativa";
CREATE TABLE "public"."tramite_alternativa" (
  "id" int4 NOT NULL DEFAULT nextval(('tramite_alternativa_id_seq'::text)::regclass),
  "estudiante" int4,
  "esp" int2,
  "nivel" int2,
  "periodo" int2,
  "institucioneducativa" int8,
  "tramite_id" int8,
  "fecha" date
)
;

-- ----------------------------
-- Table structure for tramite_detalle
-- ----------------------------
DROP TABLE IF EXISTS "public"."tramite_detalle";
CREATE TABLE "public"."tramite_detalle" (
  "id" int4 NOT NULL DEFAULT nextval(('tramite_detalle_id_seq'::text)::regclass),
  "obs" text COLLATE "pg_catalog"."default",
  "tramite_detalle_id" int4,
  "tramite_id" int4 NOT NULL,
  "tramite_estado_id" int2 NOT NULL,
  "flujo_proceso_id" int2 NOT NULL,
  "usuario_destinatario_id" int4,
  "fecha_registro" date,
  "fecha_envio" date,
  "fecha_recepcion" date,
  "fecha_modificacion" date,
  "usuario_remitente_id" int4,
  "valor_evaluacion" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tramite_estado
-- ----------------------------
DROP TABLE IF EXISTS "public"."tramite_estado";
CREATE TABLE "public"."tramite_estado" (
  "id" int2 NOT NULL,
  "tramite_estado" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tramite_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."tramite_tipo";
CREATE TABLE "public"."tramite_tipo" (
  "id" int2 NOT NULL,
  "tramite_tipo" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_administrativo_carrera
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_administrativo_carrera";
CREATE TABLE "public"."ttec_administrativo_carrera" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_administrativo_carrera_id_seq'::regclass),
  "ttec_carrera_tipo_id" int4,
  "ttec_cargo_tipo_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date
)
;

-- ----------------------------
-- Table structure for ttec_administrativo_carrera_persona
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_administrativo_carrera_persona";
CREATE TABLE "public"."ttec_administrativo_carrera_persona" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_administrativo_carrera_persona_id_seq'::regclass),
  "persona_id" int4,
  "es_vigente" bool,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "ttec_cargo_designacion_tipo_id" int4,
  "ttec_cargo_tipo_id" int4,
  "ttec_carrera_tipo_id" int4,
  "gestion_tipo_id" int4,
  "financiamiento_tipo_id" int4,
  "item" int4
)
;

-- ----------------------------
-- Table structure for ttec_administrativo_instituto
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_administrativo_instituto";
CREATE TABLE "public"."ttec_administrativo_instituto" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_administrativo_instituto_id_seq'::regclass),
  "institucioneducativa_id" int4,
  "ttec_cargo_tipo_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date
)
;

-- ----------------------------
-- Table structure for ttec_administrativo_instituto_persona
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_administrativo_instituto_persona";
CREATE TABLE "public"."ttec_administrativo_instituto_persona" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_administrativo_instituto_persona_id_seq'::regclass),
  "persona_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "es_vigente" bool,
  "ttec_cargo_designacion_tipo_id" int4,
  "gestion_tipo_id" int4,
  "institucioneducativa_id" int4,
  "ttec_cargo_tipo_id" int4,
  "financiamiento_tipo_id" int4,
  "item" int4,
  "ttec_formacion_tipo_id" int4,
  "tipo_contrato" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_area_formacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_area_formacion_tipo";
CREATE TABLE "public"."ttec_area_formacion_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_area_formacion_tipo_id_seq'::regclass),
  "institucioneducativa_tipo_id" int2,
  "area_formacion" varchar(150) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_modificacion" date
)
;

-- ----------------------------
-- Table structure for ttec_calendario_operativo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_calendario_operativo";
CREATE TABLE "public"."ttec_calendario_operativo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_calendario_operativo_id_seq'::regclass),
  "institucioneducativa_id" int4,
  "ttec_operativo_tipo_id" int4,
  "gestion_tipo_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "ttec_periodo_tipo_id" int4,
  "fecha_inicio" date,
  "fecha_fin" date
)
;

-- ----------------------------
-- Table structure for ttec_cargo_designacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_cargo_designacion_tipo";
CREATE TABLE "public"."ttec_cargo_designacion_tipo" (
  "id" int2 NOT NULL,
  "forma_designacion" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(105) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_cargo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_cargo_tipo";
CREATE TABLE "public"."ttec_cargo_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('ttec_cargo_tipo_id_seq'::regclass),
  "cargo" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(105) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_carrera_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_carrera_tipo";
CREATE TABLE "public"."ttec_carrera_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_carrera_tipo_id_seq'::regclass),
  "nombre" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "ttec_area_formacion_tipo_id" int4,
  "ttec_estado_carrera_tipo_id" int4,
  "codigo" varchar(45) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_catalogo_materia
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_catalogo_materia";
CREATE TABLE "public"."ttec_catalogo_materia" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_catalogo_materia_id_seq'::regclass),
  "codigo" varchar(20) COLLATE "pg_catalog"."default",
  "catalogo_materia" varchar(250) COLLATE "pg_catalog"."default",
  "obs" varchar(150) COLLATE "pg_catalog"."default",
  "ttec_denominacion_titulo_profesional_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for ttec_curso_estado_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_curso_estado_tipo";
CREATE TABLE "public"."ttec_curso_estado_tipo" (
  "id" int2 NOT NULL,
  "estado" varchar(25) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_denominacion_titulo_profesional_resolucion
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_denominacion_titulo_profesional_resolucion";
CREATE TABLE "public"."ttec_denominacion_titulo_profesional_resolucion" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_denominacion_titulo_profesional_resolucion_id_seq'::regclass),
  "numero" varchar(15) COLLATE "pg_catalog"."default",
  "fecha" date,
  "archivo" varchar(50) COLLATE "pg_catalog"."default",
  "descripcion" text COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_modificacion" date,
  "ttec_denominacion_titulo_profesional_tipo_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for ttec_denominacion_titulo_profesional_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_denominacion_titulo_profesional_tipo";
CREATE TABLE "public"."ttec_denominacion_titulo_profesional_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_denominacion_titulo_profesional_tipo_id_seq'::regclass),
  "denominacion" varchar(255) COLLATE "pg_catalog"."default",
  "mencion" varchar(255) COLLATE "pg_catalog"."default",
  "ttec_institucioneducativa_carrera_autorizada_id" int4,
  "nivel_tipo_id" int4,
  "es_vigente" bool
)
;

-- ----------------------------
-- Table structure for ttec_dia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_dia_tipo";
CREATE TABLE "public"."ttec_dia_tipo" (
  "id" int4 NOT NULL,
  "dia" varchar(25) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_docente_materia
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_docente_materia";
CREATE TABLE "public"."ttec_docente_materia" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_docente_materia_id_seq'::regclass),
  "ttec_docente_persona_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "es_vigente" bool,
  "ttec_paralelo_materia_id" int4
)
;

-- ----------------------------
-- Table structure for ttec_docente_persona
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_docente_persona";
CREATE TABLE "public"."ttec_docente_persona" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_docente_persona_id_seq'::regclass),
  "institucioneducativa_id" int4,
  "doc_experiencia_laboral" bool,
  "doc_cursos_respaldo" bool,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "persona_id" int4,
  "es_vigente" bool,
  "gestion_tipo_id" int4,
  "item" int4,
  "ttec_cargo_designacion_tipo_id" int4,
  "financiamiento_tipo_id" int4,
  "ttec_cargo_tipo_id" int4,
  "ttec_formacion_tipo_id" int4,
  "tipo_contrato" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_estado_carrera_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_estado_carrera_tipo";
CREATE TABLE "public"."ttec_estado_carrera_tipo" (
  "id" int4 NOT NULL,
  "estado_carrera" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_estudiante_inscripcion
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_estudiante_inscripcion";
CREATE TABLE "public"."ttec_estudiante_inscripcion" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_estudiante_inscripcion_id_seq'::regclass),
  "persona_id" int4,
  "ttec_paralelo_materia_id" int4,
  "estadomatricula_tipo_inicio_id" int4,
  "estadomatricula_tipo_fin_id" int4,
  "fecha_inscripcion" date,
  "fecha_registro" date,
  "estudiante_id" int4
)
;

-- ----------------------------
-- Table structure for ttec_estudiante_inscripcion_competencia
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_estudiante_inscripcion_competencia";
CREATE TABLE "public"."ttec_estudiante_inscripcion_competencia" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_estudiante_inscripcion_competencia_id_seq'::regclass),
  "ttec_materia_competencia_detalle_tipo_id" int4,
  "ttec_estudiante_inscripcion_id" int4,
  "cumple" bool,
  "fecha_registro" date,
  "fecha_modificacion" date
)
;

-- ----------------------------
-- Table structure for ttec_estudiante_matriculacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_estudiante_matriculacion";
CREATE TABLE "public"."ttec_estudiante_matriculacion" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_estudiante_matriculacion_id_seq'::regclass),
  "persona_id" int4,
  "ttec_carrera_tipo_id" int4,
  "ttec_pensum_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "estudiante_id" int4
)
;

-- ----------------------------
-- Table structure for ttec_estudiante_nota
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_estudiante_nota";
CREATE TABLE "public"."ttec_estudiante_nota" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_estudiante_nota_id_seq'::regclass),
  "ttec_estudiante_inscripcion_id" int4,
  "nota_cuantitativa" int2,
  "nota_cualitativa" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_modificacion" date
)
;

-- ----------------------------
-- Table structure for ttec_formacion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_formacion_tipo";
CREATE TABLE "public"."ttec_formacion_tipo" (
  "id" int2 NOT NULL DEFAULT nextval('ttec_formacion_tipo_id_seq'::regclass),
  "formacion" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "obs" varchar(105) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_horario_paralelo_materia
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_horario_paralelo_materia";
CREATE TABLE "public"."ttec_horario_paralelo_materia" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_horario_paralelo_materia_id_seq'::regclass),
  "ttec_horario_tipo_id" int4,
  "ttec_paralelo_materia_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "obs" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_horario_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_horario_tipo";
CREATE TABLE "public"."ttec_horario_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_paralelo_materia_horario_id_seq'::regclass),
  "ttec_dia_tipo_id" int4,
  "hora_inicio" time(6),
  "hora_fin" time(6),
  "obs" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_institucioneducativa_area_formacion_autorizado
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_institucioneducativa_area_formacion_autorizado";
CREATE TABLE "public"."ttec_institucioneducativa_area_formacion_autorizado" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_institucioneducativa_area_formacion_autorizado_id_seq1'::regclass),
  "institucioneducativa_id" int4,
  "ttec_area_formacion_tipo_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date
)
;

-- ----------------------------
-- Table structure for ttec_institucioneducativa_carrera_autorizada
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_institucioneducativa_carrera_autorizada";
CREATE TABLE "public"."ttec_institucioneducativa_carrera_autorizada" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_institucioneducativa_carrera_autorizada_id_seq'::regclass),
  "institucioneducativa_id" int4,
  "ttec_carrera_tipo_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "es_enviado" bool,
  "es_vigente" bool
)
;

-- ----------------------------
-- Table structure for ttec_institucioneducativa_carrera_autorizada_curso
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_institucioneducativa_carrera_autorizada_curso";
CREATE TABLE "public"."ttec_institucioneducativa_carrera_autorizada_curso" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_institucioneducativa_carrera_autorizada_curso_id_seq'::regclass),
  "ttec_institucioneducativa_carrera_autorizada_id" int4 NOT NULL,
  "paralelo_tipo_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "gestion_tipo_id" int4 NOT NULL,
  "turno_tipo_id" int2 NOT NULL,
  "ttec_docente_persona_id" int4 NOT NULL,
  "ttec_curso_estado_tipo_id" int2 NOT NULL,
  "fecha_inicio" date,
  "fecha_fin" date,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for ttec_institucioneducativa_carrera_autorizada_curso_modulo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_institucioneducativa_carrera_autorizada_curso_modulo";
CREATE TABLE "public"."ttec_institucioneducativa_carrera_autorizada_curso_modulo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_institucioneducativa_carrera_autorizada_curso_modu_id_seq1'::regclass),
  "ttec_institucioneducativa_carrera_autorizada_curso_modulo_tipo_" int4 NOT NULL,
  "ttec_institucioneducativa_carrera_autorizada_curso_id" int4 NOT NULL,
  "ttec_docente_persona_id" int4 NOT NULL,
  "horas" int4 NOT NULL,
  "fecha_registro" timestamp(6),
  "fecha_modificacion" timestamp(6)
)
;

-- ----------------------------
-- Table structure for ttec_institucioneducativa_carrera_autorizada_curso_modulo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_institucioneducativa_carrera_autorizada_curso_modulo_tipo";
CREATE TABLE "public"."ttec_institucioneducativa_carrera_autorizada_curso_modulo_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_institucioneducativa_carrera_autorizada_curso_modul_id_seq'::regclass),
  "modulo" varchar(250) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for ttec_institucioneducativa_historico
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_institucioneducativa_historico";
CREATE TABLE "public"."ttec_institucioneducativa_historico" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_institucioneducativa_historico_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "nro_resolucion" varchar(45) COLLATE "pg_catalog"."default",
  "fecha_resolucion" date,
  "descripcion" text COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_modificacion" date,
  "dato_adicional" varchar(200) COLLATE "pg_catalog"."default",
  "archivo" varchar(200) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_institucioneducativa_sede
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_institucioneducativa_sede";
CREATE TABLE "public"."ttec_institucioneducativa_sede" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_institucioneducativa_sede_id_seq'::regclass),
  "institucioneducativa_id" int4 NOT NULL,
  "sede" int4,
  "fecha_cierre" date,
  "estado" bool,
  "observacion" varchar(200) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_modificacion" date,
  "persona_id" int4
)
;

-- ----------------------------
-- Table structure for ttec_institucioneducativa_tipo_cargo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_institucioneducativa_tipo_cargo";
CREATE TABLE "public"."ttec_institucioneducativa_tipo_cargo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_institucioneducativa_tipo_cargo_id_seq'::regclass),
  "institucioneducativa_tipo_id" int4,
  "ttec_cargo_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for ttec_institucioneducativa_tipo_formacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_institucioneducativa_tipo_formacion";
CREATE TABLE "public"."ttec_institucioneducativa_tipo_formacion" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_institucioneducativa_tipo_formacion_id_seq'::regclass),
  "institucioneducativa_tipo_id" int4,
  "ttec_formacion_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for ttec_materia_competencia_detalle_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_materia_competencia_detalle_tipo";
CREATE TABLE "public"."ttec_materia_competencia_detalle_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_materia_competencia_detalle_tipo_id_seq'::regclass),
  "ttec_materia_competencia_tipo_id" int4,
  "competencia_detalle" varchar(500) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_modificacion" date
)
;

-- ----------------------------
-- Table structure for ttec_materia_competencia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_materia_competencia_tipo";
CREATE TABLE "public"."ttec_materia_competencia_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_materia_competencia_tipo_id_seq'::regclass),
  "ttec_materia_tipo_id" int4,
  "competencia" varchar(150) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_modificacion" date
)
;

-- ----------------------------
-- Table structure for ttec_materia_prerrequisito
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_materia_prerrequisito";
CREATE TABLE "public"."ttec_materia_prerrequisito" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_materia_prerrequisito_id_seq'::regclass),
  "ttec_materia_tipo_id" int4,
  "ttec_materia_tipo_pre_id" int4,
  "obs" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_materia_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_materia_tipo";
CREATE TABLE "public"."ttec_materia_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_materia_tipo_id_seq'::regclass),
  "materia" varchar(255) COLLATE "pg_catalog"."default",
  "codigo" varchar(45) COLLATE "pg_catalog"."default",
  "horas_teoricas" int2,
  "horas_practicas" int2,
  "horas_totales" int2,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "ttec_periodo_tipo_id" int4,
  "ttec_pensum_id" int4
)
;

-- ----------------------------
-- Table structure for ttec_operativo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_operativo_tipo";
CREATE TABLE "public"."ttec_operativo_tipo" (
  "id" int4 NOT NULL,
  "operativo" varchar(255) COLLATE "pg_catalog"."default",
  "obs" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_operativo_universidad
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_operativo_universidad";
CREATE TABLE "public"."ttec_operativo_universidad" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_operativo_universidad_id_seq'::regclass),
  "nombre_operativo" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_inicio" date,
  "fecha_final" date
)
;

-- ----------------------------
-- Table structure for ttec_paralelo_materia
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_paralelo_materia";
CREATE TABLE "public"."ttec_paralelo_materia" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_paralelo_materia_id_seq'::regclass),
  "ttec_materia_tipo_id" int4,
  "ttec_paralelo_tipo_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "turno_tipo_id" int2,
  "gestion_tipo_id" int4,
  "cupo" int2,
  "ttec_periodo_tipo_id" int4,
  "es_vigente" bool,
  "fecha_registro_vigente" date DEFAULT now(),
  "fecha_registro_no_vigente" date DEFAULT now()
)
;

-- ----------------------------
-- Table structure for ttec_paralelo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_paralelo_tipo";
CREATE TABLE "public"."ttec_paralelo_tipo" (
  "id" int2 NOT NULL,
  "paralelo" varchar(45) COLLATE "pg_catalog"."default",
  "obs" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_pensum
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_pensum";
CREATE TABLE "public"."ttec_pensum" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_pensum_id_seq'::regclass),
  "pensum" varchar(150) COLLATE "pg_catalog"."default",
  "gestion_tipo_id" int4,
  "resolucion_administrativa" varchar(100) COLLATE "pg_catalog"."default",
  "nro_resolucion" varchar(10) COLLATE "pg_catalog"."default",
  "fecha_registro" date,
  "fecha_modificacion" date,
  "es_vigente" bool,
  "ttec_denominacion_titulo_profesional_tipo_id" int4,
  "tiempo_estudio" int2,
  "ttec_regimen_estudio_tipo_id" int4
)
;

-- ----------------------------
-- Table structure for ttec_periodo_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_periodo_tipo";
CREATE TABLE "public"."ttec_periodo_tipo" (
  "id" int2 NOT NULL,
  "periodo" varchar(100) COLLATE "pg_catalog"."default",
  "obs" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_preinscripcion
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_preinscripcion";
CREATE TABLE "public"."ttec_preinscripcion" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_preinscripcion_id_seq'::regclass),
  "ttec_materia_tipo_id" int4,
  "persona_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date
)
;

-- ----------------------------
-- Table structure for ttec_regimen_estudio_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_regimen_estudio_tipo";
CREATE TABLE "public"."ttec_regimen_estudio_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_regimen_estudio_tipo_id_seq'::regclass),
  "regimen_estudio" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ttec_resolucion_carrera
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_resolucion_carrera";
CREATE TABLE "public"."ttec_resolucion_carrera" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_resolucion_carrera_id_seq'::regclass),
  "descripcion" text COLLATE "pg_catalog"."default",
  "numero" text COLLATE "pg_catalog"."default",
  "path" text COLLATE "pg_catalog"."default",
  "fecha" date,
  "resuelve" text COLLATE "pg_catalog"."default",
  "ttec_resolucion_tipo_id" int4,
  "ttec_institucioneducativa_carrera_autorizada_id" int4,
  "fecha_registro" date,
  "fecha_modificacion" date,
  "tiempo_estudio" int2,
  "carga_horaria" int2,
  "operacion" varchar(20) COLLATE "pg_catalog"."default",
  "nivel_tipo_id" int2,
  "ttec_regimen_estudio_tipo_id" int2
)
;

-- ----------------------------
-- Table structure for ttec_resolucion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ttec_resolucion_tipo";
CREATE TABLE "public"."ttec_resolucion_tipo" (
  "id" int4 NOT NULL DEFAULT nextval('ttec_resolucion_tipo_id_seq'::regclass),
  "nombre" text COLLATE "pg_catalog"."default",
  "abreviatura" text COLLATE "pg_catalog"."default"
)
;
