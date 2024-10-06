-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         PostgreSQL 12.14, compiled by Visual C++ build 1914, 64-bit
-- SO del servidor:              
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla public.institucioneducativa
DROP TABLE IF EXISTS "institucioneducativa";
CREATE TABLE IF NOT EXISTS "institucioneducativa" (
	"id" INTEGER NOT NULL,
	"le_juridicciongeografica_id" INTEGER NOT NULL,
	"estadoinstitucion_tipo_id" SMALLINT NOT NULL,
	"convenio_tipo_id" SMALLINT NOT NULL,
	"dependencia_tipo_id" SMALLINT NOT NULL,
	"institucioneducativa_tipo_id" SMALLINT NOT NULL,
	"orgcurricular_tipo_id" SMALLINT NOT NULL,
	"institucioneducativa" VARCHAR(255) NULL DEFAULT NULL,
	"rue_ue" SMALLINT NULL DEFAULT NULL,
	"fecha_resolucion" DATE NULL DEFAULT NULL,
	"nro_resolucion" VARCHAR(45) NULL DEFAULT NULL,
	"obs_rue" VARCHAR(255) NULL DEFAULT NULL,
	"des_ue_antes" VARCHAR(255) NULL DEFAULT NULL,
	"fecha_creacion" DATE NULL DEFAULT NULL,
	"fecha_cierre" VARCHAR(45) NULL DEFAULT NULL,
	"institucioneducativa_acreditacion_tipo_id" SMALLINT NULL DEFAULT NULL,
	"obs_rue2" VARCHAR(200) NULL DEFAULT NULL,
	"des_ue_antes2" VARCHAR(150) NULL DEFAULT NULL,
	"fecha_registro" TIMESTAMP NULL DEFAULT NULL,
	"fecha_modificacion" TIMESTAMP NULL DEFAULT NULL,
	"area_municipio" VARCHAR(1) NULL DEFAULT NULL,
	"fecha_fundacion" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.institucioneducativa: 0 rows
/*!40000 ALTER TABLE "institucioneducativa" DISABLE KEYS */;
INSERT INTO "institucioneducativa" ("id", "le_juridicciongeografica_id", "estadoinstitucion_tipo_id", "convenio_tipo_id", "dependencia_tipo_id", "institucioneducativa_tipo_id", "orgcurricular_tipo_id", "institucioneducativa", "rue_ue", "fecha_resolucion", "nro_resolucion", "obs_rue", "des_ue_antes", "fecha_creacion", "fecha_cierre", "institucioneducativa_acreditacion_tipo_id", "obs_rue2", "des_ue_antes2", "fecha_registro", "fecha_modificacion", "area_municipio", "fecha_fundacion") VALUES
	(40730069, 40730040, 10, 1, 1, 1, 1, 'VILLA EL CARMEN TARDE', NULL, '1900-01-01', '1', NULL, 'COL. VILLA EL CARMEN', NULL, '2099-12-31', 1, NULL, 'COL. VILLA EL CARMEN', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "institucioneducativa" ENABLE KEYS */;

-- Volcando estructura para tabla public.lugar_tipo
DROP TABLE IF EXISTS "lugar_tipo";
CREATE TABLE IF NOT EXISTS "lugar_tipo" (
	"id" INTEGER NOT NULL,
	"lugar_tipo_id" INTEGER NULL DEFAULT NULL,
	"gestion_tipo_id" INTEGER NOT NULL,
	"pais_tipo_id" SMALLINT NOT NULL,
	"lugar_nivel_id" SMALLINT NOT NULL,
	"codigo" VARCHAR(15) NULL DEFAULT NULL,
	"lugar" VARCHAR(125) NULL DEFAULT NULL,
	"obs" VARCHAR(145) NULL DEFAULT NULL,
	"departamento_tipo_id" SMALLINT NULL DEFAULT NULL,
	"area2001" VARCHAR(1) NULL DEFAULT NULL,
	"area2012" VARCHAR(1) NULL DEFAULT NULL,
	"area_distrito" VARCHAR(1) NULL DEFAULT NULL,
	"poblacion" INTEGER NULL DEFAULT NULL,
	"viviendas" INTEGER NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.lugar_tipo: 200 rows
/*!40000 ALTER TABLE "lugar_tipo" DISABLE KEYS */;
INSERT INTO "lugar_tipo" ("id", "lugar_tipo_id", "gestion_tipo_id", "pais_tipo_id", "lugar_nivel_id", "codigo", "lugar", "obs", "departamento_tipo_id", "area2001", "area2012", "area_distrito", "poblacion", "viviendas") VALUES
	(200, 31, 2014, 1, 3, '6', 'SEXTA SECCIÓN (JESÚS DE MACHACA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(201, 31, 2014, 1, 3, '7', 'SEPTIMA SECCIÓN (TARACO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(202, 32, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (LURIBAY)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(203, 32, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (SAPAHAQUI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(204, 32, 2014, 1, 3, '3', 'TERCERA SECCIÓN (YACO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(205, 32, 2014, 1, 3, '4', 'CUARTA SECCIÓN (MALLA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(206, 32, 2014, 1, 3, '5', 'QUINTA SECCIÓN (CAIROMA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(207, 33, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (INQUISIVI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(208, 33, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (QUIME)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(209, 33, 2014, 1, 3, '3', 'TERCERA SECCIÓN (CAJUATA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(210, 33, 2014, 1, 3, '4', 'CUARTA SECCIÓN (COLQUIRI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(211, 33, 2014, 1, 3, '5', 'QUINTA SECCIÓN (ICHOCA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(212, 33, 2014, 1, 3, '6', 'SEXTA SECCIÓN (VILLA LIBERTAD LICOMA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(213, 34, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (CHULUMANI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(214, 34, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (IRUPANA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(215, 34, 2014, 1, 3, '3', 'TERCERA SECCIÓN (YANACACHI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(216, 34, 2014, 1, 3, '4', 'CUARTA SECCIÓN (PALOS BLANCOS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(217, 34, 2014, 1, 3, '5', 'QUINTA SECCIÓN (LA ASUNTA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(218, 35, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (PUCARANI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(219, 35, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (LAJA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(220, 35, 2014, 1, 3, '3', 'TERCERA SECCIÓN (BATALLAS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(221, 35, 2014, 1, 3, '4', 'CUARTA SECCIÓN (PUERTO PÉREZ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(222, 36, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (SICA SICA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(223, 36, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (UMALA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(224, 36, 2014, 1, 3, '3', 'TERCERA SECCIÓN (AYO AYO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(225, 36, 2014, 1, 3, '4', 'CUARTA SECCIÓN (CALAMARCA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(226, 36, 2014, 1, 3, '5', 'QUINTA SECCIÓN (PATACAMAYA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(227, 36, 2014, 1, 3, '6', 'SEXTA SECCIÓN (COLQUENCHA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(228, 36, 2014, 1, 3, '7', 'SEPTIMA SECCIÓN (COLLANA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(229, 37, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (COROICO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(230, 37, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (CORIPATA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(231, 38, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (IXIAMAS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(232, 38, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (SAN BUENAVENTURA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(233, 39, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (CHARAZANI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(234, 39, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (CURVA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(235, 40, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (COPACABANA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(236, 40, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (SAN PEDRO DE TIQUINA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(237, 40, 2014, 1, 3, '3', 'TERCERA SECCIÓN (TITO YUPANQUI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(238, 41, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (SAN PEDRO CUARAHUARA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(239, 41, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (PAPEL PAMPA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(240, 41, 2014, 1, 3, '3', 'TERCERA SECCIÓN (CHACARILLA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(241, 42, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (SANTIAGO DE MACHACA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(242, 42, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (CATACORA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(243, 43, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (CARANAVI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(244, 44, 2014, 1, 3, '0', 'NO EXISTE EN CNPV 2001', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(245, 45, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (COCHABAMBA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(246, 46, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (AIQUILE)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(247, 46, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (PASORAPA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(248, 46, 2014, 1, 3, '3', 'TERCERA SECCIÓN (OMEREQUE)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(249, 47, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (INDEPENDENCIA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(250, 47, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (MOROCHATA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(251, 48, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (TARATA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(252, 48, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (ANZALDO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(253, 48, 2014, 1, 3, '3', 'TERCERA SECCIÓN (ARBIETO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(254, 48, 2014, 1, 3, '4', 'CUARTA SECCIÓN (SACABAMBA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(255, 49, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (ARANI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(256, 49, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (VACAS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(257, 50, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (ARQUE)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(258, 50, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (TACOPAYA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(259, 51, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (CAPINOTA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(260, 51, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (SANTIVAÑEZ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(261, 51, 2014, 1, 3, '3', 'TERCERA SECCIÓN (SICAYA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(262, 52, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (CLIZA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(263, 52, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (TOKO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(264, 52, 2014, 1, 3, '3', 'TERCERA SECCIÓN (TOLATA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(265, 53, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (QUILLACOLLO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(266, 53, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (SIPE SIPE)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(267, 53, 2014, 1, 3, '3', 'TERCERA SECCIÓN (TIQUIPAYA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(268, 53, 2014, 1, 3, '4', 'CUARTA SECCIÓN (VINTO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(269, 53, 2014, 1, 3, '5', 'QUINTA SECCIÓN (COLCAPIRHUA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(270, 54, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (SACABA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(271, 54, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (COLOMI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(272, 54, 2014, 1, 3, '3', 'TERCERA SECCIÓN (VILLA TUNARI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(273, 55, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (TAPACARÍ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(274, 56, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (TOTORA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(275, 56, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (POJO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(276, 56, 2014, 1, 3, '3', 'TERCERA SECCIÓN (POCONA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(277, 56, 2014, 1, 3, '4', 'CUARTA SECCIÓN (CHIMORÉ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(278, 56, 2014, 1, 3, '5', 'QUINTA SECCIÓN (PUERTO VILLARROEL)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(279, 56, 2014, 1, 3, '6', 'SEXTA SECCIÓN (ENTRE RIOS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(280, 57, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (MIZQUE)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(281, 57, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (VILA VILA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(282, 57, 2014, 1, 3, '3', 'TERCERA SECCIÓN (ALALAY)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(283, 58, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (PUNATA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(284, 58, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (VILLA RIVERO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(285, 58, 2014, 1, 3, '3', 'TERCERA SECCIÓN (SAN BENITO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(286, 58, 2014, 1, 3, '4', 'CUARTA SECCIÓN (TACACHI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(287, 58, 2014, 1, 3, '5', 'QUINTA SECCIÓN (CUCHUMUELA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(288, 59, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (BOLÍVAR)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(289, 60, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (TIRAQUE)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(290, 61, 2014, 1, 3, '0', 'NO EXISTE EN CNPV 2001', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(291, 62, 2014, 1, 3, '1', 'CAPITAL (ORURO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(292, 62, 2014, 1, 3, '2', 'PRIMERA SECCIÓN (CARACOLLO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(293, 62, 2014, 1, 3, '3', 'SEGUNDA SECCIÓN (EL CHORO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(596, 169, 2014, 1, 4, '12', 'CHUA COCANI', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(294, 62, 2014, 1, 3, '4', 'TERCERA SECCIÓN (SORACACHI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(295, 63, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (CHALLAPATA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(296, 63, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (QUILLACAS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(297, 64, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (CORQUE)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(298, 64, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (CHOQUE COTA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(299, 65, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (CURAHUARA DE CARANGAS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(300, 65, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (TURCO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(301, 66, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (HUACHACALLA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(302, 66, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (ESCARA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(303, 66, 2014, 1, 3, '3', 'TERCERA SECCIÓN (CRUZ DE MACHACAMARCA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(304, 66, 2014, 1, 3, '4', 'CUARTA SECCIÓN (YUNGUYO DE LITORAL)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(305, 66, 2014, 1, 3, '5', 'QUINTA SECCIÓN (ESMERALDA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(306, 67, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (POOPÓ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(307, 67, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (PAZÑA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(308, 67, 2014, 1, 3, '3', 'TERCERA SECCIÓN (ANTEQUERA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(309, 68, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (HUANUNI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(310, 68, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (MACHACAMARCA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(311, 69, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (SALINAS DE GARCÍA MENDOZA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(312, 69, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (PAMPA AULLAGAS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(313, 70, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (SABAYA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(314, 70, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (COIPASA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(315, 70, 2014, 1, 3, '3', 'TERCERA SECCIÓN (CHIPAYA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(316, 71, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (TOLEDO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(317, 72, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (EUCALIPTUS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(318, 73, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (SANTIAGO DE ANDAMARCA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(319, 73, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (BELÉN DE ANDAMARCA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(320, 74, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (SAN PEDRO DE TOTORA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(321, 75, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (HUARI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(322, 76, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (LA RIVERA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(323, 76, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (TODOS SANTOS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(324, 76, 2014, 1, 3, '3', 'TERCERA SECCIÓN (CARANGAS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(325, 77, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (HUAYLLAMARCA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(326, 78, 2014, 1, 3, '0', 'NO EXISTE EN CNPV 2001', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(327, 79, 2014, 1, 3, '1', 'CAPITAL (POTOSÍ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(328, 79, 2014, 1, 3, '2', 'PRIMERA SECCIÓN (TINGUIPAYA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(329, 79, 2014, 1, 3, '3', 'SEGUNDA SECCIÓN (YOCALLA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(330, 79, 2014, 1, 3, '4', 'TERCERA SECCIÓN (URMIRI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(331, 80, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (UNCÍA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(332, 80, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (CHAYANTA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(333, 80, 2014, 1, 3, '3', 'TERCERA SECCIÓN (LLALLAGUA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(334, 81, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (BETANZOS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(335, 81, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (CHAQUÍ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(336, 81, 2014, 1, 3, '3', 'TERCERA SECCIÓN (TACOBAMBA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(337, 82, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (COLQUECHACA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(338, 82, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (RAVELO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(339, 82, 2014, 1, 3, '3', 'TERCERA SECCIÓN (POCOATA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(340, 82, 2014, 1, 3, '4', 'CUARTA SECCIÓN (OCURÍ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(341, 83, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (S.P. DE BUENA VISTA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(342, 83, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (TORO TORO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(343, 84, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (COTAGAITA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(344, 84, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (VITICHI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(345, 85, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (VILLA DESACACA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(346, 85, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (CARIPUYO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(347, 86, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (TUPIZA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(348, 86, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (ATOCHA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(349, 87, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (COLCHA "K")', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(350, 87, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (SAN PEDRO DE QUEMES)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(351, 88, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (SAN PABLO DE LIPEZ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(352, 88, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (MOJINETE)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(353, 88, 2014, 1, 3, '3', 'TERCERA SECCIÓN (SAN ANTONIO DE ESMORUCO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(354, 89, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (PUNA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(355, 89, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (CAIZA "D")', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(356, 90, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (UYUNI)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(357, 90, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (TOMAVE)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(358, 90, 2014, 1, 3, '3', 'TERCERA SECCIÓN (PORCO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(359, 91, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (ARAMPAMPA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(360, 91, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (ACASIO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(361, 92, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (LLICA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(362, 92, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (TAHUA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(363, 93, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (VILLAZÓN)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(364, 94, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (SAN AGUSTÍN)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(365, 95, 2014, 1, 3, '0', 'NO EXISTE EN CNPV 2001', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(366, 96, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (TARIJA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(367, 97, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (PADCAYA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(368, 97, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (BERMEJO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(369, 98, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (YACUIBA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(370, 98, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (CARAPARÍ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(371, 98, 2014, 1, 3, '3', 'TERCERA SECCIÓN (VILLAMONTES)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(372, 99, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (URIONDO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(373, 99, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (YUNCHARÁ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(374, 100, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (VILLA SAN LORENZO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(375, 100, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (EL PUENTE)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(376, 101, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (ENTRE RÍOS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(377, 102, 2014, 1, 3, '0', 'NO EXISTE EN CNPV 2001', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(378, 103, 2014, 1, 3, '1', 'CAPITAL (SANTA CRUZ DE LA SIERRA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(379, 103, 2014, 1, 3, '2', 'PRIMERA SECCIÓN (COTOCA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(380, 103, 2014, 1, 3, '3', 'SEGUNDA SECCIÓN (PORONGO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(381, 103, 2014, 1, 3, '4', 'TERCERA SECCIÓN (LA GUARDIA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(382, 103, 2014, 1, 3, '5', 'CUARTA SECCIÓN (EL TORNO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(383, 104, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (WARNES)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(384, 104, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (OKINAWA UNO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(385, 105, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (SAN IGNACIO DE VELASCO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(386, 105, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (SAN MIGUEL DE VELASCO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(387, 105, 2014, 1, 3, '3', 'TERCERA SECCIÓN (SAN RAFAEL)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(388, 106, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (BUENA VISTA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(389, 106, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (SAN CARLOS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(390, 106, 2014, 1, 3, '3', 'TERCERA SECCIÓN (YAPACANÍ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(391, 106, 2014, 1, 3, '4', 'CUARTA SECCIÓN (SAN JUAN)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(392, 107, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (SAN JOSÉDE CHIQUITOS)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(393, 107, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (PAILÓN)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(394, 107, 2014, 1, 3, '3', 'TERCERA SECCIÓN (ROBORÉ)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(395, 108, 2014, 1, 3, '1', 'PRIMERA SECCIÓN (PORTACHUELO)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(396, 108, 2014, 1, 3, '2', 'SEGUNDA SECCIÓN (SANTA ROSA DEL SARA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(397, 108, 2014, 1, 3, '3', 'TERCERA SECCIÓN (COLPA BELGICA)', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(495, 137, 2014, 1, 4, '6', 'HUAÑOMA', '', NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "lugar_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.maestro_inscripcion
DROP TABLE IF EXISTS "maestro_inscripcion";
CREATE TABLE IF NOT EXISTS "maestro_inscripcion" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''maestro_inscripcion_id_seq''::regclass)',
	"cargo_tipo_id" SMALLINT NOT NULL,
	"formacion_tipo_id" SMALLINT NOT NULL,
	"institucioneducativa_id" INTEGER NOT NULL,
	"rda_planillas_id" VARCHAR(10) NOT NULL,
	"persona_id" INTEGER NOT NULL,
	"gestion_tipo_id" INTEGER NOT NULL,
	"especialidad_tipo_id" SMALLINT NOT NULL,
	"financiamiento_tipo_id" SMALLINT NOT NULL,
	"periodo_tipo_id" SMALLINT NOT NULL,
	"ref" VARCHAR(80) NULL DEFAULT NULL,
	"estadomaestro_id" SMALLINT NULL DEFAULT NULL,
	"rol_tipo_id" SMALLINT NULL DEFAULT NULL,
	"institucioneducativa_sucursal_id" INTEGER NOT NULL,
	"normalista" BOOLEAN NULL DEFAULT NULL,
	"idioma_materno_id" SMALLINT NULL DEFAULT NULL,
	"leeescribebraile" BOOLEAN NULL DEFAULT NULL,
	"estudia_idioma_materno_id" INTEGER NULL DEFAULT NULL,
	"formaciondescripcion" VARCHAR(50) NULL DEFAULT NULL,
	"lugar_tipo" INTEGER NULL DEFAULT NULL,
	"item_director" INTEGER NULL DEFAULT NULL,
	"horas" INTEGER NULL DEFAULT NULL,
	"item" VARCHAR(6) NULL DEFAULT NULL,
	"fecha_registro" DATE NULL DEFAULT 'now()',
	"fecha_modificacion" DATE NULL DEFAULT NULL,
	"es_vigente_administrativo" BOOLEAN NULL DEFAULT 'false',
	"unidad_militar_tipo_id" INTEGER NULL DEFAULT NULL,
	"recinto_penitenciario_tipo_id" INTEGER NULL DEFAULT NULL,
	"educacion_diversa_tipo_id" INTEGER NULL DEFAULT NULL,
	"asignacion_fecha_inicio" DATE NULL DEFAULT NULL,
	"asignacion_fecha_fin" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id"),
	UNIQUE INDEX "uniq_maestro_cargo" ("cargo_tipo_id", "institucioneducativa_id", "gestion_tipo_id", "persona_id", "periodo_tipo_id", "institucioneducativa_sucursal_id")
);

-- Volcando datos para la tabla public.maestro_inscripcion: 0 rows
/*!40000 ALTER TABLE "maestro_inscripcion" DISABLE KEYS */;
INSERT INTO "maestro_inscripcion" ("id", "cargo_tipo_id", "formacion_tipo_id", "institucioneducativa_id", "rda_planillas_id", "persona_id", "gestion_tipo_id", "especialidad_tipo_id", "financiamiento_tipo_id", "periodo_tipo_id", "ref", "estadomaestro_id", "rol_tipo_id", "institucioneducativa_sucursal_id", "normalista", "idioma_materno_id", "leeescribebraile", "estudia_idioma_materno_id", "formaciondescripcion", "lugar_tipo", "item_director", "horas", "item", "fecha_registro", "fecha_modificacion", "es_vigente_administrativo", "unidad_militar_tipo_id", "recinto_penitenciario_tipo_id", "educacion_diversa_tipo_id", "asignacion_fecha_inicio", "asignacion_fecha_fin") VALUES
	(20475001, 1, 1, 40730069, '0', 241346, 2019, 0, 1, 1, '0', 1, 9, 605803, 'true', NULL, 'false', 97, NULL, NULL, NULL, NULL, '16408', '2019-01-22', NULL, 'true', NULL, NULL, NULL, '2019-01-01', '2019-12-31');
/*!40000 ALTER TABLE "maestro_inscripcion" ENABLE KEYS */;

-- Volcando estructura para tabla public.persona
DROP TABLE IF EXISTS "persona";
CREATE TABLE IF NOT EXISTS "persona" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''persona_id_seq''::regclass)',
	"idioma_materno_id" INTEGER NOT NULL,
	"genero_tipo_id" INTEGER NOT NULL,
	"sangre_tipo_id" SMALLINT NOT NULL,
	"estadocivil_tipo_id" SMALLINT NOT NULL,
	"carnet" VARCHAR(15) NOT NULL DEFAULT '0',
	"rda" INTEGER NOT NULL DEFAULT '0',
	"libreta_militar" VARCHAR(20) NULL DEFAULT NULL,
	"pasaporte" VARCHAR(45) NULL DEFAULT NULL,
	"paterno" VARCHAR(75) NULL DEFAULT NULL,
	"materno" VARCHAR(75) NULL DEFAULT NULL,
	"nombre" VARCHAR(75) NULL DEFAULT NULL,
	"fecha_nacimiento" DATE NOT NULL,
	"segip_id" SMALLINT NOT NULL DEFAULT '0',
	"complemento" VARCHAR(2) NOT NULL DEFAULT '',
	"activo" BOOLEAN NULL DEFAULT NULL,
	"correo" VARCHAR(40) NULL DEFAULT NULL,
	"foto" VARCHAR(255) NULL DEFAULT NULL,
	"celular" VARCHAR(10) NULL DEFAULT NULL,
	"direccion" VARCHAR(50) NULL DEFAULT NULL,
	"esvigente" BOOLEAN NULL DEFAULT 'false',
	"esvigente_apoderado" SMALLINT NULL DEFAULT NULL,
	"count_edit" SMALLINT NULL DEFAULT NULL,
	"obs_segip" VARCHAR(100) NULL DEFAULT NULL,
	"es_extranjero" BOOLEAN NOT NULL DEFAULT 'false',
	"expedido_id" INTEGER NOT NULL DEFAULT '0',
	"localidad_nac" VARCHAR(150) NULL DEFAULT NULL,
	"pais_tipo_id" SMALLINT NULL DEFAULT NULL,
	PRIMARY KEY ("id"),
	UNIQUE INDEX "uniq_carnet" ("carnet", "complemento"),
	INDEX "fk__pers12ona333" ("carnet", "complemento"),
	INDEX "fk__persona30" ("paterno", "materno", "nombre"),
	INDEX "fk__persona31" ("paterno", "materno", "nombre", "fecha_nacimiento", "carnet"),
	INDEX "fk__persona32" ("paterno", "materno", "nombre", "carnet"),
	INDEX "fk__persona33" ("carnet"),
	INDEX "fk__persona333" ("id"),
	UNIQUE INDEX "uniq_carnet_idx" ("carnet")
);

-- Volcando datos para la tabla public.persona: 0 rows
/*!40000 ALTER TABLE "persona" DISABLE KEYS */;
INSERT INTO "persona" ("id", "idioma_materno_id", "genero_tipo_id", "sangre_tipo_id", "estadocivil_tipo_id", "carnet", "rda", "libreta_militar", "pasaporte", "paterno", "materno", "nombre", "fecha_nacimiento", "segip_id", "complemento", "activo", "correo", "foto", "celular", "direccion", "esvigente", "esvigente_apoderado", "count_edit", "obs_segip", "es_extranjero", "expedido_id", "localidad_nac", "pais_tipo_id") VALUES
	(241346, 48, 1, 7, 1, '4269776', 0, '', '', 'HUAYTA', 'COPA', 'FLAVIO', '1975-09-01', 1, '', 'true', '', '', '', '', 'true', 1, 0, 'sin observacion', 'false', 0, '', 1);
/*!40000 ALTER TABLE "persona" ENABLE KEYS */;

-- Volcando estructura para tabla public.rol_tipo
DROP TABLE IF EXISTS "rol_tipo";
CREATE TABLE IF NOT EXISTS "rol_tipo" (
	"id" SMALLINT NOT NULL,
	"rol" VARCHAR(105) NULL DEFAULT NULL,
	"lugar_nivel_tipo_id" SMALLINT NULL DEFAULT NULL,
	"sub_sistema" CHAR(100) NULL DEFAULT NULL,
	"diminutivo" CHAR(8) NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.rol_tipo: 0 rows
/*!40000 ALTER TABLE "rol_tipo" DISABLE KEYS */;
INSERT INTO "rol_tipo" ("id", "rol", "lugar_nivel_tipo_id", "sub_sistema", "diminutivo") VALUES
	(37, 'Director Distrital de Educación', 7, 'DIP,CER                                                                                             ', 'DDIS    '),
	(9, 'Director (Inst. Educativa)', 0, '*                                                                                                   ', 'DIR     ');
/*!40000 ALTER TABLE "rol_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_emb_estudiante_derechos
DROP TABLE IF EXISTS "uegg_emb_estudiante_derechos";
CREATE TABLE IF NOT EXISTS "uegg_emb_estudiante_derechos" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_emb_estudiante_derechos_id_seq''::regclass)',
	"id_pcpa_unidad_educativa" INTEGER NULL DEFAULT NULL,
	"id_emb_informe_embarazo" INTEGER NULL DEFAULT NULL,
	"cod_rude" VARCHAR(50) NULL DEFAULT NULL,
	"nombres_apellidos" VARCHAR(500) NULL DEFAULT NULL,
	"complemento" VARCHAR(10) NULL DEFAULT NULL,
	"fec_nacimiento" DATE NULL DEFAULT NULL,
	"tiempo_gestacion" INTEGER NOT NULL,
	"numero_embarazos" INTEGER NOT NULL,
	"fec_estimada_parto" DATE NULL DEFAULT NULL,
	"check_recibe_control_prenatal" BOOLEAN NULL DEFAULT NULL,
	"check_requiere_baja_medica" BOOLEAN NULL DEFAULT NULL,
	"check_requiere_permiso_para_control" BOOLEAN NULL DEFAULT NULL,
	"check_requiere_cuidado_especial" BOOLEAN NULL DEFAULT NULL,
	"check_cuenta_con_medidas_ue" BOOLEAN NULL DEFAULT NULL,
	"fec_retorno_a_ue" DATE NULL DEFAULT NULL,
	"check_tutores_al_tanto_emb" BOOLEAN NULL DEFAULT NULL,
	"check_recibe_baja_medica" BOOLEAN NULL DEFAULT NULL,
	"check_recibe_permiso_controles_prenatales" BOOLEAN NULL DEFAULT NULL,
	"fec_ini_baja_prenatal" DATE NULL DEFAULT NULL,
	"fec_fin_baja_postnatal" DATE NULL DEFAULT NULL,
	"persona_asignada_seguimiento" VARCHAR(500) NULL DEFAULT NULL,
	"check_cuenta_con_seguimiento" BOOLEAN NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_emb_estudiante_derechos: 0 rows
/*!40000 ALTER TABLE "uegg_emb_estudiante_derechos" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_emb_estudiante_derechos" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_emb_estudiante_derechos_seg
DROP TABLE IF EXISTS "uegg_emb_estudiante_derechos_seg";
CREATE TABLE IF NOT EXISTS "uegg_emb_estudiante_derechos_seg" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_emb_estudiante_derechos_seg_id_seq''::regclass)',
	"id_pcpa_unidad_educativa" INTEGER NULL DEFAULT NULL,
	"id_emb_informe_embarazo" INTEGER NULL DEFAULT NULL,
	"cod_rude" VARCHAR(50) NULL DEFAULT NULL,
	"nombres_apellidos" VARCHAR(500) NULL DEFAULT NULL,
	"check_emb_relacion_concensuada" BOOLEAN NULL DEFAULT NULL,
	"check_emb_agresion_sexual" BOOLEAN NULL DEFAULT NULL,
	"check_emb_reporte_dna" BOOLEAN NULL DEFAULT NULL,
	"check_emb_violacion_sexual" BOOLEAN NULL DEFAULT NULL,
	"emb_referencia_dna" DATE NULL DEFAULT NULL,
	"check_director_victima_violencia" BOOLEAN NULL DEFAULT NULL,
	"check_emb_director_refiere_dna" BOOLEAN NULL DEFAULT NULL,
	"cod_caso_denuncia" VARCHAR(100) NULL DEFAULT NULL,
	"nombre_adolescente" VARCHAR(500) NULL DEFAULT NULL,
	"fec_denuncia" DATE NULL DEFAULT NULL,
	"motivo_queja" VARCHAR(500) NULL DEFAULT NULL,
	"acciones_a_seguir" VARCHAR(500) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_emb_estudiante_derechos_seg: 0 rows
/*!40000 ALTER TABLE "uegg_emb_estudiante_derechos_seg" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_emb_estudiante_derechos_seg" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_emb_estudiante_embarazo
DROP TABLE IF EXISTS "uegg_emb_estudiante_embarazo";
CREATE TABLE IF NOT EXISTS "uegg_emb_estudiante_embarazo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_emb_estudiante_embarazo_id_seq''::regclass)',
	"id_pcpa_unidad_educativa" INTEGER NULL DEFAULT NULL,
	"id_emb_informe_embarazo" INTEGER NULL DEFAULT NULL,
	"cod_rude" VARCHAR(50) NULL DEFAULT NULL,
	"cedula_identidad" VARCHAR(50) NULL DEFAULT NULL,
	"complemento" VARCHAR(10) NULL DEFAULT NULL,
	"fec_nacimiento" DATE NULL DEFAULT NULL,
	"nombres_estudiante" VARCHAR(255) NULL DEFAULT NULL,
	"apellido_pat_estudiante" VARCHAR(255) NULL DEFAULT NULL,
	"apellido_mat_estudiante" VARCHAR(255) NULL DEFAULT NULL,
	"nivel" VARCHAR(255) NULL DEFAULT NULL,
	"grado" VARCHAR(255) NULL DEFAULT NULL,
	"edad" INTEGER NOT NULL,
	"check_estudiante_discapacidad" BOOLEAN NULL DEFAULT NULL,
	"check_estudiante_casada" BOOLEAN NULL DEFAULT NULL,
	"check_estudiante_conviviente" BOOLEAN NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_emb_estudiante_embarazo: 0 rows
/*!40000 ALTER TABLE "uegg_emb_estudiante_embarazo" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_emb_estudiante_embarazo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_emb_informe_embarazo
DROP TABLE IF EXISTS "uegg_emb_informe_embarazo";
CREATE TABLE IF NOT EXISTS "uegg_emb_informe_embarazo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_emb_informe_embarazo_id_seq''::regclass)',
	"id_pcpa_unidad_educativa" INTEGER NULL DEFAULT NULL,
	"id_emb_reporte_embarazo_tipo_1" INTEGER NULL DEFAULT NULL,
	"id_emb_reporte_embarazo_tipo_2" INTEGER NULL DEFAULT NULL,
	"id_emb_reporte_embarazo_tipo_3" INTEGER NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_emb_informe_embarazo: 0 rows
/*!40000 ALTER TABLE "uegg_emb_informe_embarazo" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_emb_informe_embarazo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_emb_reporte_embarazo_tipo
DROP TABLE IF EXISTS "uegg_emb_reporte_embarazo_tipo";
CREATE TABLE IF NOT EXISTS "uegg_emb_reporte_embarazo_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_emb_reporte_embarazo_tipo_id_seq''::regclass)',
	"cod_reporte" VARCHAR(100) NULL DEFAULT NULL,
	"desc_reporte" VARCHAR(500) NULL DEFAULT NULL,
	"orden" INTEGER NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_emb_reporte_embarazo_tipo: 9 rows
/*!40000 ALTER TABLE "uegg_emb_reporte_embarazo_tipo" DISABLE KEYS */;
INSERT INTO "uegg_emb_reporte_embarazo_tipo" ("id", "cod_reporte", "desc_reporte", "orden", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'EE', 'ESTUDIANTE EMBARAZADA', 1, 'T', NULL, NULL, NULL, NULL),
	(2, 'PEE', 'PAREJA DE LA ESTUDIANTE EMBARAZADA', 2, 'T', NULL, NULL, NULL, NULL),
	(3, 'TF', 'TUTORES /FAMILIA DE LA ESTUDIANTE EMBARAZADA', 3, 'T', NULL, NULL, NULL, NULL),
	(4, 'OE', 'OTRO/A ESTUDIANTE', 4, 'T', NULL, NULL, NULL, NULL),
	(5, 'M', 'MAESTRO/MAESTRA', 5, 'T', NULL, NULL, NULL, NULL),
	(6, 'PA', 'PERSONAL ADMINISTRATIVO', 6, 'T', NULL, NULL, NULL, NULL),
	(7, 'D', 'DIRECTOR/DIRECTORA', 7, 'T', NULL, NULL, NULL, NULL),
	(8, 'ISP', 'ISTITUCIÓN DEL SISTEMA DE PROTECCIÓN (DNA)', 8, 'T', NULL, NULL, NULL, NULL),
	(9, 'O', 'OTRO', 9, 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_emb_reporte_embarazo_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_pcpa_accciones_ejecucion
DROP TABLE IF EXISTS "uegg_pcpa_accciones_ejecucion";
CREATE TABLE IF NOT EXISTS "uegg_pcpa_accciones_ejecucion" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_pcpa_accciones_ejecucion_id_seq''::regclass)',
	"id_pcpa_construccion" INTEGER NULL DEFAULT NULL,
	"cantidad_acciones_inicial" INTEGER NULL DEFAULT NULL,
	"cantidad_acciones_final" INTEGER NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_pcpa_accciones_ejecucion: 0 rows
/*!40000 ALTER TABLE "uegg_pcpa_accciones_ejecucion" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_pcpa_accciones_ejecucion" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_pcpa_actividades_ejecutadas
DROP TABLE IF EXISTS "uegg_pcpa_actividades_ejecutadas";
CREATE TABLE IF NOT EXISTS "uegg_pcpa_actividades_ejecutadas" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_pcpa_actividades_ejecutadas_id_seq''::regclass)',
	"id_pcpa_construccion" INTEGER NULL DEFAULT NULL,
	"id_pcpa_actividades_tipo" INTEGER NULL DEFAULT NULL,
	"cod_actividad" VARCHAR(100) NULL DEFAULT NULL,
	"desc_actividad" VARCHAR(500) NULL DEFAULT NULL,
	"fec_actividad" DATE NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_pcpa_actividades_ejecutadas: 0 rows
/*!40000 ALTER TABLE "uegg_pcpa_actividades_ejecutadas" DISABLE KEYS */;
INSERT INTO "uegg_pcpa_actividades_ejecutadas" ("id", "id_pcpa_construccion", "id_pcpa_actividades_tipo", "cod_actividad", "desc_actividad", "fec_actividad", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 8, 2, '2', 'Medios de comunicación interna', '2024-01-04', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(2, 8, 2, '2', 'Medios de comunicación interna', '2024-01-05', 'ACTIVO', '1', NULL, '2024-09-20', NULL);
/*!40000 ALTER TABLE "uegg_pcpa_actividades_ejecutadas" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_pcpa_actividades_promocion
DROP TABLE IF EXISTS "uegg_pcpa_actividades_promocion";
CREATE TABLE IF NOT EXISTS "uegg_pcpa_actividades_promocion" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_pcpa_actividades_promocion_id_seq''::regclass)',
	"id_pcpa_construccion" INTEGER NULL DEFAULT NULL,
	"id_pcpa_actividades_tipo" INTEGER NULL DEFAULT NULL,
	"nivel" INTEGER NULL DEFAULT NULL,
	"fec_aprobacion" DATE NULL DEFAULT NULL,
	"tiempo_vigencia" INTEGER NULL DEFAULT NULL,
	"declaracion_jurada" BOOLEAN NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_pcpa_actividades_promocion: 0 rows
/*!40000 ALTER TABLE "uegg_pcpa_actividades_promocion" DISABLE KEYS */;
INSERT INTO "uegg_pcpa_actividades_promocion" ("id", "id_pcpa_construccion", "id_pcpa_actividades_tipo", "nivel", "fec_aprobacion", "tiempo_vigencia", "declaracion_jurada", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, NULL, 2, 1, NULL, 0, 'true', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(2, NULL, 1, 1, NULL, 0, 'true', 'ACTIVO', '1', NULL, '2024-09-20', NULL);
/*!40000 ALTER TABLE "uegg_pcpa_actividades_promocion" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_pcpa_actividades_tipo
DROP TABLE IF EXISTS "uegg_pcpa_actividades_tipo";
CREATE TABLE IF NOT EXISTS "uegg_pcpa_actividades_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_pcpa_actividades_tipo_id_seq''::regclass)',
	"cod_actividad" VARCHAR(100) NULL DEFAULT NULL,
	"desc_actividad" VARCHAR(500) NULL DEFAULT NULL,
	"check_actividad_tipo" BOOLEAN NULL DEFAULT NULL,
	"orden" INTEGER NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_pcpa_actividades_tipo: 10 rows
/*!40000 ALTER TABLE "uegg_pcpa_actividades_tipo" DISABLE KEYS */;
INSERT INTO "uegg_pcpa_actividades_tipo" ("id", "cod_actividad", "desc_actividad", "check_actividad_tipo", "orden", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'DB', 'DERECHOS Y DEBERES', 'true', 1, 'T', NULL, NULL, NULL, NULL),
	(2, 'NC', 'NORMAS DE CONDUCTA', 'true', 2, 'T', NULL, NULL, NULL, NULL),
	(3, 'PD', 'PROCEDIMIENTOS DISCIPLINARIOS', 'true', 3, 'T', NULL, NULL, NULL, NULL),
	(8, 'PTC', 'PROGRAMACIÓN DE TALLERES DE CAPACITACIÓN', 'true', 8, 'T', NULL, NULL, NULL, NULL),
	(9, 'APC', 'ACTIVIDADES PARA PROMOVER LA CONVIVENCIA PACÍFICA', 'true', 9, 'T', NULL, NULL, NULL, NULL),
	(10, 'PSE', 'PLAN DE SEGUIMIENTO Y EVALUACIÓN', 'true', 10, 'T', NULL, NULL, NULL, NULL),
	(4, 'S', 'SANCIONES', 'false', 4, 'T', NULL, NULL, NULL, NULL),
	(5, 'PADD', 'PROCEDIMIENTO MARCO PARA LA ADOPCIÓN DE DECISIONES DESCIPLINARIAS', 'false', 5, 'T', NULL, NULL, NULL, NULL),
	(6, 'PAS', 'PROCEDIMIENTOS ALTERNATIVOS PARA LA SOLUCIÓN DE CONFLICTOS', 'false', 6, 'T', NULL, NULL, NULL, NULL),
	(7, 'LRI', 'LINEAMIENTOS PARA LA REMISIÓN DE INFORMES SOBRE CASOS DE VIOLENCIA', 'false', 7, 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_pcpa_actividades_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_pcpa_actividades_tipo_det
DROP TABLE IF EXISTS "uegg_pcpa_actividades_tipo_det";
CREATE TABLE IF NOT EXISTS "uegg_pcpa_actividades_tipo_det" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_pcpa_actividades_tipo_det_id_seq''::regclass)',
	"id_pcpa_actividades_tipo" INTEGER NULL DEFAULT NULL,
	"cod_actividad" VARCHAR(100) NULL DEFAULT NULL,
	"desc_actividad" VARCHAR(500) NULL DEFAULT NULL,
	"check_actividad_tipo_det" BOOLEAN NULL DEFAULT NULL,
	"orden" INTEGER NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_pcpa_actividades_tipo_det: 13 rows
/*!40000 ALTER TABLE "uegg_pcpa_actividades_tipo_det" DISABLE KEYS */;
INSERT INTO "uegg_pcpa_actividades_tipo_det" ("id", "id_pcpa_actividades_tipo", "cod_actividad", "desc_actividad", "check_actividad_tipo_det", "orden", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 9, 'MS', 'MOVILIZACIÓN SOCIAL', 'true', 1, 'T', NULL, NULL, NULL, NULL),
	(2, 9, 'FDHP', 'FOMENTO AL DESARROLLO DE HABILIDADES Y PRÁCTICA DE VALORES', 'true', 2, 'T', NULL, NULL, NULL, NULL),
	(3, 9, 'C', 'CAPACITACIÓN', 'true', 3, 'T', NULL, NULL, NULL, NULL),
	(4, 9, 'MSI', 'MEDIDAS DE SEGURIDAD EN LA INFRAESTRUCTURA', 'true', 4, 'T', NULL, NULL, NULL, NULL),
	(5, 9, 'NCUE', 'NORMAS DE CONVIVENCIA EN LA UNIDAD EDUCATIVA', 'true', 5, 'T', NULL, NULL, NULL, NULL),
	(6, 9, 'PPE', 'PROMOCIÓN DE LA PARTICIPACIÓN DE LAS Y LOS ESTUDIANTES', 'true', 6, 'T', NULL, NULL, NULL, NULL),
	(7, 9, 'GACU', 'GESTIÓN Y ARTICULACIÓN CON LA COMUNIDAD EDUCATIVA', 'true', 7, 'T', NULL, NULL, NULL, NULL),
	(8, 9, 'AC', 'ACCIÓN COMUNAL', 'true', 8, 'T', NULL, NULL, NULL, NULL),
	(9, 9, 'ARRUE', 'ACCIONES PARA LA REDUCCIÓN DE RIESGOS EN EL CONTEXTO Y EN LA UNIDAD EDUCATIVA', 'true', 9, 'T', NULL, NULL, NULL, NULL),
	(10, 3, 'S', 'CORRECTIVOS PEDAGÓGICOS', 'true', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 3, 'PADD', 'PROCEDIMIENTO MARCO PARA LA ADOPCIÓN DE DECISIONES DESCIPLINARIAS', 'true', NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 3, 'PAS', 'PROCEDIMIENTOS ALTERNATIVOS PARA LA SOLUCIÓN DE CONFLICTOS', 'true', NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 3, 'LRI', 'LINEAMIENTOS PARA LA REMISIÓN DE INFORMES SOBRE CASOS DE VIOLENCIA', 'true', NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_pcpa_actividades_tipo_det" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_pcpa_comision_tipo
DROP TABLE IF EXISTS "uegg_pcpa_comision_tipo";
CREATE TABLE IF NOT EXISTS "uegg_pcpa_comision_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_pcpa_comision_tipo_id_seq''::regclass)',
	"cod_comision_tipo" VARCHAR(100) NULL DEFAULT NULL,
	"desc_comision_tipo" VARCHAR(500) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_pcpa_comision_tipo: 4 rows
/*!40000 ALTER TABLE "uegg_pcpa_comision_tipo" DISABLE KEYS */;
INSERT INTO "uegg_pcpa_comision_tipo" ("id", "cod_comision_tipo", "desc_comision_tipo", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'C', 'CONTRUCCIÓN', 'T', NULL, NULL, NULL, NULL),
	(2, 'A', 'APROBACIÓN', 'T', NULL, NULL, NULL, NULL),
	(3, 'S', 'SOCIALIZACIÓN', 'T', NULL, NULL, NULL, NULL),
	(4, 'I', 'IMPLEMENTACIÓN', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_pcpa_comision_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_pcpa_construccion
DROP TABLE IF EXISTS "uegg_pcpa_construccion";
CREATE TABLE IF NOT EXISTS "uegg_pcpa_construccion" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_pcpa_construccion_id_seq''::regclass)',
	"id_pcpa_unidad_educativa" INTEGER NULL DEFAULT NULL,
	"fecha_registro" TIMESTAMP NULL DEFAULT NULL,
	"check_diagnostico_pcpa" BOOLEAN NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_pcpa_construccion: 2 rows
/*!40000 ALTER TABLE "uegg_pcpa_construccion" DISABLE KEYS */;
INSERT INTO "uegg_pcpa_construccion" ("id", "id_pcpa_unidad_educativa", "fecha_registro", "check_diagnostico_pcpa", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 1, NULL, 'true', 'A', NULL, NULL, NULL, NULL),
	(2, 2, '2024-01-01 00:00:00', 'true', 'A', NULL, NULL, NULL, NULL),
	(3, 10, NULL, 'true', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(4, 11, NULL, 'true', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(5, 12, NULL, 'true', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(6, 13, NULL, 'true', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(7, 14, NULL, 'true', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(8, 15, NULL, 'true', 'ACTIVO', '1', NULL, '2024-09-20', NULL);
/*!40000 ALTER TABLE "uegg_pcpa_construccion" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_pcpa_indicadores_ejecucion
DROP TABLE IF EXISTS "uegg_pcpa_indicadores_ejecucion";
CREATE TABLE IF NOT EXISTS "uegg_pcpa_indicadores_ejecucion" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_pcpa_indicadores_ejecucion_id_seq''::regclass)',
	"id_pcpa_indicadores_tipo" INTEGER NULL DEFAULT NULL,
	"id_pcpa_construccion" INTEGER NULL DEFAULT NULL,
	"cod_indicadores" VARCHAR(100) NULL DEFAULT NULL,
	"desc_indicadores" VARCHAR(500) NULL DEFAULT NULL,
	"fec_ejecucion" DATE NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_pcpa_indicadores_ejecucion: 0 rows
/*!40000 ALTER TABLE "uegg_pcpa_indicadores_ejecucion" DISABLE KEYS */;
INSERT INTO "uegg_pcpa_indicadores_ejecucion" ("id", "id_pcpa_indicadores_tipo", "id_pcpa_construccion", "cod_indicadores", "desc_indicadores", "fec_ejecucion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 2, 3, 'PUDPA', 'PORCENTAJE DE UNIDADES EDUCATIVAS DEL SUBSISTEMA DE EDUCACIÓN REGULAR QUE HAN DESARROLLADO PCPA CON LA PARTICIPACIÓN DE TODOS LOS ACTORES DE LA COMUNIDAD', '2021-01-01', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(2, 4, 3, 'PUI', 'PORCENTAJE DE UNIDADES EDUCATIVAS DEL SUBSISTEMA DE EDUCACIÓN REGULAR QUE HAN IMPLEMENTADO UN 80% O MÁS DE LAS ACCIONES PREVISTAS EN EL PCPA', '2021-01-01', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(3, 2, 3, 'PUDPA', 'PORCENTAJE DE UNIDADES EDUCATIVAS DEL SUBSISTEMA DE EDUCACIÓN REGULAR QUE HAN DESARROLLADO PCPA CON LA PARTICIPACIÓN DE TODOS LOS ACTORES DE LA COMUNIDAD', '2021-01-01', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(4, 2, 3, 'PUDPA', 'PORCENTAJE DE UNIDADES EDUCATIVAS DEL SUBSISTEMA DE EDUCACIÓN REGULAR QUE HAN DESARROLLADO PCPA CON LA PARTICIPACIÓN DE TODOS LOS ACTORES DE LA COMUNIDAD', '2025-01-05', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(5, 2, 3, 'PUDPA', 'PORCENTAJE DE UNIDADES EDUCATIVAS DEL SUBSISTEMA DE EDUCACIÓN REGULAR QUE HAN DESARROLLADO PCPA CON LA PARTICIPACIÓN DE TODOS LOS ACTORES DE LA COMUNIDAD', '2025-01-05', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(6, 2, 3, 'PUDPA', 'PORCENTAJE DE UNIDADES EDUCATIVAS DEL SUBSISTEMA DE EDUCACIÓN REGULAR QUE HAN DESARROLLADO PCPA CON LA PARTICIPACIÓN DE TODOS LOS ACTORES DE LA COMUNIDAD', '2025-01-05', 'ACTIVO', '1', NULL, '2024-09-20', NULL);
/*!40000 ALTER TABLE "uegg_pcpa_indicadores_ejecucion" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_pcpa_indicadores_tipo
DROP TABLE IF EXISTS "uegg_pcpa_indicadores_tipo";
CREATE TABLE IF NOT EXISTS "uegg_pcpa_indicadores_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_pcpa_indicadores_tipo_id_seq''::regclass)',
	"cod_indicadores" VARCHAR(100) NULL DEFAULT NULL,
	"desc_indicadores" VARCHAR(500) NULL DEFAULT NULL,
	"orden" INTEGER NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_pcpa_indicadores_tipo: 4 rows
/*!40000 ALTER TABLE "uegg_pcpa_indicadores_tipo" DISABLE KEYS */;
INSERT INTO "uegg_pcpa_indicadores_tipo" ("id", "cod_indicadores", "desc_indicadores", "orden", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'PUD', 'PORCENTAJE DE UNIDADES EDUCATIVAS  DEL SUBSISTEMA DE EDUCACIÓN REGULAR QUE HAN DESARROLLADO UN PCPA', 1, 'T', NULL, NULL, NULL, NULL),
	(2, 'PUDPA', 'PORCENTAJE DE UNIDADES EDUCATIVAS DEL SUBSISTEMA DE EDUCACIÓN REGULAR QUE HAN DESARROLLADO PCPA CON LA PARTICIPACIÓN DE TODOS LOS ACTORES DE LA COMUNIDAD', 2, 'T', NULL, NULL, NULL, NULL),
	(3, 'PUS', 'PORCENTAJE DE UNIDADES EDUCATIVAS DEL SUBSISTEMA DE EDUCACIÓN REGULAR QUE HAN SOCIALIZADO EL PCPA', 3, 'T', NULL, NULL, NULL, NULL),
	(4, 'PUI', 'PORCENTAJE DE UNIDADES EDUCATIVAS DEL SUBSISTEMA DE EDUCACIÓN REGULAR QUE HAN IMPLEMENTADO UN 80% O MÁS DE LAS ACCIONES PREVISTAS EN EL PCPA', 4, 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_pcpa_indicadores_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_pcpa_miembro_comision
DROP TABLE IF EXISTS "uegg_pcpa_miembro_comision";
CREATE TABLE IF NOT EXISTS "uegg_pcpa_miembro_comision" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_pcpa_miembro_comision_id_seq''::regclass)',
	"id_pcpa_construccion" INTEGER NULL DEFAULT NULL,
	"id_pcpa_comision_tipo" INTEGER NULL DEFAULT NULL,
	"id_pcpa_miembro_tipo" INTEGER NULL DEFAULT NULL,
	"orden" INTEGER NULL DEFAULT NULL,
	"nombres_miembro" VARCHAR(255) NULL DEFAULT NULL,
	"apellidos_miembro" VARCHAR(255) NULL DEFAULT NULL,
	"check_miembro_comision" BOOLEAN NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_pcpa_miembro_comision: 17 rows
/*!40000 ALTER TABLE "uegg_pcpa_miembro_comision" DISABLE KEYS */;
INSERT INTO "uegg_pcpa_miembro_comision" ("id", "id_pcpa_construccion", "id_pcpa_comision_tipo", "id_pcpa_miembro_tipo", "orden", "nombres_miembro", "apellidos_miembro", "check_miembro_comision", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 1, 1, 1, NULL, 'Jose', 'Perez', 'true', 'A', NULL, NULL, NULL, NULL),
	(2, 1, 1, 2, NULL, 'Juan', 'Mariaca', 'true', 'A', NULL, NULL, NULL, NULL),
	(3, 1, 2, 1, NULL, 'Mario', 'Jerez', 'true', 'A', NULL, NULL, NULL, NULL),
	(4, 1, 1, 3, NULL, 'Pablo', 'Marcial', 'true', 'A', NULL, NULL, NULL, NULL),
	(5, 1, 2, 2, NULL, 'Miguel', 'Prado', 'true', 'A', NULL, NULL, NULL, NULL),
	(6, 1, 2, 3, NULL, 'Jose', 'Quispe', 'true', 'A', NULL, NULL, NULL, NULL),
	(7, 1, 1, 1, NULL, 'Rosa', 'Alvarez', 'true', 'A', NULL, NULL, NULL, NULL),
	(8, 1, 2, 4, NULL, 'Patricia', 'Torrez', 'true', 'A', NULL, NULL, NULL, NULL),
	(9, 1, 2, 5, NULL, 'Manuel', 'Hernani', 'true', 'A', NULL, NULL, NULL, NULL),
	(10, 1, 3, 1, NULL, 'Manuel', 'Quispe', 'true', 'A', NULL, NULL, NULL, NULL),
	(11, 1, 3, 2, NULL, 'Pablo', 'Perez', 'true', 'A', NULL, NULL, NULL, NULL),
	(12, 1, 3, 3, NULL, 'Jorge', 'Rivera', 'true', 'A', NULL, NULL, NULL, NULL),
	(13, 1, 3, 4, NULL, 'Norah', 'Marin', 'true', 'A', NULL, NULL, NULL, NULL),
	(14, 1, 3, 5, NULL, 'Marco', 'Hernani', 'true', 'A', NULL, NULL, NULL, NULL),
	(15, 2, 1, 1, NULL, 'pepito', 'perez', 'true', 'A', NULL, NULL, NULL, NULL),
	(16, 2, 1, 2, NULL, 'juan ', 'perez', 'true', 'A', NULL, NULL, NULL, NULL),
	(17, 2, 1, 4, NULL, 'juan', 'marin', NULL, NULL, NULL, NULL, NULL, NULL),
	(18, 8, 1, 1, 1, '465456', '465456', 'true', 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(19, 8, 1, 2, 1, '546545', '546545', 'true', 'ACTIVO', '1', NULL, '2024-09-20', NULL);
/*!40000 ALTER TABLE "uegg_pcpa_miembro_comision" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_pcpa_miembro_tipo
DROP TABLE IF EXISTS "uegg_pcpa_miembro_tipo";
CREATE TABLE IF NOT EXISTS "uegg_pcpa_miembro_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_pcpa_miembro_tipo_id_seq''::regclass)',
	"cod_miembro_tipo" VARCHAR(100) NULL DEFAULT NULL,
	"desc_miembro_tipo" VARCHAR(500) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_pcpa_miembro_tipo: 5 rows
/*!40000 ALTER TABLE "uegg_pcpa_miembro_tipo" DISABLE KEYS */;
INSERT INTO "uegg_pcpa_miembro_tipo" ("id", "cod_miembro_tipo", "desc_miembro_tipo", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'PF', 'ESTUDIANTE', 'T', NULL, NULL, NULL, NULL),
	(2, 'PF', 'DIRECTOR', 'T', NULL, NULL, NULL, NULL),
	(3, 'PF', 'MAESTROS/AS', 'T', NULL, NULL, NULL, NULL),
	(4, 'PF', 'PADRES/MADRES DE FAMILIA', 'T', NULL, NULL, NULL, NULL),
	(5, 'O', 'OTRO', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_pcpa_miembro_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_pcpa_unidad_educativa
DROP TABLE IF EXISTS "uegg_pcpa_unidad_educativa";
CREATE TABLE IF NOT EXISTS "uegg_pcpa_unidad_educativa" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_pcpa_unidad_educativa_id_seq''::regclass)',
	"cod_ue" INTEGER NULL DEFAULT NULL,
	"desc_ue" VARCHAR(100) NULL DEFAULT NULL,
	"cod_sie" INTEGER NULL DEFAULT NULL,
	"cod_rda_director" VARCHAR(100) NULL DEFAULT NULL,
	"cod_director" VARCHAR(100) NULL DEFAULT NULL,
	"nombres_director" VARCHAR(255) NULL DEFAULT NULL,
	"apellidos_director" VARCHAR(255) NULL DEFAULT NULL,
	"cod_departamento" VARCHAR(100) NULL DEFAULT NULL,
	"desc_departamento" VARCHAR(500) NULL DEFAULT NULL,
	"cod_municipio" VARCHAR(100) NULL DEFAULT NULL,
	"desc_municipio" VARCHAR(500) NULL DEFAULT NULL,
	"cod_nivel" VARCHAR(100) NULL DEFAULT NULL,
	"desc_nivel" VARCHAR(500) NULL DEFAULT NULL,
	"modalidad" VARCHAR(100) NULL DEFAULT NULL,
	"latitud" INTEGER NULL DEFAULT NULL,
	"longitud" INTEGER NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_pcpa_unidad_educativa: 9 rows
/*!40000 ALTER TABLE "uegg_pcpa_unidad_educativa" DISABLE KEYS */;
INSERT INTO "uegg_pcpa_unidad_educativa" ("id", "cod_ue", "desc_ue", "cod_sie", "cod_rda_director", "cod_director", "nombres_director", "apellidos_director", "cod_departamento", "desc_departamento", "cod_municipio", "desc_municipio", "cod_nivel", "desc_nivel", "modalidad", "latitud", "longitud", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 1212, 'unidad uno', 123, '1234', '12345', 'pepito perez', 'perez', '1', 'la paz', '1', 'sds', '1', 'lñ', 'we', 1212, 1212, '1', NULL, NULL, NULL, NULL),
	(2, 1212, 'unidad dos', 123, '1234', '12345', 'pepito perez', 'perez', '1', 'la paz', '1', 'sds', '1', 'lñ', 'we', 1212, 1212, '1', NULL, NULL, NULL, NULL),
	(3, 1212, 'unidad tres', 123, '1234', '12345', 'pepito perez', 'perez', '1', 'la paz', '1', 'sds', '1', 'lñ', 'we', 1212, 1212, '1', NULL, NULL, NULL, NULL),
	(4, 1212, 'unidad cuatro', 123, '1234', '12345', 'pepito perez', 'perez', '1', 'la paz', '1', 'sds', '1', 'lñ', 'we', 1212, 1212, '1', NULL, NULL, NULL, NULL),
	(5, 1212, 'unidad cinco', 123, '1234', '12345', 'pepito perez', 'perez', '1', 'la paz', '1', 'sds', '1', 'lñ', 'we', 1212, 1212, '1', NULL, NULL, NULL, NULL),
	(6, 1212, 'unidad seis', 123, '1234', '12345', 'pepito perez', 'perez', '1', 'la paz', '1', 'sds', '1', 'lñ', 'we', 1212, 1212, '1', NULL, NULL, NULL, NULL),
	(7, 1212, 'unidad siete', 123, '1234', '12345', 'pepito perez', 'perez', '1', 'la paz', '1', 'sds', '1', 'lñ', 'we', 1212, 1212, '1', NULL, NULL, NULL, NULL),
	(8, 1212, 'unidad ocho', 123, '1234', '12345', 'pepito perez', 'perez', '1', 'la paz', '1', 'sds', '1', 'lñ', 'we', 1212, 1212, '1', NULL, NULL, NULL, NULL),
	(9, 1212, 'unidad nueve', 123, '1234', '12345', 'pepito perez', 'perez', '1', 'la paz', '1', 'sds', '1', 'lñ', 'we', 1212, 1212, '1', NULL, NULL, NULL, NULL),
	(10, 40730069, '', 40730069, NULL, NULL, '', '', '1', 'Chuquisaca', '1', 'Sucre', '13', 'Secundaria', 'Presencial', NULL, NULL, 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(11, 40730069, '', 40730069, NULL, NULL, '', '', '1', 'Chuquisaca', '1', 'Sucre', '13', 'Secundaria', 'Presencial', NULL, NULL, 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(12, 40730069, '', 40730069, NULL, NULL, '', '', '1', 'Chuquisaca', '1', 'Sucre', '13', 'Secundaria', 'Presencial', NULL, NULL, 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(13, 40730069, '', 40730069, NULL, NULL, '', '', '1', 'Chuquisaca', '1', 'Sucre', '13', 'Secundaria', 'Presencial', NULL, NULL, 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(14, 40730069, '', 40730069, NULL, NULL, '', '', '1', 'Chuquisaca', '1', 'Sucre', '13', 'Secundaria', 'Presencial', NULL, NULL, 'ACTIVO', '1', NULL, '2024-09-20', NULL),
	(15, 40730069, 'huh', 40730069, NULL, NULL, 'nkjnjkn', 'nkjnjkn', '1', 'Chuquisaca', '1', 'Sucre', '13', 'Secundaria', 'Presencial', NULL, NULL, 'ACTIVO', '1', NULL, '2024-09-20', NULL);
/*!40000 ALTER TABLE "uegg_pcpa_unidad_educativa" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_acciones_tipo
DROP TABLE IF EXISTS "uegg_violencia_acciones_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_acciones_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_acciones_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_acciones_tipo: 3 rows
/*!40000 ALTER TABLE "uegg_violencia_acciones_tipo" DISABLE KEYS */;
INSERT INTO "uegg_violencia_acciones_tipo" ("id", "descripcion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'REFERENCIA DEL CASO', 'T', NULL, NULL, NULL, NULL),
	(2, 'DENUNCUA DEL CASO', 'T', NULL, NULL, NULL, NULL),
	(3, 'COMUNICACIÓN A LA DD', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_violencia_acciones_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_agresor
DROP TABLE IF EXISTS "uegg_violencia_agresor";
CREATE TABLE IF NOT EXISTS "uegg_violencia_agresor" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_agresor_id_seq''::regclass)',
	"id_violencia_caso_agresor" INTEGER NULL DEFAULT NULL,
	"cod_rda" INTEGER NULL DEFAULT NULL,
	"num_ci" INTEGER NULL DEFAULT NULL,
	"num_comp" VARCHAR(100) NULL DEFAULT NULL,
	"apellido_pat_agresor" VARCHAR(250) NULL DEFAULT NULL,
	"apellido_mat_agresor" VARCHAR(250) NULL DEFAULT NULL,
	"nombres_agresor" VARCHAR(250) NULL DEFAULT NULL,
	"fec_nac" DATE NULL DEFAULT NULL,
	"sexo" VARCHAR(100) NULL DEFAULT NULL,
	"genero" VARCHAR(100) NULL DEFAULT NULL,
	"cargo_ocupa" VARCHAR(150) NULL DEFAULT NULL,
	"nivel" VARCHAR(100) NULL DEFAULT NULL,
	"dir_actual" VARCHAR(250) NULL DEFAULT NULL,
	"celular_contacto" VARCHAR(100) NULL DEFAULT NULL,
	"correo_electronico" VARCHAR(100) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_agresor: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_agresor" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_agresor" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_auto_final_tipo
DROP TABLE IF EXISTS "uegg_violencia_auto_final_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_auto_final_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_auto_final_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_auto_final_tipo: 3 rows
/*!40000 ALTER TABLE "uegg_violencia_auto_final_tipo" DISABLE KEYS */;
INSERT INTO "uegg_violencia_auto_final_tipo" ("id", "descripcion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'RESOLUCIÓN FINAL', 'T', NULL, NULL, NULL, NULL),
	(2, 'NOTIFICACIÓN DE RESOLUCIÓN', 'T', NULL, NULL, NULL, NULL),
	(3, 'EJECUTORIA', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_violencia_auto_final_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_auto_inicial_tipo
DROP TABLE IF EXISTS "uegg_violencia_auto_inicial_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_auto_inicial_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_auto_inicial_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_auto_inicial_tipo: 3 rows
/*!40000 ALTER TABLE "uegg_violencia_auto_inicial_tipo" DISABLE KEYS */;
INSERT INTO "uegg_violencia_auto_inicial_tipo" ("id", "descripcion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'AUTO DE INICIO', 'T', NULL, NULL, NULL, NULL),
	(2, 'NOTIFICACIÓN CON EL AUTO DE INICIO', 'T', NULL, NULL, NULL, NULL),
	(3, 'CLAUSURA DE ETAPA PROBATORIA', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_violencia_auto_inicial_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_caso_agresor
DROP TABLE IF EXISTS "uegg_violencia_caso_agresor";
CREATE TABLE IF NOT EXISTS "uegg_violencia_caso_agresor" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_caso_agresor_id_seq''::regclass)',
	"num_caso" INTEGER NULL DEFAULT NULL,
	"fec_agresion" DATE NULL DEFAULT NULL,
	"num_agresores" INTEGER NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_caso_agresor: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_caso_agresor" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_caso_agresor" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_caso_com
DROP TABLE IF EXISTS "uegg_violencia_caso_com";
CREATE TABLE IF NOT EXISTS "uegg_violencia_caso_com" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_caso_com_id_seq''::regclass)',
	"id_violencia_caso_agresor" INTEGER NULL DEFAULT NULL,
	"comunicacion_tutores" BOOLEAN NULL DEFAULT NULL,
	"nombre_tutores" VARCHAR(100) NULL DEFAULT NULL,
	"fec_com" DATE NULL DEFAULT NULL,
	"desc_hecho" VARCHAR(200) NULL DEFAULT NULL,
	"violencia_fis" BOOLEAN NULL DEFAULT NULL,
	"violencia_val_fis" VARCHAR NULL DEFAULT NULL,
	"desc_hecho_fis" VARCHAR(200) NULL DEFAULT NULL,
	"violencia_psico" BOOLEAN NULL DEFAULT NULL,
	"violencia_val_psico" VARCHAR NULL DEFAULT NULL,
	"desc_hecho_psico" VARCHAR(200) NULL DEFAULT NULL,
	"violencia_sexual" BOOLEAN NULL DEFAULT NULL,
	"violencia_val_sexual" VARCHAR NULL DEFAULT NULL,
	"desc_hecho_sexual" VARCHAR(200) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_caso_com: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_caso_com" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_caso_com" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_caso_dna
DROP TABLE IF EXISTS "uegg_violencia_caso_dna";
CREATE TABLE IF NOT EXISTS "uegg_violencia_caso_dna" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_caso_dna_id_seq''::regclass)',
	"id_num_caso" INTEGER NULL DEFAULT NULL,
	"id_violencia_victima" INTEGER NULL DEFAULT NULL,
	"id_violencia_agresor_nombre" INTEGER NULL DEFAULT NULL,
	"id_violencia_hecho_tipo" INTEGER NULL DEFAULT NULL,
	"desc_hecho" VARCHAR(250) NULL DEFAULT NULL,
	"recepcion_ficha" BOOLEAN NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_caso_dna: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_caso_dna" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_caso_dna" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_com_dist
DROP TABLE IF EXISTS "uegg_violencia_com_dist";
CREATE TABLE IF NOT EXISTS "uegg_violencia_com_dist" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_com_dist_id_seq''::regclass)',
	"id_num_caso" INTEGER NULL DEFAULT NULL,
	"fec_comunicacion" DATE NULL DEFAULT NULL,
	"id_violencia_caso" INTEGER NULL DEFAULT NULL,
	"id_violencia_victima_nombre" INTEGER NULL DEFAULT NULL,
	"id_violencia_agresor_nombre" INTEGER NULL DEFAULT NULL,
	"id_acciones_realizadas_tipo" INTEGER NULL DEFAULT NULL,
	"id_violencia_instancia_tipo" INTEGER NULL DEFAULT NULL,
	"fec_comunicacion_distrital" DATE NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_com_dist: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_com_dist" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_com_dist" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_com_dptal
DROP TABLE IF EXISTS "uegg_violencia_com_dptal";
CREATE TABLE IF NOT EXISTS "uegg_violencia_com_dptal" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_com_dptal_id_seq''::regclass)',
	"id_num_caso" INTEGER NULL DEFAULT NULL,
	"fec_comunicacion" DATE NULL DEFAULT NULL,
	"id_violencia_caso" INTEGER NULL DEFAULT NULL,
	"id_violencia_victima_nombre" INTEGER NULL DEFAULT NULL,
	"id_violencia_agresor_nombre" INTEGER NULL DEFAULT NULL,
	"id_acciones_realizadas_tipo" INTEGER NULL DEFAULT NULL,
	"id_violencia_instancia_tipo" INTEGER NULL DEFAULT NULL,
	"fec_comunicacion_deptal" DATE NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_com_dptal: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_com_dptal" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_com_dptal" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_dna
DROP TABLE IF EXISTS "uegg_violencia_dna";
CREATE TABLE IF NOT EXISTS "uegg_violencia_dna" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_dna_id_seq''::regclass)',
	"id_num_caso" INTEGER NULL DEFAULT NULL,
	"fec_agresion" DATE NULL DEFAULT NULL,
	"ref_den" VARCHAR(100) NULL DEFAULT NULL,
	"fec_ref_den" DATE NULL DEFAULT NULL,
	"id_violencia_instancia_den_tipo" VARCHAR(100) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_dna: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_dna" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_dna" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_etapa_preliminar_tipo
DROP TABLE IF EXISTS "uegg_violencia_etapa_preliminar_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_etapa_preliminar_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_etapa_preliminar_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_etapa_preliminar_tipo: 5 rows
/*!40000 ALTER TABLE "uegg_violencia_etapa_preliminar_tipo" DISABLE KEYS */;
INSERT INTO "uegg_violencia_etapa_preliminar_tipo" ("id", "descripcion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'RECHAZO', 'T', NULL, NULL, NULL, NULL),
	(2, 'OBJECIÓN DE RECHAZO', 'T', NULL, NULL, NULL, NULL),
	(3, 'NOTIFICACIÓN CON EL RECHAZO ', 'T', NULL, NULL, NULL, NULL),
	(4, 'RESOLUCIÓN JERÁRQUICA DE LA OBJECIÓN', 'T', NULL, NULL, NULL, NULL),
	(5, 'NOTIFICACIÓN CON LA RESOLUCIÓN JERÁRQUICA', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_violencia_etapa_preliminar_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_etapa_preparatoria_tipo
DROP TABLE IF EXISTS "uegg_violencia_etapa_preparatoria_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_etapa_preparatoria_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_etapa_preparatoria_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_etapa_preparatoria_tipo: 8 rows
/*!40000 ALTER TABLE "uegg_violencia_etapa_preparatoria_tipo" DISABLE KEYS */;
INSERT INTO "uegg_violencia_etapa_preparatoria_tipo" ("id", "descripcion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'IMPUTACIÓN', 'T', NULL, NULL, NULL, NULL),
	(2, 'SOBRESEIMIENTO', 'T', NULL, NULL, NULL, NULL),
	(3, 'NOTIFICACIÓN CON EL SOBRE SEIMIENTO', 'T', NULL, NULL, NULL, NULL),
	(4, 'IMPUGNACIÓN AL SOBRESEIMIENTO', 'T', NULL, NULL, NULL, NULL),
	(5, 'RESOLUCIÓN JERÁRQUICA', 'T', NULL, NULL, NULL, NULL),
	(6, 'NOTIFICACIÓN CON LA RESOLUCIÓN JERÁRQUICA', 'T', NULL, NULL, NULL, NULL),
	(7, 'DETENCIÓN PREVENTIVA', 'T', NULL, NULL, NULL, NULL),
	(8, 'ACUSACIÓN FORMAL', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_violencia_etapa_preparatoria_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_hecho_tipo
DROP TABLE IF EXISTS "uegg_violencia_hecho_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_hecho_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_hecho_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_hecho_tipo: 8 rows
/*!40000 ALTER TABLE "uegg_violencia_hecho_tipo" DISABLE KEYS */;
INSERT INTO "uegg_violencia_hecho_tipo" ("id", "descripcion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'RELATO DE LA VÍCTIMA', 'T', NULL, NULL, NULL, NULL),
	(2, 'RELATO DE UN TESTIGO', 'T', NULL, NULL, NULL, NULL),
	(3, '(OTRO ESTUDIANTE)', 'T', NULL, NULL, NULL, NULL),
	(4, 'IDENTIFICACIÓN DE INDICADORES DE RIEGO POR PARTE DE MAESTRO/DIRECTOR/PERSONAL', 'T', NULL, NULL, NULL, NULL),
	(5, 'OBSERVACIÓN DEL HECHO (POR PARTE DE MAESTROS/AS, DIRECTORES, PERSONAL ADMINISTRATIVO)', 'T', NULL, NULL, NULL, NULL),
	(6, 'RELATO/DENUNCIA DE LA FAMILIA DE  LA O EL ESTUDIANTE', 'T', NULL, NULL, NULL, NULL),
	(7, 'PRESENTACIÓN DE DENUNCIA', 'T', NULL, NULL, NULL, NULL),
	(8, 'CONOCIMIENTO POR MEDIOS DE COMUNICACIÓN, REDES SOCIALES', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_violencia_hecho_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_instancia_tipo
DROP TABLE IF EXISTS "uegg_violencia_instancia_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_instancia_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_instancia_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_instancia_tipo: 7 rows
/*!40000 ALTER TABLE "uegg_violencia_instancia_tipo" DISABLE KEYS */;
INSERT INTO "uegg_violencia_instancia_tipo" ("id", "descripcion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'DNA', 'T', NULL, NULL, NULL, NULL),
	(2, 'SLIM', 'T', NULL, NULL, NULL, NULL),
	(3, 'FELCV', 'T', NULL, NULL, NULL, NULL),
	(4, 'FISCALIA', 'T', NULL, NULL, NULL, NULL),
	(5, 'JPNA', 'T', NULL, NULL, NULL, NULL),
	(6, 'CENTRO DE SALUD', 'T', NULL, NULL, NULL, NULL),
	(7, 'OTRO', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_violencia_instancia_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_jucio_ac_formal_tipo
DROP TABLE IF EXISTS "uegg_violencia_jucio_ac_formal_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_jucio_ac_formal_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_jucio_ac_formal_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_jucio_ac_formal_tipo: 2 rows
/*!40000 ALTER TABLE "uegg_violencia_jucio_ac_formal_tipo" DISABLE KEYS */;
INSERT INTO "uegg_violencia_jucio_ac_formal_tipo" ("id", "descripcion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'SENTENCIA', 'T', NULL, NULL, NULL, NULL),
	(2, 'PROCESO ABREVIADO', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_violencia_jucio_ac_formal_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_otras_form_tipo
DROP TABLE IF EXISTS "uegg_violencia_otras_form_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_otras_form_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_otras_form_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_otras_form_tipo: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_otras_form_tipo" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_otras_form_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_proce_seg_ds
DROP TABLE IF EXISTS "uegg_violencia_proce_seg_ds";
CREATE TABLE IF NOT EXISTS "uegg_violencia_proce_seg_ds" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_proce_seg_ds_id_seq''::regclass)',
	"id_num_caso" INTEGER NULL DEFAULT NULL,
	"id_violencia_seg_sanciones" INTEGER NULL DEFAULT NULL,
	"id_auto_inicial" INTEGER NULL DEFAULT NULL,
	"id_auto_inicial_tipo" INTEGER NULL DEFAULT NULL,
	"id_auto_final_tipo" INTEGER NULL DEFAULT NULL,
	"id_rec_rev" INTEGER NULL DEFAULT NULL,
	"id_rec_jur" INTEGER NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_proce_seg_ds: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_proce_seg_ds" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_proce_seg_ds" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_q_denuncia_tipo
DROP TABLE IF EXISTS "uegg_violencia_q_denuncia_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_q_denuncia_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_q_denuncia_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_q_denuncia_tipo: 5 rows
/*!40000 ALTER TABLE "uegg_violencia_q_denuncia_tipo" DISABLE KEYS */;
INSERT INTO "uegg_violencia_q_denuncia_tipo" ("id", "descripcion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'DNA', 'T', NULL, NULL, NULL, NULL),
	(2, 'LA FAMILIA DE LA VÍCTIMA', 'T', NULL, NULL, NULL, NULL),
	(3, 'LA DIRECCIÓN DEPARTAMENTAL DE EDUCACIÓN', 'T', NULL, NULL, NULL, NULL),
	(4, 'EL MINISTERIO DE EDUCACIÓN ', 'T', NULL, NULL, NULL, NULL),
	(5, 'OTRO', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_violencia_q_denuncia_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_rec_ju_tipo
DROP TABLE IF EXISTS "uegg_violencia_rec_ju_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_rec_ju_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_rec_ju_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_rec_ju_tipo: 5 rows
/*!40000 ALTER TABLE "uegg_violencia_rec_ju_tipo" DISABLE KEYS */;
INSERT INTO "uegg_violencia_rec_ju_tipo" ("id", "descripcion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'PRESENTACIÓN DE RECURSO JERÁRQUICO', 'T', NULL, NULL, NULL, NULL),
	(2, 'RESOLUCIÓN DE RECURSO JERÁRQUICO', 'T', NULL, NULL, NULL, NULL),
	(3, 'NOTIFICACIÓN CON RESOLUCIÓN DE RECURSOS JERÁRQUICO', 'T', NULL, NULL, NULL, NULL),
	(4, 'AUTO EJECUTORIA', 'T', NULL, NULL, NULL, NULL),
	(5, 'NOTIFICACIÓN CON EL AUTO DE EJECUTORIA', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_violencia_rec_ju_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_rec_rev_tipo
DROP TABLE IF EXISTS "uegg_violencia_rec_rev_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_rec_rev_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_rec_rev_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_rec_rev_tipo: 3 rows
/*!40000 ALTER TABLE "uegg_violencia_rec_rev_tipo" DISABLE KEYS */;
INSERT INTO "uegg_violencia_rec_rev_tipo" ("id", "descripcion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'RECURSO DE RECOCATORIA', 'T', NULL, NULL, NULL, NULL),
	(2, 'RESOLUCIÓN DE RECURSO DE REVOCATORIA', 'T', NULL, NULL, NULL, NULL),
	(3, 'NOTIFICVACIÓN CON LA RESOLUCIÓN DE LA REVOCATORIA', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_violencia_rec_rev_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_sancion_tipo
DROP TABLE IF EXISTS "uegg_violencia_sancion_tipo";
CREATE TABLE IF NOT EXISTS "uegg_violencia_sancion_tipo" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_sancion_tipo_id_seq''::regclass)',
	"descripcion" VARCHAR(250) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_sancion_tipo: 5 rows
/*!40000 ALTER TABLE "uegg_violencia_sancion_tipo" DISABLE KEYS */;
INSERT INTO "uegg_violencia_sancion_tipo" ("id", "descripcion", "estado", "usu_cre", "usu_mod", "fec_cre", "fec_mod") VALUES
	(1, 'AMONESTACIÓN EN PRIVADO', 'T', NULL, NULL, NULL, NULL),
	(2, 'AMONESTACIÓN ESCRITA', 'T', NULL, NULL, NULL, NULL),
	(3, 'DESCUENTO DE 1 A 5 DÍAS DE HABER', 'T', NULL, NULL, NULL, NULL),
	(4, 'TRASLADO DEL LUGAR DE TRABAJO', 'T', NULL, NULL, NULL, NULL),
	(5, 'OTRO', 'T', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "uegg_violencia_sancion_tipo" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_seg_ds
DROP TABLE IF EXISTS "uegg_violencia_seg_ds";
CREATE TABLE IF NOT EXISTS "uegg_violencia_seg_ds" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_seg_ds_id_seq''::regclass)',
	"id_num_caso" INTEGER NULL DEFAULT NULL,
	"id_violencia_seg_sanciones" INTEGER NULL DEFAULT NULL,
	"id_etapa_preliminar_tipo" INTEGER NULL DEFAULT NULL,
	"id_etapa_preparatoria_tipo" INTEGER NULL DEFAULT NULL,
	"id_juicio_ac_formal_tipo" INTEGER NULL DEFAULT NULL,
	"apelacion" BOOLEAN NULL DEFAULT NULL,
	"cazacion" BOOLEAN NULL DEFAULT NULL,
	"id_otras_formas_conclusion_tipo" INTEGER NULL DEFAULT NULL,
	"fec_seg" DATE NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_seg_ds: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_seg_ds" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_seg_ds" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_seg_infraccion
DROP TABLE IF EXISTS "uegg_violencia_seg_infraccion";
CREATE TABLE IF NOT EXISTS "uegg_violencia_seg_infraccion" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_seg_infraccion_id_seq''::regclass)',
	"id_num_caso" INTEGER NULL DEFAULT NULL,
	"caso_remitido_juez" BOOLEAN NULL DEFAULT NULL,
	"caso_remitido_otra_instancia" BOOLEAN NULL DEFAULT NULL,
	"dna_remision_referencia" BOOLEAN NULL DEFAULT NULL,
	"cambio_sancion_delito" BOOLEAN NULL DEFAULT NULL,
	"inicio_proceso_admi" BOOLEAN NULL DEFAULT NULL,
	"id_violencia_sancion_tipo" INTEGER NULL DEFAULT NULL,
	"sancion_cumplida" BOOLEAN NULL DEFAULT NULL,
	"com_tutor" VARCHAR(100) NULL DEFAULT NULL,
	"medidas_protec" BOOLEAN NULL DEFAULT NULL,
	"denuncia_minpub" BOOLEAN NULL DEFAULT NULL,
	"id_quien_denuncia_tipo" INTEGER NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_seg_infraccion: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_seg_infraccion" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_seg_infraccion" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_seg_sanciones
DROP TABLE IF EXISTS "uegg_violencia_seg_sanciones";
CREATE TABLE IF NOT EXISTS "uegg_violencia_seg_sanciones" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_seg_sanciones_id_seq''::regclass)',
	"id_num_caso" INTEGER NULL DEFAULT NULL,
	"id_violencia_victima_nombre" INTEGER NULL DEFAULT NULL,
	"ini_victi" VARCHAR(100) NULL DEFAULT NULL,
	"id_violencia_agresor_nombre" INTEGER NULL DEFAULT NULL,
	"ini_agre" VARCHAR(100) NULL DEFAULT NULL,
	"remision_dir_deptal" BOOLEAN NULL DEFAULT NULL,
	"fec_agresion" DATE NULL DEFAULT NULL,
	"id_violencia_sanciones_tipo" INTEGER NULL DEFAULT NULL,
	"cumplir_sancion" BOOLEAN NULL DEFAULT NULL,
	"comu_tutor" BOOLEAN NULL DEFAULT NULL,
	"comu_victima" BOOLEAN NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_seg_sanciones: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_seg_sanciones" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_seg_sanciones" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_seg_sanciones_del
DROP TABLE IF EXISTS "uegg_violencia_seg_sanciones_del";
CREATE TABLE IF NOT EXISTS "uegg_violencia_seg_sanciones_del" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''uegg_violencia_seg_sanciones_del_id_seq''::regclass)',
	"id_num_caso" INTEGER NULL DEFAULT NULL,
	"id_violencia_seg_sanciones" INTEGER NULL DEFAULT NULL,
	"denuncia_minpub" BOOLEAN NULL DEFAULT NULL,
	"id_quien_denuncia_tipo" INTEGER NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla public.uegg_violencia_seg_sanciones_del: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_seg_sanciones_del" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_seg_sanciones_del" ENABLE KEYS */;

-- Volcando estructura para tabla public.uegg_violencia_victima
DROP TABLE IF EXISTS "uegg_violencia_victima";
CREATE TABLE IF NOT EXISTS "uegg_violencia_victima" (
	"id" INTEGER NOT NULL,
	"cod_ue" INTEGER NULL DEFAULT NULL,
	"desc_ue" VARCHAR(100) NULL DEFAULT NULL,
	"cod_sie" INTEGER NULL DEFAULT NULL,
	"cod_rda_director" VARCHAR(100) NULL DEFAULT NULL,
	"cod_director" VARCHAR(100) NULL DEFAULT NULL,
	"cod_rude" VARCHAR(100) NOT NULL,
	"num_ci" INTEGER NULL DEFAULT NULL,
	"num_comp" VARCHAR(100) NULL DEFAULT NULL,
	"nombres_victima" VARCHAR(255) NULL DEFAULT NULL,
	"apellido_pat_victima" VARCHAR(255) NULL DEFAULT NULL,
	"apellido_mat_victima" VARCHAR(255) NULL DEFAULT NULL,
	"fec_nac" DATE NULL DEFAULT NULL,
	"sexo" VARCHAR(100) NULL DEFAULT NULL,
	"nivel" VARCHAR(100) NULL DEFAULT NULL,
	"grado" VARCHAR(100) NULL DEFAULT NULL,
	"dir_actual" VARCHAR(500) NULL DEFAULT NULL,
	"celular_contacto" VARCHAR(100) NULL DEFAULT NULL,
	"estado" VARCHAR(100) NULL DEFAULT NULL,
	"usu_cre" VARCHAR(100) NULL DEFAULT NULL,
	"usu_mod" VARCHAR(100) NULL DEFAULT NULL,
	"fec_cre" DATE NULL DEFAULT NULL,
	"fec_mod" DATE NULL DEFAULT NULL,
	"uegg_violencia_caso_agresor_id" INTEGER NOT NULL
);

-- Volcando datos para la tabla public.uegg_violencia_victima: 0 rows
/*!40000 ALTER TABLE "uegg_violencia_victima" DISABLE KEYS */;
/*!40000 ALTER TABLE "uegg_violencia_victima" ENABLE KEYS */;

-- Volcando estructura para tabla public.usuario
DROP TABLE IF EXISTS "usuario";
CREATE TABLE IF NOT EXISTS "usuario" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''usuario_id_seq''::regclass)',
	"persona_id" INTEGER NOT NULL,
	"username" VARCHAR(100) NULL DEFAULT NULL,
	"password" VARCHAR(45) NULL DEFAULT NULL,
	"fecha_registro" DATE NULL DEFAULT NULL,
	"password2" VARCHAR(45) NULL DEFAULT NULL,
	"esactivo" BOOLEAN NULL DEFAULT NULL,
	"estadopassword" SMALLINT NULL DEFAULT NULL,
	PRIMARY KEY ("id"),
	UNIQUE INDEX "usuario_persona_key" ("persona_id"),
	UNIQUE INDEX "usuario_username_key" ("username"),
	INDEX "fk_usuario_persona1_fk" ("persona_id"),
	UNIQUE INDEX "usuario_pk" ("id"),
	CONSTRAINT "usuario_fk_persona_id" FOREIGN KEY ("persona_id") REFERENCES "persona" ("id") ON UPDATE CASCADE ON DELETE CASCADE
);

-- Volcando datos para la tabla public.usuario: 0 rows
/*!40000 ALTER TABLE "usuario" DISABLE KEYS */;
INSERT INTO "usuario" ("id", "persona_id", "username", "password", "fecha_registro", "password2", "esactivo", "estadopassword") VALUES
	(92498122, 241346, '4269776', 'e10adc3949ba59abbe56e057f20f883e', '2019-03-21', 'ed9da38a26482589c01456f9319acc7b', 'true', 3);
/*!40000 ALTER TABLE "usuario" ENABLE KEYS */;

-- Volcando estructura para tabla public.usuario_rol
DROP TABLE IF EXISTS "usuario_rol";
CREATE TABLE IF NOT EXISTS "usuario_rol" (
	"id" INTEGER NOT NULL,
	"rol_tipo_id" INTEGER NOT NULL,
	"usuario_id" INTEGER NOT NULL,
	"esactivo" BOOLEAN NOT NULL,
	"lugar_tipo_id" INTEGER NULL DEFAULT NULL,
	"circunscripcion_tipo_id" INTEGER NULL DEFAULT NULL,
	"sub_sistema" CHAR(200) NULL DEFAULT NULL,
	PRIMARY KEY ("id"),
	INDEX "fk_usuariorol_rol_tipo1_fk" ("rol_tipo_id"),
	INDEX "fk_usuariorol_usuario1_fk" ("usuario_id"),
	UNIQUE INDEX "usuario_rol_pk" ("id")
);

-- Volcando datos para la tabla public.usuario_rol: 0 rows
/*!40000 ALTER TABLE "usuario_rol" DISABLE KEYS */;
INSERT INTO "usuario_rol" ("id", "rol_tipo_id", "usuario_id", "esactivo", "lugar_tipo_id", "circunscripcion_tipo_id", "sub_sistema") VALUES
	(13802067, 9, 92498122, 'true', NULL, NULL, '*                                                                                                                                                                                                       ');
/*!40000 ALTER TABLE "usuario_rol" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
ALTER TABLE public.uegg_pcpa_construccion ADD fecha_aprobacion timestamp NULL;
ALTER TABLE public.uegg_pcpa_construccion ADD vigencia_aprobacion int4 NULL;


-- Cambios Roly violencia

ALTER TABLE public.uegg_violencia_victima ALTER COLUMN uegg_violencia_caso_agresor_id DROP NOT NULL;


ALTER TABLE public.uegg_violencia_caso_agresor ALTER COLUMN num_caso TYPE varchar(15) USING num_caso::varchar(15);
ALTER TABLE public.uegg_violencia_caso_agresor ALTER COLUMN num_caso SET NOT NULL;

ALTER TABLE public.uegg_violencia_caso_com ADD id_violencia_victima int4 NULL;
ALTER TABLE public.uegg_violencia_caso_com ADD id_violencia_agresor int4 NULL;


INSERT INTO public.uegg_pcpa_actividades_tipo (id, cod_actividad, desc_actividad, check_actividad_tipo, orden, estado, usu_cre, usu_mod, fec_cre, fec_mod) VALUES(11, 'MCI', 'MEDIOS DE COMUNICACIÓN INTERNA', NULL, 12, 'ACTIVO', 'ADMIN', NULL, '2024-05-07', NULL);
INSERT INTO public.uegg_pcpa_actividades_tipo (id, cod_actividad, desc_actividad, check_actividad_tipo, orden, estado, usu_cre, usu_mod, fec_cre, fec_mod) VALUES(12, 'RS', 'REDES SOCIALES  ', NULL, 13, 'ACTIVO', 'ADMIN', NULL, '2024-05-07', NULL);
INSERT INTO public.uegg_pcpa_actividades_tipo (id, cod_actividad, desc_actividad, check_actividad_tipo, orden, estado, usu_cre, usu_mod, fec_cre, fec_mod) VALUES(13, 'TAL', 'TALLERES', NULL, 14, 'ACTIVO', 'ADMIN', NULL, '2024-05-07', NULL);
INSERT INTO public.uegg_pcpa_actividades_tipo (id, cod_actividad, desc_actividad, check_actividad_tipo, orden, estado, usu_cre, usu_mod, fec_cre, fec_mod) VALUES(14, 'FER', 'FERIAS', NULL, 15, 'ACTIVO', 'ADMIN', NULL, '2024-05-07', NULL);
INSERT INTO public.uegg_pcpa_actividades_tipo (id, cod_actividad, desc_actividad, check_actividad_tipo, orden, estado, usu_cre, usu_mod, fec_cre, fec_mod) VALUES(15, 'OTR', 'OTROS', NULL, 16, 'ACTIVO', 'ADMIN', NULL, '2024-05-07', NULL);S
