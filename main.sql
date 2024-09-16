/*
 Navicat Premium Data Transfer

 Source Server         : sqliteprueba
 Source Server Type    : SQLite
 Source Server Version : 3030001
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3030001
 File Encoding         : 65001

 Date: 07/09/2022 17:43:47
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
-- Records of SequelizeMeta
-- ----------------------------
INSERT INTO "SequelizeMeta" VALUES ('20190508135722-create-usuario.js');
INSERT INTO "SequelizeMeta" VALUES ('20190672150315-create-turno-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150301-create-infra-acceso-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150302-create-infra-agua-uso-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150303-create-infra-ambiente-categoria-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150305-create-infra-amurallado-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150306-create-infra-area-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150307-create-infra-artefacto-banio-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150308-create-infra-caracteristica-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150309-create-infra-ambiente-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150310-create-infra-documentacion-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150311-create-infra-ambiente-destinado-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150312-create-infra-disponibilidad-servicio-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150313-create-infra-edificacion-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150314-create-infra-entidad-ejecutora-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150315-create-infra-equipamiento-brigada-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150316-create-infra-equipamiento-categoria-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150317-create-infra-espacios-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150318-create-infra-estado-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150319-create-infra-evacuacion-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150320-create-infra-fuente-energia-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150321-create-infra-gestion-construccion-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150322-create-infra-grada-rampa-cuenta-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150323-create-infra-instalacion-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150324-create-infra-material-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150325-create-infra-medio-acceso-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150326-create-infra-medio-eliminacion-basura-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150327-create-infra-medio-eliminacion-exc-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150328-create-infra-medio-suministro-agua-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150329-create-infra-medio-transporte-categoria-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150330-create-infra-mobiliario-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150331-create-infra-periodicidad-eliminacion-basura-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150332-create-infra-predio-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150333-create-infra-pregunta-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150334-create-infra-propiedad-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150335-create-infra-purificador-agua-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150336-create-infra-responsable-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150337-create-infra-riesgo-evento-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150338-create-infra-senialetica-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150339-create-infra-servicio-otro-categoria-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150340-create-infra-tenencia-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150341-create-infra-tiempo-suspendido-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150342-create-infra-topografia-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150343-create-infra-ubicacion-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150344-create-infra-proximo-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150401-create-infra-predio.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150402-create-infra-bloque.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150403-create-infra-acceso-predio-transporte.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150404-create-infra-acceso-edificacion.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150406-create-infra-acceso-medio.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150407-create-infra-acceso-medio-grada-rampa.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150408-create-infra-piso.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150412-create-infra-acceso-predio-transporte.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150413-create-infra-ambiente.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150414-create-infra-condicion.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150415-create-infra-ambiente-condicion.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150416-create-infra-pedagogico.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150417-create-infra-ambiente-especialidad.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150418-create-infra-ambiente-mobiliario.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150419-create-infra-ambiente-predio-institucioneducativa.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150424-create-infra-bateria-artefacto-banio.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150426-create-infra-caracteristica-construccion.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150427-create-infra-caracteristica-edificacion.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150428-create-infra-caracteristica-terreno.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150430-create-infra-caracteristicas-espacio.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150432-create-infra-construccion.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150433-create-infra-acceso-edificacion-senialetica.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150439-create-infra-equipamiento-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150446-create-infra-hecho-delictivo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150447-create-infra-hurto-delictivo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150448-create-infra-predio-institucioneducativa.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150449-create-infra-institucioneducativa-prevencion.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150450-create-infra-institucioneducativa-equipamiento-brigada.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150458-create-infra-medio-transporte-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150459-create-infra-mobiliario-predio-institucioneducativa.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150501-create-infra-no-pedagogico-internado.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150502-create-infra-no-pedagogico-vivienda.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150504-create-infra-pedagogico-recreativo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150508-create-infra-predio-foto.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150511-create-infra-pregunta-ambiente.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150513-create-infra-prevencion-equipamiento.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150518-create-infra-riesgo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150519-create-infra-riesgo-evento.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150521-create-infra-riesgo-proximo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150523-create-infra-servicio-agua.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150525-create-infra-servicio-electrico.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150527-create-infra-servicio-otro-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150528-create-infra-servicio-otro-condicion.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150529-create-infra-servicio-otro-cuenta.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150531-create-infra-servicio-saneamiento.js');
INSERT INTO "SequelizeMeta" VALUES ('20190712150532-create-infra-servicio-saneamiento-medio-eliminacion-exc.js');
INSERT INTO "SequelizeMeta" VALUES ('20190827204839-create-institucioneducativa.js');
INSERT INTO "SequelizeMeta" VALUES ('20190827205311-create-especialidad-tecnico-humanistico-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190827205457-create-gestion-tipo.js');
INSERT INTO "SequelizeMeta" VALUES ('20190827210215-create-mes-tipo.js');

-- ----------------------------
-- Table structure for especialidad_tecnico_humanistico_tipo
-- ----------------------------
DROP TABLE IF EXISTS "especialidad_tecnico_humanistico_tipo";
CREATE TABLE "especialidad_tecnico_humanistico_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "especialidad" VARCHAR(255)
);

-- ----------------------------
-- Records of especialidad_tecnico_humanistico_tipo
-- ----------------------------
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (1, 'Agropecuaria');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (2, 'Agroecología');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (3, 'Arte y Artesanias');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (4, 'Belleza Integral');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (5, 'Cerámica y Alfarería');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (6, 'Construcción Civil');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (7, 'Contabilidad');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (8, 'Diseño Gráfico');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (9, 'Electricidad');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (10, 'Electromecánica');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (11, 'Electrónica');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (12, 'Gastronomía');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (13, 'Instrumento Musical: Viento');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (14, 'Lengua extranjera: Ingles');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (15, 'Mecánica Automotriz');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (16, 'Mecánica Industrial');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (17, 'Mercadotecnia');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (18, 'Carpintería en Madera y Metal');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (19, 'Química Industrial');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (20, 'Salud y Primeros Auxilios');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (21, 'Secretariado');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (22, 'Sistemas Informáticos');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (23, 'Tejido y Telares');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (24, 'Textiles y Confecciones');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (25, 'Textiles, Tejidos y Confecciones');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (26, 'Veterinaria y Zootecnia');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (27, 'Instrumento Musical: Percusión');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (28, 'Instrumento Musical: Cuerda');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (29, 'Danza Moderna');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (30, 'Canto');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (31, 'Teatro');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (32, 'Viticultura y Enología');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (33, 'Robótica');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (34, 'Restauración y conservación patrimonial');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (35, 'Lenguas Originarias');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (36, 'Instalación a gas domiciliario');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (37, 'Administracíon');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (38, 'Transformación  de Alimentos');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (39, 'Turismo y Hoteleria');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (40, 'Comunicación');
INSERT INTO "especialidad_tecnico_humanistico_tipo" VALUES (41, 'Gestión Ambiental');

-- ----------------------------
-- Table structure for gestion_tipo
-- ----------------------------
DROP TABLE IF EXISTS "gestion_tipo";
CREATE TABLE "gestion_tipo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "gestion" VARCHAR(255)
);

-- ----------------------------
-- Records of gestion_tipo
-- ----------------------------
INSERT INTO "gestion_tipo" VALUES (1, 2019);

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
-- Records of infra_acceso_tipo
-- ----------------------------
INSERT INTO "infra_acceso_tipo" VALUES (1, 'Desde el Gobierno Municipal ', 1, '2019-09-25 19:18:13.102 +00:00', '2019-09-25 19:18:13.102 +00:00');
INSERT INTO "infra_acceso_tipo" VALUES (2, 'Desde la Dirección Distrital', 1, '2019-09-25 19:18:13.102 +00:00', '2019-09-25 19:18:13.102 +00:00');

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
-- Records of infra_agua_uso_tipo
-- ----------------------------
INSERT INTO "infra_agua_uso_tipo" VALUES (1, 'Beber', 1, '2019-09-25 19:18:14.802 +00:00', '2019-09-25 19:18:14.802 +00:00');
INSERT INTO "infra_agua_uso_tipo" VALUES (2, 'Preparar alimentos', 1, '2019-09-25 19:18:14.802 +00:00', '2019-09-25 19:18:14.802 +00:00');
INSERT INTO "infra_agua_uso_tipo" VALUES (3, 'Higiene (lavado de manos)', 1, '2019-09-25 19:18:14.802 +00:00', '2019-09-25 19:18:14.802 +00:00');
INSERT INTO "infra_agua_uso_tipo" VALUES (4, 'Uso de artefactos sanitarios', 1, '2019-09-25 19:18:14.802 +00:00', '2019-09-25 19:18:14.802 +00:00');
INSERT INTO "infra_agua_uso_tipo" VALUES (5, 'Riego', 1, '2019-09-25 19:18:14.802 +00:00', '2019-09-25 19:18:14.802 +00:00');

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
-- Records of infra_ambiente_categoria_tipo
-- ----------------------------
INSERT INTO "infra_ambiente_categoria_tipo" VALUES (1, 'Ambiente Pedagogico', '2019-09-25 19:18:12.520 +00:00', '2019-09-25 19:18:12.520 +00:00', 1);
INSERT INTO "infra_ambiente_categoria_tipo" VALUES (2, 'Ambiente Pedagogico Recreativo', '2019-09-25 19:18:12.520 +00:00', '2019-09-25 19:18:12.520 +00:00', 1);
INSERT INTO "infra_ambiente_categoria_tipo" VALUES (3, 'Ambiente no Pedagogico Administrativo', '2019-09-25 19:18:12.520 +00:00', '2019-09-25 19:18:12.520 +00:00', 1);
INSERT INTO "infra_ambiente_categoria_tipo" VALUES (4, 'Ambiente no Pedagogico Vivienda', '2019-09-25 19:18:12.520 +00:00', '2019-09-25 19:18:12.520 +00:00', 1);
INSERT INTO "infra_ambiente_categoria_tipo" VALUES (5, 'Ambiente no Pedagogico Internado', '2019-09-25 19:18:12.520 +00:00', '2019-09-25 19:18:12.520 +00:00', 1);
INSERT INTO "infra_ambiente_categoria_tipo" VALUES (6, 'Ambiente no Pedagogico Alimentación', '2019-09-25 19:18:12.520 +00:00', '2019-09-25 19:18:12.520 +00:00', 1);
INSERT INTO "infra_ambiente_categoria_tipo" VALUES (7, 'Ambiente Bateria de baños', '2019-09-25 19:18:12.520 +00:00', '2019-09-25 19:18:12.520 +00:00', 1);
INSERT INTO "infra_ambiente_categoria_tipo" VALUES (8, 'Ambiente Vestuarios', '2019-09-25 19:18:12.520 +00:00', '2019-09-25 19:18:12.520 +00:00', 1);
INSERT INTO "infra_ambiente_categoria_tipo" VALUES (9, 'Servicios', '2019-09-25 19:18:12.520 +00:00', '2019-09-25 19:18:12.520 +00:00', 1);

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
-- Records of infra_ambiente_destinado_tipo
-- ----------------------------
INSERT INTO "infra_ambiente_destinado_tipo" VALUES (1, 'Recreativo', 1, '2019-09-25 19:18:11.644 +00:00', '2019-09-25 19:18:11.644 +00:00');
INSERT INTO "infra_ambiente_destinado_tipo" VALUES (2, 'Cultural', 1, '2019-09-25 19:18:11.644 +00:00', '2019-09-25 19:18:11.644 +00:00');
INSERT INTO "infra_ambiente_destinado_tipo" VALUES (3, 'Deportivo', 1, '2019-09-25 19:18:11.644 +00:00', '2019-09-25 19:18:11.644 +00:00');

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
-- Records of infra_ambiente_tipo
-- ----------------------------
INSERT INTO "infra_ambiente_tipo" VALUES (1, 'Aula', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 1);
INSERT INTO "infra_ambiente_tipo" VALUES (2, 'Biblioteca', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 1);
INSERT INTO "infra_ambiente_tipo" VALUES (3, 'Laboratorio', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 1);
INSERT INTO "infra_ambiente_tipo" VALUES (4, 'Sala de Computacion', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 1);
INSERT INTO "infra_ambiente_tipo" VALUES (5, 'Sala audiovisual', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 1);
INSERT INTO "infra_ambiente_tipo" VALUES (6, 'Taller', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 1);
INSERT INTO "infra_ambiente_tipo" VALUES (7, 'Sala de Psicomotricidad', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 1);
INSERT INTO "infra_ambiente_tipo" VALUES (8, 'Sala de atencion temprana', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 1);
INSERT INTO "infra_ambiente_tipo" VALUES (9, 'Sala de actividades de la vida diaria', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 1);
INSERT INTO "infra_ambiente_tipo" VALUES (10, 'Sala de baja vision', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 1);
INSERT INTO "infra_ambiente_tipo" VALUES (11, 'Sala de braile', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 1);
INSERT INTO "infra_ambiente_tipo" VALUES (12, 'Patio', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 2);
INSERT INTO "infra_ambiente_tipo" VALUES (13, 'Parque', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 2);
INSERT INTO "infra_ambiente_tipo" VALUES (14, 'Cancha', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 2);
INSERT INTO "infra_ambiente_tipo" VALUES (15, 'Gimnasio', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 2);
INSERT INTO "infra_ambiente_tipo" VALUES (16, 'Coliseo', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 2);
INSERT INTO "infra_ambiente_tipo" VALUES (17, 'Piscina', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 2);
INSERT INTO "infra_ambiente_tipo" VALUES (18, 'Teatro / Salón', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 2);
INSERT INTO "infra_ambiente_tipo" VALUES (19, 'Dirección', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 3);
INSERT INTO "infra_ambiente_tipo" VALUES (20, 'Secretaria', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 3);
INSERT INTO "infra_ambiente_tipo" VALUES (21, 'Sala de reuniones', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 3);
INSERT INTO "infra_ambiente_tipo" VALUES (22, 'Sala de Profesores', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 3);
INSERT INTO "infra_ambiente_tipo" VALUES (23, 'Femenino', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 5);
INSERT INTO "infra_ambiente_tipo" VALUES (24, 'Masculino', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 5);
INSERT INTO "infra_ambiente_tipo" VALUES (25, 'Cafeteria ', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 6);
INSERT INTO "infra_ambiente_tipo" VALUES (26, 'Cocina', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 6);
INSERT INTO "infra_ambiente_tipo" VALUES (27, 'Comedor', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 6);
INSERT INTO "infra_ambiente_tipo" VALUES (28, 'Viviendas', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 4);
INSERT INTO "infra_ambiente_tipo" VALUES (29, 'Para personal mujeres', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 7);
INSERT INTO "infra_ambiente_tipo" VALUES (30, 'Para niñas de inicial', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 8);
INSERT INTO "infra_ambiente_tipo" VALUES (31, 'Para estudiantes varones', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 7);
INSERT INTO "infra_ambiente_tipo" VALUES (32, 'Para estudiantes mujeres', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 7);
INSERT INTO "infra_ambiente_tipo" VALUES (33, 'Para estudiantes discapacitados varones', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 7);
INSERT INTO "infra_ambiente_tipo" VALUES (34, 'Para estudiantes descapacitadas mujeres', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 7);
INSERT INTO "infra_ambiente_tipo" VALUES (35, 'Mixto para estudiantes', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 7);
INSERT INTO "infra_ambiente_tipo" VALUES (36, 'Mixto para estudiantes cons discapacidad', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 7);
INSERT INTO "infra_ambiente_tipo" VALUES (37, 'Para niños de inicial', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 7);
INSERT INTO "infra_ambiente_tipo" VALUES (38, 'Para niñas de inicial', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 7);
INSERT INTO "infra_ambiente_tipo" VALUES (39, 'Para personal varones', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 7);
INSERT INTO "infra_ambiente_tipo" VALUES (40, 'Para estudiantes varones', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 8);
INSERT INTO "infra_ambiente_tipo" VALUES (41, 'Para estudiantes mujeres', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 8);
INSERT INTO "infra_ambiente_tipo" VALUES (42, 'Para estudiantes discapacitados varones', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 8);
INSERT INTO "infra_ambiente_tipo" VALUES (43, 'Para estudiantes discapacitados mujeres ', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 8);
INSERT INTO "infra_ambiente_tipo" VALUES (44, 'Mixto para estudiantes', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 8);
INSERT INTO "infra_ambiente_tipo" VALUES (45, 'Mixto para estudiantes discapacitados', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 8);
INSERT INTO "infra_ambiente_tipo" VALUES (46, 'Para niños de inicial', 1, '2019-09-25 19:18:12.792 +00:00', '2019-09-25 19:18:12.792 +00:00', 8);

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
-- Records of infra_amurallado_tipo
-- ----------------------------
INSERT INTO "infra_amurallado_tipo" VALUES (1, 'Totalmente', 1, '2019-09-25 19:18:15.255 +00:00', '2019-09-25 19:18:15.255 +00:00');
INSERT INTO "infra_amurallado_tipo" VALUES (2, 'Parcialmente', 1, '2019-09-25 19:18:15.255 +00:00', '2019-09-25 19:18:15.255 +00:00');
INSERT INTO "infra_amurallado_tipo" VALUES (3, 'Nada', 1, '2019-09-25 19:18:15.255 +00:00', '2019-09-25 19:18:15.255 +00:00');

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
-- Records of infra_area_tipo
-- ----------------------------
INSERT INTO "infra_area_tipo" VALUES (1, 'Logopedia', 1, '2019-09-25 19:18:14.643 +00:00', '2019-09-25 19:18:14.643 +00:00');
INSERT INTO "infra_area_tipo" VALUES (2, 'Estimulación - Rehabilitación', 1, '2019-09-25 19:18:14.643 +00:00', '2019-09-25 19:18:14.643 +00:00');

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
-- Records of infra_artefacto_banio_tipo
-- ----------------------------
INSERT INTO "infra_artefacto_banio_tipo" VALUES (1, 'Letrinas', 1, '2019-09-25 19:18:15.402 +00:00', '2019-09-25 19:18:15.402 +00:00');
INSERT INTO "infra_artefacto_banio_tipo" VALUES (2, 'Inodoros', 1, '2019-09-25 19:18:15.402 +00:00', '2019-09-25 19:18:15.402 +00:00');
INSERT INTO "infra_artefacto_banio_tipo" VALUES (3, 'Urinarios', 1, '2019-09-25 19:18:15.402 +00:00', '2019-09-25 19:18:15.402 +00:00');
INSERT INTO "infra_artefacto_banio_tipo" VALUES (4, 'Lavamanos', 1, '2019-09-25 19:18:15.402 +00:00', '2019-09-25 19:18:15.402 +00:00');
INSERT INTO "infra_artefacto_banio_tipo" VALUES (5, 'Duchas', 1, '2019-09-25 19:18:15.402 +00:00', '2019-09-25 19:18:15.402 +00:00');

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
-- Records of infra_caracteristica_tipo
-- ----------------------------
INSERT INTO "infra_caracteristica_tipo" VALUES (0, 'Ninguna', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (1, 'Completo', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (2, 'Incompleto', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (3, 'Completo con desgaste', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (4, 'Completo sin desgaste', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (5, 'Incompleto con desgaste', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (6, 'Incompleto sin desgaste', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (7, 'Con vidrios', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (8, 'Sin vidrio', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (9, 'Con seguro abre por dentro', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (10, 'Con seguro abre por fuera', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (11, 'Sin seguro abre por dentro', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (12, 'Sin seguro abre por fuera', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (13, 'Con desgaste', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);
INSERT INTO "infra_caracteristica_tipo" VALUES (14, 'Sin desgaste', '2019-09-25 19:18:15.549 +00:00', '2019-09-25 19:18:15.549 +00:00', 1);

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
-- Records of infra_condicion
-- ----------------------------
INSERT INTO "infra_condicion" VALUES (1, 1, 1, 3);
INSERT INTO "infra_condicion" VALUES (2, 2, 1, 3);
INSERT INTO "infra_condicion" VALUES (3, 3, 1, 3);
INSERT INTO "infra_condicion" VALUES (4, 4, 1, 3);
INSERT INTO "infra_condicion" VALUES (5, 5, 1, 3);
INSERT INTO "infra_condicion" VALUES (6, 1, 2, 3);
INSERT INTO "infra_condicion" VALUES (7, 2, 2, 3);
INSERT INTO "infra_condicion" VALUES (8, 3, 2, 3);
INSERT INTO "infra_condicion" VALUES (9, 4, 2, 3);
INSERT INTO "infra_condicion" VALUES (10, 5, 2, 3);
INSERT INTO "infra_condicion" VALUES (11, 0, 0, 1);
INSERT INTO "infra_condicion" VALUES (12, 0, 0, 2);
INSERT INTO "infra_condicion" VALUES (13, 6, 3, 4);
INSERT INTO "infra_condicion" VALUES (14, 7, 3, 4);
INSERT INTO "infra_condicion" VALUES (15, 8, 3, 4);
INSERT INTO "infra_condicion" VALUES (16, 6, 4, 4);
INSERT INTO "infra_condicion" VALUES (17, 7, 4, 4);
INSERT INTO "infra_condicion" VALUES (18, 8, 4, 4);
INSERT INTO "infra_condicion" VALUES (19, 6, 5, 4);
INSERT INTO "infra_condicion" VALUES (20, 7, 5, 4);
INSERT INTO "infra_condicion" VALUES (21, 8, 5, 4);
INSERT INTO "infra_condicion" VALUES (22, 6, 6, 4);
INSERT INTO "infra_condicion" VALUES (23, 7, 6, 4);
INSERT INTO "infra_condicion" VALUES (24, 8, 6, 4);
INSERT INTO "infra_condicion" VALUES (25, 2, 7, 5);
INSERT INTO "infra_condicion" VALUES (26, 9, 7, 5);
INSERT INTO "infra_condicion" VALUES (27, 10, 7, 5);
INSERT INTO "infra_condicion" VALUES (28, 39, 7, 5);
INSERT INTO "infra_condicion" VALUES (29, 2, 8, 5);
INSERT INTO "infra_condicion" VALUES (30, 9, 8, 5);
INSERT INTO "infra_condicion" VALUES (31, 10, 8, 5);
INSERT INTO "infra_condicion" VALUES (32, 39, 8, 5);
INSERT INTO "infra_condicion" VALUES (33, 12, 0, 7);
INSERT INTO "infra_condicion" VALUES (34, 2, 0, 7);
INSERT INTO "infra_condicion" VALUES (35, 13, 0, 7);
INSERT INTO "infra_condicion" VALUES (36, 14, 0, 7);
INSERT INTO "infra_condicion" VALUES (37, 15, 0, 7);
INSERT INTO "infra_condicion" VALUES (38, 16, 0, 7);
INSERT INTO "infra_condicion" VALUES (39, 17, 0, 7);
INSERT INTO "infra_condicion" VALUES (40, 17, 0, 8);
INSERT INTO "infra_condicion" VALUES (41, 18, 13, 8);
INSERT INTO "infra_condicion" VALUES (42, 20, 13, 8);
INSERT INTO "infra_condicion" VALUES (43, 21, 13, 8);
INSERT INTO "infra_condicion" VALUES (44, 22, 13, 8);
INSERT INTO "infra_condicion" VALUES (45, 23, 13, 8);
INSERT INTO "infra_condicion" VALUES (46, 17, 14, 8);
INSERT INTO "infra_condicion" VALUES (47, 18, 14, 8);
INSERT INTO "infra_condicion" VALUES (48, 20, 14, 8);
INSERT INTO "infra_condicion" VALUES (49, 21, 14, 8);
INSERT INTO "infra_condicion" VALUES (50, 22, 14, 8);
INSERT INTO "infra_condicion" VALUES (51, 23, 14, 8);
INSERT INTO "infra_condicion" VALUES (52, 23, 3, 9);
INSERT INTO "infra_condicion" VALUES (53, 24, 3, 9);
INSERT INTO "infra_condicion" VALUES (54, 25, 3, 9);
INSERT INTO "infra_condicion" VALUES (55, 26, 3, 9);
INSERT INTO "infra_condicion" VALUES (56, 27, 3, 9);
INSERT INTO "infra_condicion" VALUES (57, 28, 3, 9);
INSERT INTO "infra_condicion" VALUES (58, 29, 3, 9);
INSERT INTO "infra_condicion" VALUES (59, 30, 3, 9);
INSERT INTO "infra_condicion" VALUES (60, 31, 3, 9);
INSERT INTO "infra_condicion" VALUES (61, 32, 3, 9);
INSERT INTO "infra_condicion" VALUES (62, 33, 3, 9);
INSERT INTO "infra_condicion" VALUES (63, 34, 3, 9);
INSERT INTO "infra_condicion" VALUES (64, 35, 3, 9);
INSERT INTO "infra_condicion" VALUES (65, 36, 3, 9);
INSERT INTO "infra_condicion" VALUES (66, 37, 3, 9);
INSERT INTO "infra_condicion" VALUES (67, 38, 3, 9);
INSERT INTO "infra_condicion" VALUES (68, 23, 4, 9);
INSERT INTO "infra_condicion" VALUES (69, 24, 4, 9);
INSERT INTO "infra_condicion" VALUES (70, 25, 4, 9);
INSERT INTO "infra_condicion" VALUES (71, 26, 4, 9);
INSERT INTO "infra_condicion" VALUES (72, 27, 4, 9);
INSERT INTO "infra_condicion" VALUES (73, 28, 4, 9);
INSERT INTO "infra_condicion" VALUES (74, 29, 4, 9);
INSERT INTO "infra_condicion" VALUES (75, 30, 4, 9);
INSERT INTO "infra_condicion" VALUES (76, 31, 4, 9);
INSERT INTO "infra_condicion" VALUES (77, 32, 4, 9);
INSERT INTO "infra_condicion" VALUES (78, 33, 4, 9);
INSERT INTO "infra_condicion" VALUES (79, 34, 4, 9);
INSERT INTO "infra_condicion" VALUES (80, 35, 4, 9);
INSERT INTO "infra_condicion" VALUES (81, 36, 4, 9);
INSERT INTO "infra_condicion" VALUES (82, 37, 4, 9);
INSERT INTO "infra_condicion" VALUES (83, 38, 4, 9);
INSERT INTO "infra_condicion" VALUES (84, 23, 4, 9);
INSERT INTO "infra_condicion" VALUES (85, 24, 4, 9);
INSERT INTO "infra_condicion" VALUES (86, 25, 4, 9);
INSERT INTO "infra_condicion" VALUES (87, 26, 4, 9);
INSERT INTO "infra_condicion" VALUES (88, 27, 4, 9);
INSERT INTO "infra_condicion" VALUES (89, 28, 4, 9);
INSERT INTO "infra_condicion" VALUES (90, 29, 4, 9);
INSERT INTO "infra_condicion" VALUES (91, 30, 4, 9);
INSERT INTO "infra_condicion" VALUES (92, 31, 4, 9);
INSERT INTO "infra_condicion" VALUES (93, 32, 4, 9);
INSERT INTO "infra_condicion" VALUES (94, 33, 4, 9);
INSERT INTO "infra_condicion" VALUES (95, 34, 4, 9);
INSERT INTO "infra_condicion" VALUES (96, 35, 4, 9);
INSERT INTO "infra_condicion" VALUES (97, 36, 4, 9);
INSERT INTO "infra_condicion" VALUES (98, 37, 4, 9);
INSERT INTO "infra_condicion" VALUES (99, 38, 4, 9);
INSERT INTO "infra_condicion" VALUES (100, 23, 5, 9);
INSERT INTO "infra_condicion" VALUES (101, 24, 5, 9);
INSERT INTO "infra_condicion" VALUES (102, 25, 5, 9);
INSERT INTO "infra_condicion" VALUES (103, 26, 5, 9);
INSERT INTO "infra_condicion" VALUES (104, 27, 5, 9);
INSERT INTO "infra_condicion" VALUES (105, 28, 5, 9);
INSERT INTO "infra_condicion" VALUES (106, 29, 5, 9);
INSERT INTO "infra_condicion" VALUES (107, 30, 5, 9);
INSERT INTO "infra_condicion" VALUES (108, 31, 5, 9);
INSERT INTO "infra_condicion" VALUES (109, 32, 5, 9);
INSERT INTO "infra_condicion" VALUES (110, 33, 5, 9);
INSERT INTO "infra_condicion" VALUES (111, 34, 5, 9);
INSERT INTO "infra_condicion" VALUES (112, 35, 5, 9);
INSERT INTO "infra_condicion" VALUES (113, 36, 5, 9);
INSERT INTO "infra_condicion" VALUES (114, 37, 5, 9);
INSERT INTO "infra_condicion" VALUES (115, 38, 5, 9);
INSERT INTO "infra_condicion" VALUES (116, 23, 5, 9);
INSERT INTO "infra_condicion" VALUES (117, 24, 5, 9);
INSERT INTO "infra_condicion" VALUES (118, 25, 5, 9);
INSERT INTO "infra_condicion" VALUES (119, 26, 5, 9);
INSERT INTO "infra_condicion" VALUES (120, 27, 5, 9);
INSERT INTO "infra_condicion" VALUES (121, 28, 5, 9);
INSERT INTO "infra_condicion" VALUES (122, 29, 5, 9);
INSERT INTO "infra_condicion" VALUES (123, 30, 5, 9);
INSERT INTO "infra_condicion" VALUES (124, 31, 5, 9);
INSERT INTO "infra_condicion" VALUES (125, 32, 5, 9);
INSERT INTO "infra_condicion" VALUES (126, 33, 5, 9);
INSERT INTO "infra_condicion" VALUES (127, 34, 5, 9);
INSERT INTO "infra_condicion" VALUES (128, 35, 5, 9);
INSERT INTO "infra_condicion" VALUES (129, 36, 5, 9);
INSERT INTO "infra_condicion" VALUES (130, 37, 5, 9);
INSERT INTO "infra_condicion" VALUES (131, 38, 5, 9);
INSERT INTO "infra_condicion" VALUES (132, 23, 6, 9);
INSERT INTO "infra_condicion" VALUES (133, 24, 6, 9);
INSERT INTO "infra_condicion" VALUES (134, 25, 6, 9);
INSERT INTO "infra_condicion" VALUES (135, 26, 6, 9);
INSERT INTO "infra_condicion" VALUES (136, 27, 6, 9);
INSERT INTO "infra_condicion" VALUES (137, 28, 6, 9);
INSERT INTO "infra_condicion" VALUES (138, 29, 6, 9);
INSERT INTO "infra_condicion" VALUES (139, 30, 6, 9);
INSERT INTO "infra_condicion" VALUES (140, 31, 6, 9);
INSERT INTO "infra_condicion" VALUES (141, 32, 6, 9);
INSERT INTO "infra_condicion" VALUES (142, 33, 6, 9);
INSERT INTO "infra_condicion" VALUES (143, 34, 6, 9);
INSERT INTO "infra_condicion" VALUES (144, 35, 6, 9);
INSERT INTO "infra_condicion" VALUES (145, 36, 6, 9);
INSERT INTO "infra_condicion" VALUES (146, 37, 6, 9);
INSERT INTO "infra_condicion" VALUES (147, 38, 6, 9);
INSERT INTO "infra_condicion" VALUES (148, 23, 6, 9);
INSERT INTO "infra_condicion" VALUES (149, 24, 6, 9);
INSERT INTO "infra_condicion" VALUES (150, 25, 6, 9);
INSERT INTO "infra_condicion" VALUES (151, 26, 6, 9);
INSERT INTO "infra_condicion" VALUES (152, 27, 6, 9);
INSERT INTO "infra_condicion" VALUES (153, 28, 6, 9);
INSERT INTO "infra_condicion" VALUES (154, 29, 6, 9);
INSERT INTO "infra_condicion" VALUES (155, 30, 6, 9);
INSERT INTO "infra_condicion" VALUES (156, 31, 6, 9);
INSERT INTO "infra_condicion" VALUES (157, 32, 6, 9);
INSERT INTO "infra_condicion" VALUES (158, 33, 6, 9);
INSERT INTO "infra_condicion" VALUES (159, 34, 6, 9);
INSERT INTO "infra_condicion" VALUES (160, 35, 6, 9);
INSERT INTO "infra_condicion" VALUES (161, 36, 6, 9);
INSERT INTO "infra_condicion" VALUES (162, 37, 6, 9);
INSERT INTO "infra_condicion" VALUES (163, 38, 6, 9);
INSERT INTO "infra_condicion" VALUES (164, 2, 9, 6);
INSERT INTO "infra_condicion" VALUES (165, 11, 9, 6);
INSERT INTO "infra_condicion" VALUES (166, 4, 9, 6);
INSERT INTO "infra_condicion" VALUES (167, 39, 9, 6);
INSERT INTO "infra_condicion" VALUES (168, 2, 10, 6);
INSERT INTO "infra_condicion" VALUES (169, 11, 10, 6);
INSERT INTO "infra_condicion" VALUES (170, 4, 10, 6);
INSERT INTO "infra_condicion" VALUES (171, 39, 10, 6);
INSERT INTO "infra_condicion" VALUES (172, 2, 11, 6);
INSERT INTO "infra_condicion" VALUES (173, 11, 11, 6);
INSERT INTO "infra_condicion" VALUES (174, 4, 11, 6);
INSERT INTO "infra_condicion" VALUES (175, 39, 11, 6);
INSERT INTO "infra_condicion" VALUES (176, 2, 12, 6);
INSERT INTO "infra_condicion" VALUES (177, 11, 12, 6);
INSERT INTO "infra_condicion" VALUES (178, 4, 12, 6);
INSERT INTO "infra_condicion" VALUES (179, 39, 12, 6);
INSERT INTO "infra_condicion" VALUES (180, 0, 1, 22);
INSERT INTO "infra_condicion" VALUES (181, 0, 2, 22);
INSERT INTO "infra_condicion" VALUES (182, 23, 3, 23);
INSERT INTO "infra_condicion" VALUES (183, 24, 3, 23);
INSERT INTO "infra_condicion" VALUES (184, 25, 3, 23);
INSERT INTO "infra_condicion" VALUES (185, 26, 3, 23);
INSERT INTO "infra_condicion" VALUES (186, 27, 3, 23);
INSERT INTO "infra_condicion" VALUES (187, 28, 3, 23);
INSERT INTO "infra_condicion" VALUES (188, 29, 3, 23);
INSERT INTO "infra_condicion" VALUES (189, 30, 3, 23);
INSERT INTO "infra_condicion" VALUES (190, 31, 3, 23);
INSERT INTO "infra_condicion" VALUES (191, 32, 3, 23);
INSERT INTO "infra_condicion" VALUES (192, 33, 3, 23);
INSERT INTO "infra_condicion" VALUES (193, 34, 3, 23);
INSERT INTO "infra_condicion" VALUES (194, 35, 3, 23);
INSERT INTO "infra_condicion" VALUES (195, 36, 3, 23);
INSERT INTO "infra_condicion" VALUES (196, 37, 3, 23);
INSERT INTO "infra_condicion" VALUES (197, 38, 3, 23);
INSERT INTO "infra_condicion" VALUES (198, 2, 3, 23);
INSERT INTO "infra_condicion" VALUES (199, 17, 3, 23);
INSERT INTO "infra_condicion" VALUES (200, 14, 3, 23);
INSERT INTO "infra_condicion" VALUES (201, 23, 4, 23);
INSERT INTO "infra_condicion" VALUES (202, 24, 4, 23);
INSERT INTO "infra_condicion" VALUES (203, 25, 4, 23);
INSERT INTO "infra_condicion" VALUES (204, 26, 4, 23);
INSERT INTO "infra_condicion" VALUES (205, 27, 4, 23);
INSERT INTO "infra_condicion" VALUES (206, 28, 4, 23);
INSERT INTO "infra_condicion" VALUES (207, 29, 4, 23);
INSERT INTO "infra_condicion" VALUES (208, 30, 4, 23);
INSERT INTO "infra_condicion" VALUES (209, 31, 4, 23);
INSERT INTO "infra_condicion" VALUES (210, 32, 4, 23);
INSERT INTO "infra_condicion" VALUES (211, 33, 4, 23);
INSERT INTO "infra_condicion" VALUES (212, 34, 4, 23);
INSERT INTO "infra_condicion" VALUES (213, 35, 4, 23);
INSERT INTO "infra_condicion" VALUES (214, 36, 4, 23);
INSERT INTO "infra_condicion" VALUES (215, 37, 4, 23);
INSERT INTO "infra_condicion" VALUES (216, 38, 4, 23);
INSERT INTO "infra_condicion" VALUES (217, 2, 4, 23);
INSERT INTO "infra_condicion" VALUES (218, 17, 4, 23);
INSERT INTO "infra_condicion" VALUES (219, 14, 4, 23);
INSERT INTO "infra_condicion" VALUES (220, 23, 4, 23);
INSERT INTO "infra_condicion" VALUES (221, 24, 4, 23);
INSERT INTO "infra_condicion" VALUES (222, 25, 4, 23);
INSERT INTO "infra_condicion" VALUES (223, 26, 4, 23);
INSERT INTO "infra_condicion" VALUES (224, 27, 4, 23);
INSERT INTO "infra_condicion" VALUES (225, 28, 4, 23);
INSERT INTO "infra_condicion" VALUES (226, 29, 4, 23);
INSERT INTO "infra_condicion" VALUES (227, 30, 4, 23);
INSERT INTO "infra_condicion" VALUES (228, 31, 4, 23);
INSERT INTO "infra_condicion" VALUES (229, 32, 4, 23);
INSERT INTO "infra_condicion" VALUES (230, 33, 4, 23);
INSERT INTO "infra_condicion" VALUES (231, 34, 4, 23);
INSERT INTO "infra_condicion" VALUES (232, 35, 4, 23);
INSERT INTO "infra_condicion" VALUES (233, 36, 4, 23);
INSERT INTO "infra_condicion" VALUES (234, 37, 4, 23);
INSERT INTO "infra_condicion" VALUES (235, 38, 4, 23);
INSERT INTO "infra_condicion" VALUES (236, 2, 4, 23);
INSERT INTO "infra_condicion" VALUES (237, 17, 4, 23);
INSERT INTO "infra_condicion" VALUES (238, 14, 4, 23);
INSERT INTO "infra_condicion" VALUES (239, 23, 5, 23);
INSERT INTO "infra_condicion" VALUES (240, 24, 5, 23);
INSERT INTO "infra_condicion" VALUES (241, 25, 5, 23);
INSERT INTO "infra_condicion" VALUES (242, 26, 5, 23);
INSERT INTO "infra_condicion" VALUES (243, 27, 5, 23);
INSERT INTO "infra_condicion" VALUES (244, 28, 5, 23);
INSERT INTO "infra_condicion" VALUES (245, 29, 5, 23);
INSERT INTO "infra_condicion" VALUES (246, 30, 5, 23);
INSERT INTO "infra_condicion" VALUES (247, 31, 5, 23);
INSERT INTO "infra_condicion" VALUES (248, 32, 5, 23);
INSERT INTO "infra_condicion" VALUES (249, 33, 5, 23);
INSERT INTO "infra_condicion" VALUES (250, 34, 5, 23);
INSERT INTO "infra_condicion" VALUES (251, 35, 5, 23);
INSERT INTO "infra_condicion" VALUES (252, 36, 5, 23);
INSERT INTO "infra_condicion" VALUES (253, 37, 5, 23);
INSERT INTO "infra_condicion" VALUES (254, 38, 5, 23);
INSERT INTO "infra_condicion" VALUES (255, 2, 5, 23);
INSERT INTO "infra_condicion" VALUES (256, 17, 5, 23);
INSERT INTO "infra_condicion" VALUES (257, 14, 5, 23);
INSERT INTO "infra_condicion" VALUES (258, 23, 6, 23);
INSERT INTO "infra_condicion" VALUES (259, 24, 6, 23);
INSERT INTO "infra_condicion" VALUES (260, 25, 6, 23);
INSERT INTO "infra_condicion" VALUES (261, 26, 6, 23);
INSERT INTO "infra_condicion" VALUES (262, 27, 6, 23);
INSERT INTO "infra_condicion" VALUES (263, 28, 6, 23);
INSERT INTO "infra_condicion" VALUES (264, 29, 6, 23);
INSERT INTO "infra_condicion" VALUES (265, 30, 6, 23);
INSERT INTO "infra_condicion" VALUES (266, 31, 6, 23);
INSERT INTO "infra_condicion" VALUES (267, 32, 6, 23);
INSERT INTO "infra_condicion" VALUES (268, 33, 6, 23);
INSERT INTO "infra_condicion" VALUES (269, 34, 6, 23);
INSERT INTO "infra_condicion" VALUES (270, 35, 6, 23);
INSERT INTO "infra_condicion" VALUES (271, 36, 6, 23);
INSERT INTO "infra_condicion" VALUES (272, 37, 6, 23);
INSERT INTO "infra_condicion" VALUES (273, 38, 6, 23);
INSERT INTO "infra_condicion" VALUES (274, 2, 6, 23);
INSERT INTO "infra_condicion" VALUES (275, 17, 6, 23);
INSERT INTO "infra_condicion" VALUES (276, 14, 6, 23);
INSERT INTO "infra_condicion" VALUES (277, 2, 3, 9);
INSERT INTO "infra_condicion" VALUES (278, 17, 3, 9);
INSERT INTO "infra_condicion" VALUES (279, 14, 3, 9);
INSERT INTO "infra_condicion" VALUES (280, 2, 4, 9);
INSERT INTO "infra_condicion" VALUES (281, 17, 4, 9);
INSERT INTO "infra_condicion" VALUES (282, 14, 4, 9);
INSERT INTO "infra_condicion" VALUES (283, 2, 5, 9);
INSERT INTO "infra_condicion" VALUES (284, 17, 5, 9);
INSERT INTO "infra_condicion" VALUES (285, 14, 5, 9);
INSERT INTO "infra_condicion" VALUES (286, 2, 6, 9);
INSERT INTO "infra_condicion" VALUES (287, 17, 6, 9);
INSERT INTO "infra_condicion" VALUES (288, 14, 6, 9);
INSERT INTO "infra_condicion" VALUES (289, 0, 0, 10);
INSERT INTO "infra_condicion" VALUES (290, 0, 0, 11);
INSERT INTO "infra_condicion" VALUES (291, 0, 0, 12);
INSERT INTO "infra_condicion" VALUES (292, 0, 0, 13);
INSERT INTO "infra_condicion" VALUES (293, 0, 0, 14);
INSERT INTO "infra_condicion" VALUES (294, 0, 0, 15);
INSERT INTO "infra_condicion" VALUES (295, 0, 0, 16);
INSERT INTO "infra_condicion" VALUES (296, 0, 0, 17);
INSERT INTO "infra_condicion" VALUES (297, 0, 0, 18);
INSERT INTO "infra_condicion" VALUES (298, 0, 0, 19);
INSERT INTO "infra_condicion" VALUES (299, 0, 0, 20);
INSERT INTO "infra_condicion" VALUES (300, 0, 0, 21);

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
-- Records of infra_disponibilidad_servicio_tipo
-- ----------------------------
INSERT INTO "infra_disponibilidad_servicio_tipo" VALUES (1, 'Permanente', 1, '2019-09-25 19:18:14.509 +00:00', '2019-09-25 19:18:14.509 +00:00');
INSERT INTO "infra_disponibilidad_servicio_tipo" VALUES (2, 'No Permanente', 1, '2019-09-25 19:18:14.509 +00:00', '2019-09-25 19:18:14.509 +00:00');

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
-- Records of infra_documentacion_tipo
-- ----------------------------
INSERT INTO "infra_documentacion_tipo" VALUES (1, 'Ley', 1, '2019-09-25 19:18:15.675 +00:00', '2019-09-25 19:18:15.675 +00:00');
INSERT INTO "infra_documentacion_tipo" VALUES (2, 'Ley Municipal', 1, '2019-09-25 19:18:15.675 +00:00', '2019-09-25 19:18:15.675 +00:00');
INSERT INTO "infra_documentacion_tipo" VALUES (3, 'Decreto Supremo', 1, '2019-09-25 19:18:15.675 +00:00', '2019-09-25 19:18:15.675 +00:00');
INSERT INTO "infra_documentacion_tipo" VALUES (4, 'Folio real', 1, '2019-09-25 19:18:15.675 +00:00', '2019-09-25 19:18:15.675 +00:00');
INSERT INTO "infra_documentacion_tipo" VALUES (5, 'Tarjeta de propiedad', 1, '2019-09-25 19:18:15.675 +00:00', '2019-09-25 19:18:15.675 +00:00');
INSERT INTO "infra_documentacion_tipo" VALUES (6, 'Folio y tarjeta de propiedad', 1, '2019-09-25 19:18:15.675 +00:00', '2019-09-25 19:18:15.675 +00:00');
INSERT INTO "infra_documentacion_tipo" VALUES (7, 'Testimonio', 1, '2019-09-25 19:18:15.675 +00:00', '2019-09-25 19:18:15.675 +00:00');
INSERT INTO "infra_documentacion_tipo" VALUES (8, 'Resolución', 1, '2019-09-25 19:18:15.675 +00:00', '2019-09-25 19:18:15.675 +00:00');
INSERT INTO "infra_documentacion_tipo" VALUES (9, 'Contrato de arriendamiento', 1, '2019-09-25 19:18:15.675 +00:00', '2019-09-25 19:18:15.675 +00:00');
INSERT INTO "infra_documentacion_tipo" VALUES (10, 'No tiene', 1, '2019-09-25 19:18:15.675 +00:00', '2019-09-25 19:18:15.675 +00:00');
INSERT INTO "infra_documentacion_tipo" VALUES (11, 'Otro', 1, '2019-09-25 19:18:15.675 +00:00', '2019-09-25 19:18:15.675 +00:00');

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
-- Records of infra_edificacion_tipo
-- ----------------------------
INSERT INTO "infra_edificacion_tipo" VALUES (1, 'Unidad Educativa Regular', 1, '2019-09-25 19:18:15.825 +00:00', '2019-09-25 19:18:15.825 +00:00');
INSERT INTO "infra_edificacion_tipo" VALUES (2, 'Centro de Educación Alternativa', 1, '2019-09-25 19:18:15.825 +00:00', '2019-09-25 19:18:15.825 +00:00');
INSERT INTO "infra_edificacion_tipo" VALUES (3, 'Centro de Educacion Especial', 1, '2019-09-25 19:18:15.825 +00:00', '2019-09-25 19:18:15.825 +00:00');
INSERT INTO "infra_edificacion_tipo" VALUES (4, 'Institutos tecnicos de Educacion Superior', 1, '2019-09-25 19:18:15.825 +00:00', '2019-09-25 19:18:15.825 +00:00');
INSERT INTO "infra_edificacion_tipo" VALUES (5, 'Escuela Superios de Formacion de Maestros', 1, '2019-09-25 19:18:15.825 +00:00', '2019-09-25 19:18:15.825 +00:00');
INSERT INTO "infra_edificacion_tipo" VALUES (6, 'Universidad', 1, '2019-09-25 19:18:15.825 +00:00', '2019-09-25 19:18:15.825 +00:00');
INSERT INTO "infra_edificacion_tipo" VALUES (7, 'No fue construido para ser Edificio Educativo', 1, '2019-09-25 19:18:15.825 +00:00', '2019-09-25 19:18:15.825 +00:00');

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
-- Records of infra_entidad_ejecutora_tipo
-- ----------------------------
INSERT INTO "infra_entidad_ejecutora_tipo" VALUES (1, 'Gobierno Municipal', 1, '2019-09-25 19:18:16.001 +00:00', '2019-09-25 19:18:16.001 +00:00');
INSERT INTO "infra_entidad_ejecutora_tipo" VALUES (2, 'Gobierno Departamental', 1, '2019-09-25 19:18:16.001 +00:00', '2019-09-25 19:18:16.001 +00:00');
INSERT INTO "infra_entidad_ejecutora_tipo" VALUES (3, 'Ministerio de Educación', 1, '2019-09-25 19:18:16.001 +00:00', '2019-09-25 19:18:16.001 +00:00');
INSERT INTO "infra_entidad_ejecutora_tipo" VALUES (4, 'UPRE - Evo Cumple', 1, '2019-09-25 19:18:16.001 +00:00', '2019-09-25 19:18:16.001 +00:00');
INSERT INTO "infra_entidad_ejecutora_tipo" VALUES (5, 'ONGs', 1, '2019-09-25 19:18:16.001 +00:00', '2019-09-25 19:18:16.001 +00:00');
INSERT INTO "infra_entidad_ejecutora_tipo" VALUES (6, 'No se conoce', 1, '2019-09-25 19:18:16.001 +00:00', '2019-09-25 19:18:16.001 +00:00');
INSERT INTO "infra_entidad_ejecutora_tipo" VALUES (7, 'Otro', 1, '2019-09-25 19:18:16.001 +00:00', '2019-09-25 19:18:16.001 +00:00');

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
-- Records of infra_equipamiento_brigada_tipo
-- ----------------------------
INSERT INTO "infra_equipamiento_brigada_tipo" VALUES (1, 'Seguridad', 1, '2019-09-25 19:18:16.143 +00:00', '2019-09-25 19:18:16.143 +00:00');
INSERT INTO "infra_equipamiento_brigada_tipo" VALUES (2, 'Primeros Auxilos', 1, '2019-09-25 19:18:16.143 +00:00', '2019-09-25 19:18:16.143 +00:00');
INSERT INTO "infra_equipamiento_brigada_tipo" VALUES (3, 'Evacuación', 1, '2019-09-25 19:18:16.143 +00:00', '2019-09-25 19:18:16.143 +00:00');
INSERT INTO "infra_equipamiento_brigada_tipo" VALUES (4, 'Protección', 1, '2019-09-25 19:18:16.143 +00:00', '2019-09-25 19:18:16.143 +00:00');
INSERT INTO "infra_equipamiento_brigada_tipo" VALUES (5, 'Otros', 1, '2019-09-25 19:18:16.143 +00:00', '2019-09-25 19:18:16.143 +00:00');

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
-- Records of infra_equipamiento_categoria_tipo
-- ----------------------------
INSERT INTO "infra_equipamiento_categoria_tipo" VALUES (1, 'Equipos de Primeros Auxilios', 1, '2019-09-25 19:18:12.965 +00:00', '2019-09-25 19:18:12.965 +00:00');
INSERT INTO "infra_equipamiento_categoria_tipo" VALUES (2, 'Medios de Comunicación', 1, '2019-09-25 19:18:12.965 +00:00', '2019-09-25 19:18:12.965 +00:00');
INSERT INTO "infra_equipamiento_categoria_tipo" VALUES (3, 'Equipos de Seguridad', 1, '2019-09-25 19:18:12.965 +00:00', '2019-09-25 19:18:12.965 +00:00');
INSERT INTO "infra_equipamiento_categoria_tipo" VALUES (4, 'Simulacro', 1, '2019-09-25 19:18:12.965 +00:00', '2019-09-25 19:18:12.965 +00:00');
INSERT INTO "infra_equipamiento_categoria_tipo" VALUES (5, 'Instrumentos de Seguridad', 1, '2019-09-25 19:18:12.965 +00:00', '2019-09-25 19:18:12.965 +00:00');

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
-- Records of infra_equipamiento_tipo
-- ----------------------------
INSERT INTO "infra_equipamiento_tipo" VALUES (1, 'Ferula', 1, 1, '2019-09-25 19:18:14.957 +00:00', '2019-09-25 19:18:14.957 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (2, 'Chaleco', 1, 1, '2019-09-25 19:18:14.957 +00:00', '2019-09-25 19:18:14.957 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (3, 'Camilla', 1, 1, '2019-09-25 19:18:14.957 +00:00', '2019-09-25 19:18:14.957 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (4, 'Botiquin primeros Auxilios', 1, 1, '2019-09-25 19:18:14.957 +00:00', '2019-09-25 19:18:14.957 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (5, 'Radio', 2, 1, '2019-09-25 19:18:14.957 +00:00', '2019-09-25 19:18:14.957 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (6, 'Celular', 2, 1, '2019-09-25 19:18:14.957 +00:00', '2019-09-25 19:18:14.957 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (7, 'Telefono', 2, 1, '2019-09-25 19:18:14.957 +00:00', '2019-09-25 19:18:14.957 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (8, 'Internet', 2, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (9, 'Megafono', 3, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (10, 'Camara de Seguridad', 3, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (11, 'Avisado', 4, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (12, 'No avisado', 4, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (13, 'Con pre aviso', 4, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (14, 'Sin pre aviso', 4, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (15, 'Gabinete', 4, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (16, 'Operativo', 4, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (17, 'Parcial', 4, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (18, 'Completo', 4, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (19, 'Plan de Seguridad Escolar', 5, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');
INSERT INTO "infra_equipamiento_tipo" VALUES (20, 'Mapa de Riesgos', 5, 1, '2019-09-25 19:18:14.958 +00:00', '2019-09-25 19:18:14.958 +00:00');

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
-- Records of infra_espacios_tipo
-- ----------------------------
INSERT INTO "infra_espacios_tipo" VALUES (1, 'Recreativo', 1, '2019-09-25 19:18:16.302 +00:00', '2019-09-25 19:18:16.302 +00:00');
INSERT INTO "infra_espacios_tipo" VALUES (2, 'Deportivo', 1, '2019-09-25 19:18:16.302 +00:00', '2019-09-25 19:18:16.302 +00:00');
INSERT INTO "infra_espacios_tipo" VALUES (3, 'No construido', 1, '2019-09-25 19:18:16.302 +00:00', '2019-09-25 19:18:16.302 +00:00');
INSERT INTO "infra_espacios_tipo" VALUES (4, 'Granja escolar', 1, '2019-09-25 19:18:16.302 +00:00', '2019-09-25 19:18:16.302 +00:00');
INSERT INTO "infra_espacios_tipo" VALUES (5, 'Huerto escolar', 1, '2019-09-25 19:18:16.302 +00:00', '2019-09-25 19:18:16.302 +00:00');
INSERT INTO "infra_espacios_tipo" VALUES (6, 'Invernadero', 1, '2019-09-25 19:18:16.302 +00:00', '2019-09-25 19:18:16.302 +00:00');

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
-- Records of infra_estado_tipo
-- ----------------------------
INSERT INTO "infra_estado_tipo" VALUES (1, 'Nuevo', 1, '2019-09-25 19:18:16.436 +00:00', '2019-09-25 19:18:16.436 +00:00');
INSERT INTO "infra_estado_tipo" VALUES (2, 'Con desgaste', 1, '2019-09-25 19:18:16.436 +00:00', '2019-09-25 19:18:16.436 +00:00');
INSERT INTO "infra_estado_tipo" VALUES (3, 'En desuso', 1, '2019-09-25 19:18:16.436 +00:00', '2019-09-25 19:18:16.436 +00:00');
INSERT INTO "infra_estado_tipo" VALUES (4, 'Bueno', 1, '2019-09-25 19:18:16.436 +00:00', '2019-09-25 19:18:16.436 +00:00');
INSERT INTO "infra_estado_tipo" VALUES (5, 'Regular', 1, '2019-09-25 19:18:16.436 +00:00', '2019-09-25 19:18:16.436 +00:00');
INSERT INTO "infra_estado_tipo" VALUES (6, 'Malo', 1, '2019-09-25 19:18:16.436 +00:00', '2019-09-25 19:18:16.436 +00:00');

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
-- Records of infra_evacuacion_tipo
-- ----------------------------
INSERT INTO "infra_evacuacion_tipo" VALUES (1, 'Al ingreso del edificio educativo', 1, '2019-09-25 19:18:16.570 +00:00', '2019-09-25 19:18:16.570 +00:00');
INSERT INTO "infra_evacuacion_tipo" VALUES (2, 'En todo el edificio educativo', 1, '2019-09-25 19:18:16.570 +00:00', '2019-09-25 19:18:16.570 +00:00');
INSERT INTO "infra_evacuacion_tipo" VALUES (3, 'En ambientes definidos', 1, '2019-09-25 19:18:16.570 +00:00', '2019-09-25 19:18:16.570 +00:00');

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
-- Records of infra_fuente_energia_tipo
-- ----------------------------
INSERT INTO "infra_fuente_energia_tipo" VALUES (1, 'Red pública', 1, '2019-09-25 19:18:16.704 +00:00', '2019-09-25 19:18:16.704 +00:00');
INSERT INTO "infra_fuente_energia_tipo" VALUES (2, 'Panel Solar', 1, '2019-09-25 19:18:16.704 +00:00', '2019-09-25 19:18:16.704 +00:00');
INSERT INTO "infra_fuente_energia_tipo" VALUES (3, 'Generador', 1, '2019-09-25 19:18:16.704 +00:00', '2019-09-25 19:18:16.704 +00:00');
INSERT INTO "infra_fuente_energia_tipo" VALUES (4, 'Eólitica', 1, '2019-09-25 19:18:16.704 +00:00', '2019-09-25 19:18:16.704 +00:00');
INSERT INTO "infra_fuente_energia_tipo" VALUES (5, 'Hidráulica', 1, '2019-09-25 19:18:16.704 +00:00', '2019-09-25 19:18:16.704 +00:00');

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
-- Records of infra_gestion_construccion_tipo
-- ----------------------------
INSERT INTO "infra_gestion_construccion_tipo" VALUES (1, 'Año de construcción', 1, '2019-09-25 19:18:16.846 +00:00', '2019-09-25 19:18:16.846 +00:00');
INSERT INTO "infra_gestion_construccion_tipo" VALUES (2, 'Año de ultima refacción', 1, '2019-09-25 19:18:16.846 +00:00', '2019-09-25 19:18:16.846 +00:00');
INSERT INTO "infra_gestion_construccion_tipo" VALUES (3, 'Año de última ampliación', 1, '2019-09-25 19:18:16.846 +00:00', '2019-09-25 19:18:16.846 +00:00');

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
-- Records of infra_grada_rampa_cuenta_tipo
-- ----------------------------
INSERT INTO "infra_grada_rampa_cuenta_tipo" VALUES (1, 'Pasamanos', 1, '2019-09-25 19:18:13.236 +00:00', '2019-09-25 19:18:13.236 +00:00');
INSERT INTO "infra_grada_rampa_cuenta_tipo" VALUES (2, 'Guias de prevención', 1, '2019-09-25 19:18:13.236 +00:00', '2019-09-25 19:18:13.236 +00:00');
INSERT INTO "infra_grada_rampa_cuenta_tipo" VALUES (3, 'Antideslizantes', 1, '2019-09-25 19:18:13.236 +00:00', '2019-09-25 19:18:13.236 +00:00');

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
-- Records of infra_instalacion_tipo
-- ----------------------------
INSERT INTO "infra_instalacion_tipo" VALUES (1, 'Monofásico', 1, '2019-09-25 19:18:16.991 +00:00', '2019-09-25 19:18:16.991 +00:00');
INSERT INTO "infra_instalacion_tipo" VALUES (2, 'Trifásico', 1, '2019-09-25 19:18:16.991 +00:00', '2019-09-25 19:18:16.991 +00:00');

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
-- Records of infra_material_tipo
-- ----------------------------
INSERT INTO "infra_material_tipo" VALUES (0, 'Ninguna', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (1, 'Teja', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (2, 'Madera', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (3, 'Chapa Galvanizada', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (4, 'Vidrio', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (5, 'Policarbonato', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (6, 'Yeso y Madera', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (7, 'Placas de Yeso', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (8, 'PVC', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (9, 'Aluminio', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (10, 'Fierro', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (11, 'Metal', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (12, 'Adobe', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (13, 'Hormigon Armado', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (14, 'Piedra', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (15, 'Ladrillo Gambote', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (16, 'Ladrillo Hueco', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (17, 'Bloque de Cemento', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (18, 'Revoque de Cemento', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (19, 'Revoque de Cemento y Pintura', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (20, 'Revoque de Yeso', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (21, 'Revoque de Yeso y Pintura', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (22, 'Cerámica', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (23, 'Marmol', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (24, 'Ceramica Esmaltada', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (25, 'Ceramica Roja', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (26, 'Alfombra', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (27, 'Entablonado', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (28, 'Parquet', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (29, 'Machimbre', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (30, 'Vinilo', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (31, 'Mosaico', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (32, 'Cemento Ocre', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (33, 'Empedrado', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (34, 'Ladrillo', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (35, 'Tierra', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (36, 'Tabique', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (37, 'Cesped Sintetico', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (38, 'Cesped/Pasto', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);
INSERT INTO "infra_material_tipo" VALUES (39, 'Otro', '2019-09-25 19:18:17.266 +00:00', '2019-09-25 19:18:17.266 +00:00', 1);

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
-- Records of infra_medio_acceso_tipo
-- ----------------------------
INSERT INTO "infra_medio_acceso_tipo" VALUES (1, 'Grada', 1, '2019-09-25 19:18:11.794 +00:00', '2019-09-25 19:18:11.794 +00:00');
INSERT INTO "infra_medio_acceso_tipo" VALUES (2, 'Rampa', 1, '2019-09-25 19:18:11.794 +00:00', '2019-09-25 19:18:11.794 +00:00');
INSERT INTO "infra_medio_acceso_tipo" VALUES (3, 'Señaletica', 1, '2019-09-25 19:18:11.794 +00:00', '2019-09-25 19:18:11.794 +00:00');

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
-- Records of infra_medio_eliminacion_basura_tipo
-- ----------------------------
INSERT INTO "infra_medio_eliminacion_basura_tipo" VALUES (1, 'Recolección pública', 1, '2019-09-25 19:18:17.567 +00:00', '2019-09-25 19:18:17.567 +00:00');
INSERT INTO "infra_medio_eliminacion_basura_tipo" VALUES (2, 'Incineración', 1, '2019-09-25 19:18:17.567 +00:00', '2019-09-25 19:18:17.567 +00:00');
INSERT INTO "infra_medio_eliminacion_basura_tipo" VALUES (3, 'Enterramiento', 1, '2019-09-25 19:18:17.567 +00:00', '2019-09-25 19:18:17.567 +00:00');
INSERT INTO "infra_medio_eliminacion_basura_tipo" VALUES (4, 'Cielo abierto y similares', 1, '2019-09-25 19:18:17.567 +00:00', '2019-09-25 19:18:17.567 +00:00');
INSERT INTO "infra_medio_eliminacion_basura_tipo" VALUES (5, 'Reciclaje', 1, '2019-09-25 19:18:17.567 +00:00', '2019-09-25 19:18:17.567 +00:00');

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
-- Records of infra_medio_eliminacion_exc_tipo
-- ----------------------------
INSERT INTO "infra_medio_eliminacion_exc_tipo" VALUES (1, 'Red de alcantarillado', 1, '2019-09-25 19:18:17.709 +00:00', '2019-09-25 19:18:17.709 +00:00');
INSERT INTO "infra_medio_eliminacion_exc_tipo" VALUES (2, 'Cámara séptica', 1, '2019-09-25 19:18:17.709 +00:00', '2019-09-25 19:18:17.709 +00:00');
INSERT INTO "infra_medio_eliminacion_exc_tipo" VALUES (3, 'Pozo de absorción', 1, '2019-09-25 19:18:17.709 +00:00', '2019-09-25 19:18:17.709 +00:00');
INSERT INTO "infra_medio_eliminacion_exc_tipo" VALUES (4, 'A cielo abierto', 1, '2019-09-25 19:18:17.709 +00:00', '2019-09-25 19:18:17.709 +00:00');
INSERT INTO "infra_medio_eliminacion_exc_tipo" VALUES (5, 'Otro', 1, '2019-09-25 19:18:17.709 +00:00', '2019-09-25 19:18:17.709 +00:00');

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
-- Records of infra_medio_suministro_agua_tipo
-- ----------------------------
INSERT INTO "infra_medio_suministro_agua_tipo" VALUES (1, 'Red Pública dentro la edificación', 1, '2019-09-25 19:18:17.843 +00:00', '2019-09-25 19:18:17.843 +00:00');
INSERT INTO "infra_medio_suministro_agua_tipo" VALUES (2, 'Red Pública fuera de la edificación', 1, '2019-09-25 19:18:17.843 +00:00', '2019-09-25 19:18:17.843 +00:00');
INSERT INTO "infra_medio_suministro_agua_tipo" VALUES (3, 'Pozo bomba', 1, '2019-09-25 19:18:17.843 +00:00', '2019-09-25 19:18:17.843 +00:00');
INSERT INTO "infra_medio_suministro_agua_tipo" VALUES (4, 'Pozo sin bomba', 1, '2019-09-25 19:18:17.843 +00:00', '2019-09-25 19:18:17.843 +00:00');
INSERT INTO "infra_medio_suministro_agua_tipo" VALUES (5, 'Cisterna', 1, '2019-09-25 19:18:17.843 +00:00', '2019-09-25 19:18:17.843 +00:00');
INSERT INTO "infra_medio_suministro_agua_tipo" VALUES (6, 'Rio/acequia/vertiente no protegida', 1, '2019-09-25 19:18:17.843 +00:00', '2019-09-25 19:18:17.843 +00:00');
INSERT INTO "infra_medio_suministro_agua_tipo" VALUES (7, 'Recoleccion de agua de lluvia', 1, '2019-09-25 19:18:17.843 +00:00', '2019-09-25 19:18:17.843 +00:00');

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
-- Records of infra_medio_transporte_categoria_tipo
-- ----------------------------
INSERT INTO "infra_medio_transporte_categoria_tipo" VALUES (1, 'Terrestre', 1, '2019-09-25 19:18:14.082 +00:00', '2019-09-25 19:18:14.082 +00:00');
INSERT INTO "infra_medio_transporte_categoria_tipo" VALUES (2, 'Fluvial', 1, '2019-09-25 19:18:14.082 +00:00', '2019-09-25 19:18:14.082 +00:00');
INSERT INTO "infra_medio_transporte_categoria_tipo" VALUES (3, 'Aéreo', 1, '2019-09-25 19:18:14.082 +00:00', '2019-09-25 19:18:14.082 +00:00');

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
-- Records of infra_medio_transporte_tipo
-- ----------------------------
INSERT INTO "infra_medio_transporte_tipo" VALUES (1, 'Caminata', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 1);
INSERT INTO "infra_medio_transporte_tipo" VALUES (2, 'Automovil', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 1);
INSERT INTO "infra_medio_transporte_tipo" VALUES (3, 'Barcaza', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 2);
INSERT INTO "infra_medio_transporte_tipo" VALUES (4, 'Avioneta', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 3);
INSERT INTO "infra_medio_transporte_tipo" VALUES (5, 'Avión', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 3);
INSERT INTO "infra_medio_transporte_tipo" VALUES (6, 'Transporte Publico', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 1);
INSERT INTO "infra_medio_transporte_tipo" VALUES (7, 'Motocicleta', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 1);
INSERT INTO "infra_medio_transporte_tipo" VALUES (8, 'Caballo', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 1);
INSERT INTO "infra_medio_transporte_tipo" VALUES (9, 'Carreta ', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 1);
INSERT INTO "infra_medio_transporte_tipo" VALUES (10, 'Canoa', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 2);
INSERT INTO "infra_medio_transporte_tipo" VALUES (11, 'Bote a remo', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 2);
INSERT INTO "infra_medio_transporte_tipo" VALUES (12, 'Peque Peque', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 2);
INSERT INTO "infra_medio_transporte_tipo" VALUES (13, 'Ponton', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 2);
INSERT INTO "infra_medio_transporte_tipo" VALUES (14, 'Bicicleta', 1, '2019-09-25 19:18:14.233 +00:00', '2019-09-25 19:18:14.233 +00:00', 1);

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
-- Records of infra_mobiliario_tipo
-- ----------------------------
INSERT INTO "infra_mobiliario_tipo" VALUES (1, 'Mob. antropometricamente adecuado a personas con discapacidad', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (2, 'Pupitre personal', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (3, 'Pupitre bipersonal', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (4, 'Silla', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (5, 'Mesa', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (6, 'Pizarra', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (7, 'Escritorio para profesor', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (8, 'Estante', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (9, 'Taburete', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (10, 'Mueble para computadora', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (11, 'Silla para ed. inicial', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (12, 'Mesa para ed. especial', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (13, 'Escritorio para control', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (14, 'Mueble para TV', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (15, 'Caballete', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');
INSERT INTO "infra_mobiliario_tipo" VALUES (16, 'Casillero', 1, '2019-09-25 19:18:18.128 +00:00', '2019-09-25 19:18:18.128 +00:00');

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
-- Records of infra_periodicidad_eliminacion_basura_tipo
-- ----------------------------
INSERT INTO "infra_periodicidad_eliminacion_basura_tipo" VALUES (1, 'Diaria', 1, '2019-09-25 19:18:13.378 +00:00', '2019-09-25 19:18:13.378 +00:00');
INSERT INTO "infra_periodicidad_eliminacion_basura_tipo" VALUES (2, 'Una vez por semana', 1, '2019-09-25 19:18:13.378 +00:00', '2019-09-25 19:18:13.378 +00:00');
INSERT INTO "infra_periodicidad_eliminacion_basura_tipo" VALUES (3, 'Dos o tres veces por semana', 1, '2019-09-25 19:18:13.378 +00:00', '2019-09-25 19:18:13.378 +00:00');
INSERT INTO "infra_periodicidad_eliminacion_basura_tipo" VALUES (4, 'Solo cuando es necesario', 1, '2019-09-25 19:18:13.378 +00:00', '2019-09-25 19:18:13.378 +00:00');

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
-- Records of infra_predio_tipo
-- ----------------------------
INSERT INTO "infra_predio_tipo" VALUES (1, 'Principal', 1, '2019-09-25 19:18:18.271 +00:00', '2019-09-25 19:18:18.271 +00:00');
INSERT INTO "infra_predio_tipo" VALUES (2, 'Secundario', 1, '2019-09-25 19:18:18.271 +00:00', '2019-09-25 19:18:18.271 +00:00');

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
-- Records of infra_pregunta_ambiente
-- ----------------------------
INSERT INTO "infra_pregunta_ambiente" VALUES (1, 1, 1);
INSERT INTO "infra_pregunta_ambiente" VALUES (2, 2, 1);
INSERT INTO "infra_pregunta_ambiente" VALUES (3, 3, 1);
INSERT INTO "infra_pregunta_ambiente" VALUES (4, 4, 1);
INSERT INTO "infra_pregunta_ambiente" VALUES (5, 5, 1);
INSERT INTO "infra_pregunta_ambiente" VALUES (6, 6, 1);
INSERT INTO "infra_pregunta_ambiente" VALUES (7, 7, 1);
INSERT INTO "infra_pregunta_ambiente" VALUES (8, 8, 1);
INSERT INTO "infra_pregunta_ambiente" VALUES (9, 9, 1);
INSERT INTO "infra_pregunta_ambiente" VALUES (10, 3, 3);
INSERT INTO "infra_pregunta_ambiente" VALUES (11, 4, 3);
INSERT INTO "infra_pregunta_ambiente" VALUES (12, 5, 3);
INSERT INTO "infra_pregunta_ambiente" VALUES (13, 6, 3);
INSERT INTO "infra_pregunta_ambiente" VALUES (14, 7, 3);
INSERT INTO "infra_pregunta_ambiente" VALUES (15, 8, 3);
INSERT INTO "infra_pregunta_ambiente" VALUES (16, 9, 3);
INSERT INTO "infra_pregunta_ambiente" VALUES (17, 3, 4);
INSERT INTO "infra_pregunta_ambiente" VALUES (18, 4, 4);
INSERT INTO "infra_pregunta_ambiente" VALUES (19, 5, 4);
INSERT INTO "infra_pregunta_ambiente" VALUES (20, 6, 4);
INSERT INTO "infra_pregunta_ambiente" VALUES (21, 7, 4);
INSERT INTO "infra_pregunta_ambiente" VALUES (22, 8, 4);
INSERT INTO "infra_pregunta_ambiente" VALUES (23, 9, 4);
INSERT INTO "infra_pregunta_ambiente" VALUES (24, 3, 5);
INSERT INTO "infra_pregunta_ambiente" VALUES (25, 4, 5);
INSERT INTO "infra_pregunta_ambiente" VALUES (26, 5, 5);
INSERT INTO "infra_pregunta_ambiente" VALUES (27, 6, 5);
INSERT INTO "infra_pregunta_ambiente" VALUES (28, 7, 5);
INSERT INTO "infra_pregunta_ambiente" VALUES (29, 8, 5);
INSERT INTO "infra_pregunta_ambiente" VALUES (30, 23, 5);
INSERT INTO "infra_pregunta_ambiente" VALUES (31, 3, 6);
INSERT INTO "infra_pregunta_ambiente" VALUES (32, 4, 6);
INSERT INTO "infra_pregunta_ambiente" VALUES (33, 5, 6);
INSERT INTO "infra_pregunta_ambiente" VALUES (34, 6, 6);
INSERT INTO "infra_pregunta_ambiente" VALUES (35, 7, 6);
INSERT INTO "infra_pregunta_ambiente" VALUES (36, 8, 6);
INSERT INTO "infra_pregunta_ambiente" VALUES (37, 9, 6);
INSERT INTO "infra_pregunta_ambiente" VALUES (38, 1, 2);
INSERT INTO "infra_pregunta_ambiente" VALUES (39, 2, 2);
INSERT INTO "infra_pregunta_ambiente" VALUES (40, 3, 2);
INSERT INTO "infra_pregunta_ambiente" VALUES (41, 4, 2);
INSERT INTO "infra_pregunta_ambiente" VALUES (42, 5, 2);
INSERT INTO "infra_pregunta_ambiente" VALUES (43, 6, 2);
INSERT INTO "infra_pregunta_ambiente" VALUES (44, 7, 2);
INSERT INTO "infra_pregunta_ambiente" VALUES (45, 8, 2);
INSERT INTO "infra_pregunta_ambiente" VALUES (46, 9, 2);
INSERT INTO "infra_pregunta_ambiente" VALUES (47, 22, 2);
INSERT INTO "infra_pregunta_ambiente" VALUES (48, 10, 7);
INSERT INTO "infra_pregunta_ambiente" VALUES (49, 11, 7);
INSERT INTO "infra_pregunta_ambiente" VALUES (50, 12, 7);
INSERT INTO "infra_pregunta_ambiente" VALUES (51, 3, 7);
INSERT INTO "infra_pregunta_ambiente" VALUES (52, 4, 7);
INSERT INTO "infra_pregunta_ambiente" VALUES (53, 5, 7);
INSERT INTO "infra_pregunta_ambiente" VALUES (54, 6, 7);
INSERT INTO "infra_pregunta_ambiente" VALUES (55, 7, 7);
INSERT INTO "infra_pregunta_ambiente" VALUES (56, 8, 7);
INSERT INTO "infra_pregunta_ambiente" VALUES (57, 9, 7);
INSERT INTO "infra_pregunta_ambiente" VALUES (58, 3, 8);
INSERT INTO "infra_pregunta_ambiente" VALUES (59, 4, 8);
INSERT INTO "infra_pregunta_ambiente" VALUES (60, 5, 8);
INSERT INTO "infra_pregunta_ambiente" VALUES (61, 6, 8);
INSERT INTO "infra_pregunta_ambiente" VALUES (62, 7, 8);
INSERT INTO "infra_pregunta_ambiente" VALUES (63, 8, 8);
INSERT INTO "infra_pregunta_ambiente" VALUES (64, 23, 8);
INSERT INTO "infra_pregunta_ambiente" VALUES (65, 13, 9);
INSERT INTO "infra_pregunta_ambiente" VALUES (66, 14, 9);
INSERT INTO "infra_pregunta_ambiente" VALUES (67, 15, 9);
INSERT INTO "infra_pregunta_ambiente" VALUES (68, 16, 9);
INSERT INTO "infra_pregunta_ambiente" VALUES (69, 17, 9);
INSERT INTO "infra_pregunta_ambiente" VALUES (70, 18, 9);
INSERT INTO "infra_pregunta_ambiente" VALUES (71, 19, 9);
INSERT INTO "infra_pregunta_ambiente" VALUES (72, 20, 9);
INSERT INTO "infra_pregunta_ambiente" VALUES (73, 21, 9);

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
-- Records of infra_pregunta_tipo
-- ----------------------------
INSERT INTO "infra_pregunta_tipo" VALUES (1, '¿Tiene iluminacion electrica?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (2, '¿Tiene Iluminacion natural?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (3, '¿Esta techado?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (4, '¿Tiene cielo falso?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (5, '¿Tiene ventana(s)?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (6, '¿Tiene puerta(s)?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (7, '¿Tiene muros?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (8, '¿El muro tiene revestimiento?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (9, '¿El piso es de tierra?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (10, '¿Hay buena ventilación?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (11, '¿Hay buenas condiciones de luz natural?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (12, '¿Se tiene privacidad?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (13, '¿Existe un centro de salud proximo?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (14, '¿Existe un centro policial proximo?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (15, '¿Existe un telecentro proximo?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (16, '¿Existe una DNA o SLIM proximo?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (17, '¿Existe una Universidad proxima?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (18, '¿Existe una estacion de bomberos proximo?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (19, '¿Existe un mercado proximo?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (20, '¿Existe una organizacion comunitaria proxima?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (21, '¿Existe un instituto técnico/tecnológico próximo?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (22, '¿Tiene graderias?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);
INSERT INTO "infra_pregunta_tipo" VALUES (23, '¿Tiene Piso?', '2019-09-25 19:18:13.520 +00:00', '2019-09-25 19:18:13.520 +00:00', 1);

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
-- Records of infra_propiedad_tipo
-- ----------------------------
INSERT INTO "infra_propiedad_tipo" VALUES (1, 'Gobierno Departamental', 1, '2019-09-25 19:18:18.404 +00:00', '2019-09-25 19:18:18.404 +00:00');
INSERT INTO "infra_propiedad_tipo" VALUES (2, 'Gobierno Municipal', 1, '2019-09-25 19:18:18.404 +00:00', '2019-09-25 19:18:18.404 +00:00');
INSERT INTO "infra_propiedad_tipo" VALUES (3, 'Comunal', 1, '2019-09-25 19:18:18.404 +00:00', '2019-09-25 19:18:18.404 +00:00');
INSERT INTO "infra_propiedad_tipo" VALUES (4, 'Privada', 1, '2019-09-25 19:18:18.404 +00:00', '2019-09-25 19:18:18.404 +00:00');

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
-- Records of infra_proximo_tipo
-- ----------------------------
INSERT INTO "infra_proximo_tipo" VALUES (1, 'Barrancos', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (2, 'Bosques', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (3, 'Rios/lagos', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (4, 'Quebradas', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (5, 'Basureros', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (6, 'Botadero Municipal', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (7, 'Centros Mineros', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (8, 'Fábrica de material contaminante', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (9, 'Paso de frontera', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (10, 'Bares o centros nocturnos', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (11, 'Estaciones eléctricas', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (12, 'Estaciones gasolineras', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (13, 'Zona de riesgos delictivos', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');
INSERT INTO "infra_proximo_tipo" VALUES (14, 'Cerro con pendiente pronunciada', 1, '2019-09-25 19:18:18.556 +00:00', '2019-09-25 19:18:18.556 +00:00');

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
-- Records of infra_purificador_agua_tipo
-- ----------------------------
INSERT INTO "infra_purificador_agua_tipo" VALUES (1, 'Tecnicas de filtrado', 1, '2019-09-25 19:18:18.724 +00:00', '2019-09-25 19:18:18.724 +00:00');
INSERT INTO "infra_purificador_agua_tipo" VALUES (2, 'Pastillas de cloro', 1, '2019-09-25 19:18:18.724 +00:00', '2019-09-25 19:18:18.724 +00:00');
INSERT INTO "infra_purificador_agua_tipo" VALUES (3, 'Desinfectante en polvo o granulado', 1, '2019-09-25 19:18:18.724 +00:00', '2019-09-25 19:18:18.724 +00:00');
INSERT INTO "infra_purificador_agua_tipo" VALUES (4, 'Ebullición (hervir el agua)', 1, '2019-09-25 19:18:18.724 +00:00', '2019-09-25 19:18:18.724 +00:00');

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
-- Records of infra_responsable_tipo
-- ----------------------------
INSERT INTO "infra_responsable_tipo" VALUES (1, 'Profesor(a)', 1, '2019-09-25 19:18:18.866 +00:00', '2019-09-25 19:18:18.866 +00:00');
INSERT INTO "infra_responsable_tipo" VALUES (2, 'Madre/Padre de Familia', 1, '2019-09-25 19:18:18.866 +00:00', '2019-09-25 19:18:18.866 +00:00');
INSERT INTO "infra_responsable_tipo" VALUES (3, 'Encargado/a (Contratado)', 1, '2019-09-25 19:18:18.867 +00:00', '2019-09-25 19:18:18.867 +00:00');
INSERT INTO "infra_responsable_tipo" VALUES (4, 'Estudiante de curso superior', 1, '2019-09-25 19:18:18.867 +00:00', '2019-09-25 19:18:18.867 +00:00');

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
-- Records of infra_riesgo_evento_tipo
-- ----------------------------
INSERT INTO "infra_riesgo_evento_tipo" VALUES (1, 'Inundación', 1, '2019-09-25 19:18:13.671 +00:00', '2019-09-25 19:18:13.671 +00:00');
INSERT INTO "infra_riesgo_evento_tipo" VALUES (2, 'Incendios', 1, '2019-09-25 19:18:13.671 +00:00', '2019-09-25 19:18:13.671 +00:00');
INSERT INTO "infra_riesgo_evento_tipo" VALUES (3, 'Sequia', 1, '2019-09-25 19:18:13.671 +00:00', '2019-09-25 19:18:13.671 +00:00');
INSERT INTO "infra_riesgo_evento_tipo" VALUES (4, 'Helada', 1, '2019-09-25 19:18:13.671 +00:00', '2019-09-25 19:18:13.671 +00:00');
INSERT INTO "infra_riesgo_evento_tipo" VALUES (5, 'Riada', 1, '2019-09-25 19:18:13.671 +00:00', '2019-09-25 19:18:13.671 +00:00');
INSERT INTO "infra_riesgo_evento_tipo" VALUES (6, 'Granizada', 1, '2019-09-25 19:18:13.671 +00:00', '2019-09-25 19:18:13.671 +00:00');
INSERT INTO "infra_riesgo_evento_tipo" VALUES (7, 'Vientos huracanados', 1, '2019-09-25 19:18:13.671 +00:00', '2019-09-25 19:18:13.671 +00:00');
INSERT INTO "infra_riesgo_evento_tipo" VALUES (8, 'Sismo / terremoto', 1, '2019-09-25 19:18:13.671 +00:00', '2019-09-25 19:18:13.671 +00:00');
INSERT INTO "infra_riesgo_evento_tipo" VALUES (9, 'Deslizamientos', 1, '2019-09-25 19:18:13.671 +00:00', '2019-09-25 19:18:13.671 +00:00');
INSERT INTO "infra_riesgo_evento_tipo" VALUES (10, 'Hundimientos o sifonamientos', 1, '2019-09-25 19:18:13.671 +00:00', '2019-09-25 19:18:13.671 +00:00');
INSERT INTO "infra_riesgo_evento_tipo" VALUES (11, 'Otro', 1, '2019-09-25 19:18:13.671 +00:00', '2019-09-25 19:18:13.671 +00:00');

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
-- Records of infra_senialetica_tipo
-- ----------------------------
INSERT INTO "infra_senialetica_tipo" VALUES (1, 'Orientadoras', 1, '2019-09-25 19:18:13.813 +00:00', '2019-09-25 19:18:13.813 +00:00');
INSERT INTO "infra_senialetica_tipo" VALUES (2, 'Audibles', 1, '2019-09-25 19:18:13.813 +00:00', '2019-09-25 19:18:13.813 +00:00');
INSERT INTO "infra_senialetica_tipo" VALUES (3, 'Visuales', 1, '2019-09-25 19:18:13.813 +00:00', '2019-09-25 19:18:13.813 +00:00');
INSERT INTO "infra_senialetica_tipo" VALUES (4, 'Tactiles', 1, '2019-09-25 19:18:13.813 +00:00', '2019-09-25 19:18:13.813 +00:00');
INSERT INTO "infra_senialetica_tipo" VALUES (5, 'Direccionales', 1, '2019-09-25 19:18:13.813 +00:00', '2019-09-25 19:18:13.813 +00:00');
INSERT INTO "infra_senialetica_tipo" VALUES (6, 'De Ubicación', 1, '2019-09-25 19:18:13.813 +00:00', '2019-09-25 19:18:13.813 +00:00');
INSERT INTO "infra_senialetica_tipo" VALUES (7, 'Informativas', 1, '2019-09-25 19:18:13.813 +00:00', '2019-09-25 19:18:13.813 +00:00');

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
-- Records of infra_servicio_otro_categoria_tipo
-- ----------------------------
INSERT INTO "infra_servicio_otro_categoria_tipo" VALUES (1, 'servicio cuenta', '2019-09-25 19:18:12.650 +00:00', '2019-09-25 19:18:12.650 +00:00', 1);
INSERT INTO "infra_servicio_otro_categoria_tipo" VALUES (2, 'servicio ofrece', '2019-09-25 19:18:12.650 +00:00', '2019-09-25 19:18:12.650 +00:00', 1);

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
-- Records of infra_servicio_otro_tipo
-- ----------------------------
INSERT INTO "infra_servicio_otro_tipo" VALUES (1, 'Gas natural de red', 1, '2019-09-25 19:18:19.009 +00:00', '2019-09-25 19:18:19.009 +00:00', 1);
INSERT INTO "infra_servicio_otro_tipo" VALUES (2, 'Enfermería', 1, '2019-09-25 19:18:19.009 +00:00', '2019-09-25 19:18:19.009 +00:00', 1);
INSERT INTO "infra_servicio_otro_tipo" VALUES (3, 'Telecentros', 1, '2019-09-25 19:18:19.009 +00:00', '2019-09-25 19:18:19.009 +00:00', 1);
INSERT INTO "infra_servicio_otro_tipo" VALUES (4, 'Fisioterapia', 1, '2019-09-25 19:18:19.009 +00:00', '2019-09-25 19:18:19.009 +00:00', 2);
INSERT INTO "infra_servicio_otro_tipo" VALUES (5, 'Psicopedagogía', 1, '2019-09-25 19:18:19.009 +00:00', '2019-09-25 19:18:19.009 +00:00', 2);
INSERT INTO "infra_servicio_otro_tipo" VALUES (6, 'Psicología', 1, '2019-09-25 19:18:19.009 +00:00', '2019-09-25 19:18:19.009 +00:00', 2);
INSERT INTO "infra_servicio_otro_tipo" VALUES (7, 'Trabajo Social', 1, '2019-09-25 19:18:19.009 +00:00', '2019-09-25 19:18:19.009 +00:00', 2);
INSERT INTO "infra_servicio_otro_tipo" VALUES (8, 'Audiocentros', 1, '2019-09-25 19:18:19.009 +00:00', '2019-09-25 19:18:19.009 +00:00', 2);
INSERT INTO "infra_servicio_otro_tipo" VALUES (9, 'Optometría', 1, '2019-09-25 19:18:19.009 +00:00', '2019-09-25 19:18:19.009 +00:00', 2);
INSERT INTO "infra_servicio_otro_tipo" VALUES (10, 'Fonoaudiología', 1, '2019-09-25 19:18:19.009 +00:00', '2019-09-25 19:18:19.009 +00:00', 2);

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
-- Records of infra_tenencia_tipo
-- ----------------------------
INSERT INTO "infra_tenencia_tipo" VALUES (1, 'Ninguna', 1, '2019-09-25 19:18:19.151 +00:00', '2019-09-25 19:18:19.151 +00:00');
INSERT INTO "infra_tenencia_tipo" VALUES (2, 'Propio', 1, '2019-09-25 19:18:19.151 +00:00', '2019-09-25 19:18:19.151 +00:00');
INSERT INTO "infra_tenencia_tipo" VALUES (3, 'Comodato', 1, '2019-09-25 19:18:19.151 +00:00', '2019-09-25 19:18:19.151 +00:00');
INSERT INTO "infra_tenencia_tipo" VALUES (4, 'Anticretico', 1, '2019-09-25 19:18:19.151 +00:00', '2019-09-25 19:18:19.151 +00:00');
INSERT INTO "infra_tenencia_tipo" VALUES (5, 'Usufructo', 1, '2019-09-25 19:18:19.151 +00:00', '2019-09-25 19:18:19.151 +00:00');
INSERT INTO "infra_tenencia_tipo" VALUES (6, 'Donación', 1, '2019-09-25 19:18:19.151 +00:00', '2019-09-25 19:18:19.151 +00:00');
INSERT INTO "infra_tenencia_tipo" VALUES (7, 'Compartido', 1, '2019-09-25 19:18:19.151 +00:00', '2019-09-25 19:18:19.151 +00:00');

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
-- Records of infra_tiempo_suspendido_tipo
-- ----------------------------
INSERT INTO "infra_tiempo_suspendido_tipo" VALUES (0, 'Ninguno', 1, '2019-09-25 19:18:19.284 +00:00', '2019-09-25 19:18:19.284 +00:00');
INSERT INTO "infra_tiempo_suspendido_tipo" VALUES (1, '1 a 3 dias', 1, '2019-09-25 19:18:19.284 +00:00', '2019-09-25 19:18:19.284 +00:00');
INSERT INTO "infra_tiempo_suspendido_tipo" VALUES (2, '1 Semana', 1, '2019-09-25 19:18:19.284 +00:00', '2019-09-25 19:18:19.284 +00:00');
INSERT INTO "infra_tiempo_suspendido_tipo" VALUES (3, '2 Semanas', 1, '2019-09-25 19:18:19.284 +00:00', '2019-09-25 19:18:19.284 +00:00');
INSERT INTO "infra_tiempo_suspendido_tipo" VALUES (4, 'Mas de 2 semanas', 1, '2019-09-25 19:18:19.284 +00:00', '2019-09-25 19:18:19.284 +00:00');

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
-- Records of infra_topografia_tipo
-- ----------------------------
INSERT INTO "infra_topografia_tipo" VALUES (1, 'Zona plana', 1, '2019-09-25 19:18:19.427 +00:00', '2019-09-25 19:18:19.427 +00:00');
INSERT INTO "infra_topografia_tipo" VALUES (2, 'Pendiente media', 1, '2019-09-25 19:18:19.427 +00:00', '2019-09-25 19:18:19.427 +00:00');
INSERT INTO "infra_topografia_tipo" VALUES (3, 'Pendiente pronunciada', 1, '2019-09-25 19:18:19.427 +00:00', '2019-09-25 19:18:19.427 +00:00');

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
-- Records of infra_ubicacion_tipo
-- ----------------------------
INSERT INTO "infra_ubicacion_tipo" VALUES (1, 'Todo el edificio', 1, '2019-09-25 19:18:13.939 +00:00', '2019-09-25 19:18:13.939 +00:00');
INSERT INTO "infra_ubicacion_tipo" VALUES (2, 'Al ingreso del edificio', 1, '2019-09-25 19:18:13.939 +00:00', '2019-09-25 19:18:13.939 +00:00');
INSERT INTO "infra_ubicacion_tipo" VALUES (3, 'Algunos Bloques del edificio', 1, '2019-09-25 19:18:13.939 +00:00', '2019-09-25 19:18:13.939 +00:00');
INSERT INTO "infra_ubicacion_tipo" VALUES (4, 'Todos los bloques del edificio', 1, '2019-09-25 19:18:13.939 +00:00', '2019-09-25 19:18:13.939 +00:00');
INSERT INTO "infra_ubicacion_tipo" VALUES (5, 'Ambientes pedagogicos del edificio', 1, '2019-09-25 19:18:13.939 +00:00', '2019-09-25 19:18:13.939 +00:00');
INSERT INTO "infra_ubicacion_tipo" VALUES (6, 'Todos los ambientes del edificio', 1, '2019-09-25 19:18:13.939 +00:00', '2019-09-25 19:18:13.939 +00:00');

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
-- Records of mes_tipo
-- ----------------------------
INSERT INTO "mes_tipo" VALUES (1, 'Enero');
INSERT INTO "mes_tipo" VALUES (2, 'Febrero');
INSERT INTO "mes_tipo" VALUES (3, 'Marzo');
INSERT INTO "mes_tipo" VALUES (4, 'Abril');
INSERT INTO "mes_tipo" VALUES (5, 'Mayo');
INSERT INTO "mes_tipo" VALUES (6, 'Junio');
INSERT INTO "mes_tipo" VALUES (7, 'Julio');
INSERT INTO "mes_tipo" VALUES (8, 'Agosto');
INSERT INTO "mes_tipo" VALUES (9, 'Septiembre');
INSERT INTO "mes_tipo" VALUES (10, 'Octubre');
INSERT INTO "mes_tipo" VALUES (11, 'Noviembre');
INSERT INTO "mes_tipo" VALUES (12, 'Diciembre');

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS "sqlite_sequence";
CREATE TABLE "sqlite_sequence" (
  "name",
  "seq"
);

-- ----------------------------
-- Records of sqlite_sequence
-- ----------------------------
INSERT INTO "sqlite_sequence" VALUES ('gestion_tipo', 1);
INSERT INTO "sqlite_sequence" VALUES ('turno_tipo', 11);
INSERT INTO "sqlite_sequence" VALUES ('infra_ambiente_destinado_tipo', 6);
INSERT INTO "sqlite_sequence" VALUES ('infra_medio_acceso_tipo', 3);
INSERT INTO "sqlite_sequence" VALUES ('especialidad_tecnico_humanistico_tipo', 41);
INSERT INTO "sqlite_sequence" VALUES ('mes_tipo', 12);
INSERT INTO "sqlite_sequence" VALUES ('infra_ambiente_categoria_tipo', 9);
INSERT INTO "sqlite_sequence" VALUES ('infra_servicio_otro_categoria_tipo', 4);
INSERT INTO "sqlite_sequence" VALUES ('infra_ambiente_tipo', 46);
INSERT INTO "sqlite_sequence" VALUES ('infra_equipamiento_categoria_tipo', 5);
INSERT INTO "sqlite_sequence" VALUES ('infra_acceso_tipo', 4);
INSERT INTO "sqlite_sequence" VALUES ('infra_grada_rampa_cuenta_tipo', 3);
INSERT INTO "sqlite_sequence" VALUES ('infra_periodicidad_eliminacion_basura_tipo', 4);
INSERT INTO "sqlite_sequence" VALUES ('infra_pregunta_tipo', 23);
INSERT INTO "sqlite_sequence" VALUES ('infra_riesgo_evento_tipo', 11);
INSERT INTO "sqlite_sequence" VALUES ('infra_senialetica_tipo', 7);
INSERT INTO "sqlite_sequence" VALUES ('infra_ubicacion_tipo', 6);
INSERT INTO "sqlite_sequence" VALUES ('infra_medio_transporte_categoria_tipo', 3);
INSERT INTO "sqlite_sequence" VALUES ('infra_medio_transporte_tipo', 14);
INSERT INTO "sqlite_sequence" VALUES ('infra_disponibilidad_servicio_tipo', 2);
INSERT INTO "sqlite_sequence" VALUES ('infra_area_tipo', 2);
INSERT INTO "sqlite_sequence" VALUES ('infra_agua_uso_tipo', 5);
INSERT INTO "sqlite_sequence" VALUES ('infra_equipamiento_tipo', 20);
INSERT INTO "sqlite_sequence" VALUES ('infra_amurallado_tipo', 3);
INSERT INTO "sqlite_sequence" VALUES ('infra_artefacto_banio_tipo', 5);
INSERT INTO "sqlite_sequence" VALUES ('infra_documentacion_tipo', 11);
INSERT INTO "sqlite_sequence" VALUES ('infra_edificacion_tipo', 7);
INSERT INTO "sqlite_sequence" VALUES ('infra_entidad_ejecutora_tipo', 7);
INSERT INTO "sqlite_sequence" VALUES ('infra_equipamiento_brigada_tipo', 5);
INSERT INTO "sqlite_sequence" VALUES ('infra_espacios_tipo', 6);
INSERT INTO "sqlite_sequence" VALUES ('infra_estado_tipo', 6);
INSERT INTO "sqlite_sequence" VALUES ('infra_evacuacion_tipo', 3);
INSERT INTO "sqlite_sequence" VALUES ('infra_fuente_energia_tipo', 5);
INSERT INTO "sqlite_sequence" VALUES ('infra_gestion_construccion_tipo', 3);
INSERT INTO "sqlite_sequence" VALUES ('infra_instalacion_tipo', 2);
INSERT INTO "sqlite_sequence" VALUES ('infra_pregunta_ambiente', 73);
INSERT INTO "sqlite_sequence" VALUES ('infra_medio_eliminacion_basura_tipo', 5);
INSERT INTO "sqlite_sequence" VALUES ('infra_medio_eliminacion_exc_tipo', 5);
INSERT INTO "sqlite_sequence" VALUES ('infra_medio_suministro_agua_tipo', 7);
INSERT INTO "sqlite_sequence" VALUES ('infra_condicion', 300);
INSERT INTO "sqlite_sequence" VALUES ('infra_mobiliario_tipo', 16);
INSERT INTO "sqlite_sequence" VALUES ('infra_predio_tipo', 2);
INSERT INTO "sqlite_sequence" VALUES ('infra_propiedad_tipo', 4);
INSERT INTO "sqlite_sequence" VALUES ('infra_proximo_tipo', 14);
INSERT INTO "sqlite_sequence" VALUES ('infra_purificador_agua_tipo', 4);
INSERT INTO "sqlite_sequence" VALUES ('infra_responsable_tipo', 4);
INSERT INTO "sqlite_sequence" VALUES ('infra_servicio_otro_tipo', 10);
INSERT INTO "sqlite_sequence" VALUES ('infra_tenencia_tipo', 7);
INSERT INTO "sqlite_sequence" VALUES ('infra_tiempo_suspendido_tipo', 4);
INSERT INTO "sqlite_sequence" VALUES ('infra_topografia_tipo', 3);
INSERT INTO "sqlite_sequence" VALUES ('usuario', 1);

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
-- Records of turno_tipo
-- ----------------------------
INSERT INTO "turno_tipo" VALUES (0, 'Sin Definir', 1, '2019-09-25 19:18:11.502 +00:00', '2019-09-25 19:18:11.502 +00:00');
INSERT INTO "turno_tipo" VALUES (1, 'Mañana', 1, '2019-09-25 19:18:11.502 +00:00', '2019-09-25 19:18:11.502 +00:00');
INSERT INTO "turno_tipo" VALUES (2, 'Tarde', 1, '2019-09-25 19:18:11.502 +00:00', '2019-09-25 19:18:11.502 +00:00');
INSERT INTO "turno_tipo" VALUES (4, 'Noche', 1, '2019-09-25 19:18:11.502 +00:00', '2019-09-25 19:18:11.502 +00:00');
INSERT INTO "turno_tipo" VALUES (8, 'Mañana y Tarde', 1, '2019-09-25 19:18:11.502 +00:00', '2019-09-25 19:18:11.502 +00:00');
INSERT INTO "turno_tipo" VALUES (9, 'Tarde y Noche', 1, '2019-09-25 19:18:11.502 +00:00', '2019-09-25 19:18:11.502 +00:00');
INSERT INTO "turno_tipo" VALUES (10, 'Mañana,Tarde y Noche', 1, '2019-09-25 19:18:11.502 +00:00', '2019-09-25 19:18:11.502 +00:00');
INSERT INTO "turno_tipo" VALUES (11, 'Mañana y Noche', 1, '2019-09-25 19:18:11.502 +00:00', '2019-09-25 19:18:11.502 +00:00');

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
-- Records of usuario
-- ----------------------------
INSERT INTO "usuario" VALUES (1, 2222, 2, 2, 2, 2, 2, 2, 2);

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
