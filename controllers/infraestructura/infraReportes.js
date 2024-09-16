const InfraReportes = require('../../models/infraestructura').infraPredio;
const sequelize = InfraReportes.sequelize;

module.exports = {

    async getReporteDatos(req, res) {

        try {
            const ubicacion_query = `SELECT jg.*,p.zona,p.direccion,p.gestion_tipo_id as gestion, ipt.nivel as prediotipo
             from infra_predio p inner join infra_predio_tipo ipt on ipt.id = p.infra_predio_tipo_id
                    join (SELECT jg.id,lt4.codigo as cod_depto,lt4.lugar as departamento,lt3.codigo as cod_prov,lt3.lugar as provincia,lt2.codigo as cod_mun,lt2.lugar AS municipio,lt1.codigo as cod_canton,lt1.lugar AS canton,lt.codigo as cod_local,lt.lugar AS localidad,
                    d.id AS codigo_dist,d.distrito,lt.area2001--, i.institucioneducativa,estt.estadoinstitucion,*
                    from jurisdiccion_geografica jg 
                    INNER JOIN lugar_tipo lt on jg.lugar_tipo_id_localidad = lt.id 
                    INNER JOIN lugar_tipo lt1 on lt.lugar_tipo_id = lt1.id
                    INNER JOIN lugar_tipo lt2 on lt1.lugar_tipo_id = lt2.id
                    INNER JOIN lugar_tipo lt3 on lt2.lugar_tipo_id = lt3.id
                    INNER JOIN lugar_tipo lt4 on lt3.lugar_tipo_id = lt4.id
                    INNER JOIN distrito_tipo d on jg.distrito_tipo_id = d.id) as jg on p.jurisdiccion_geografica_id = jg.id
                    WHERE p.id  =` + req.params.idpredio;
            let ubicacion = await sequelize.query(ubicacion_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            const UEoperan_query = `select ie.id, ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,  ie.id as sie,ie.institucioneducativa,iet.descripcion,(per.paterno||' '||per.materno||' '||per.nombre) as director,
              per.celular as telefono,itt.id as tenenciaid,itt.tenencia,ipie.representante,ipie.bth_especialidad as bth
                  from infra_predio ip
              inner join infra_predio_institucioneducativa  ipie on ipie.infra_predio_id =ip.id
              inner join institucioneducativa ie on ie.id = ipie.institucioneducativa_id
              inner join institucioneducativa_tipo iet on iet.id =ie.institucioneducativa_tipo_id
              left join maestro_inscripcion mi on mi.institucioneducativa_id =ie.id and mi.cargo_tipo_id = 1 and mi.es_vigente_administrativo = true and mi.gestion_tipo_id =2019
              left join persona per on per.id = mi.persona_id
              left join infra_tenencia_tipo itt on itt.id = ipie.infra_tenencia_tipo_id
              where  ip.id = ` + req.params.idpredio;
            let UEoperan = await sequelize.query(UEoperan_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            const vias_query = `select ip.tramo_troncal, ip.tramo_vecinal, ip.tramo_complementario
            from infra_predio ip
            where ip.id=` + req.params.idpredio;
            let vias = await sequelize.query(vias_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });


            const accesoGob_query = `select ict.medio_transporte_categoria as tipo
             ,string_agg(imt.descripcion_medio_transporte, ',') as transporte
             ,sum(iapt.dias) as dias
             ,sum(iapt.horas) as horas
             ,sum(iapt.minutos) as minutos
             ,sum(iapt.costo) as costo
             from infra_acceso_predio_transporte iapt
             INNER JOIN infra_medio_transporte_tipo imt on iapt.medio_transporte_tipo_id = imt.id 
             INNER JOIN infra_medio_transporte_categoria_tipo ict on  imt.infra_medio_transporte_tipo_id = ict.id 
             where iapt.infra_acceso_tipo_id = 2 and infra_predio_id =` + req.params.idpredio + `group by ict.medio_transporte_categoria`;
            let accesoGob = await sequelize.query(accesoGob_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });


            const accesoDir_query = `select ict.medio_transporte_categoria as tipo
             ,string_agg(imt.descripcion_medio_transporte, ',') as transporte
             ,sum(iapt.dias) as dias
             ,sum(iapt.horas) as horas
             ,sum(iapt.minutos) as minutos
             ,sum(iapt.costo) as costo
             from infra_acceso_predio_transporte iapt
             INNER JOIN infra_medio_transporte_tipo imt on iapt.medio_transporte_tipo_id = imt.id 
             INNER JOIN infra_medio_transporte_categoria_tipo ict on  imt.infra_medio_transporte_tipo_id = ict.id 
             where iapt.infra_acceso_tipo_id = 1 and infra_predio_id =` + req.params.idpredio + `group by ict.medio_transporte_categoria`;
            let accesoDir = await sequelize.query(accesoDir_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            //  console.log(grada);
            // console.log(accesoEdificacion, grada, rampa, senial);

            res.status(200).send({
                ubicacion: ubicacion,
                UEoperan: UEoperan,
                vias: vias,
                accesoGob: accesoGob,
                accesoDir: accesoDir
            });
        } catch (exception) {

        }
    },
    async getReporteCaracteristicas(req, res) {

        try {
            const terreno_query = `select ict.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio, ict.area_total,ict.area_construida,
            string_agg(iet.id::character varying, ',') as idespacio,
                  string_agg(iet.espacio, ',') as espacio,
                  itt.id as idtopografia,itt.topografia,
                  iat.id as idamurallado,iat.amurallado
                  from infra_predio ip 
                  inner join infra_caracteristica_terreno ict on ict.infra_predio_id =ip.id
                  left join infra_caracteristicas_espacio ice on ice.infra_caracteristica_terreno_id =ict.id 
                  left join infra_espacios_tipo iet on iet.id=ice.infra_espacio_tipo_id
                  inner join infra_topografia_tipo itt on itt.id=ict.topografia_tipo_id
                  inner join infra_amurallado_tipo iat on iat.id = ict.amurallado_tipo_id
                  where  ip.id = ` + req.params.idpredio + ` group by ict.id,ip.id,ip.jurisdiccion_geografica_id,ict.area_total,ict.area_construida,itt.id,iat.id`;
            let terreno = await sequelize.query(terreno_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            const bloques_query = `select ib.id,ib.bloque, count(ipi.id) as pisos
            from infra_bloque ib
            inner join infra_predio ip on ip.id = ib.infra_predio_id
            inner join infra_piso ipi on ipi.infra_bloque_id = ib.id
            where ip.id =` + req.params.idpredio + ` group by ib.id,ib.bloque order by 1`;
            let bloques = await sequelize.query(bloques_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            const edificacion_query = `SELECT ic.id,ie.id as edificacion_id, ie.edificacion,ip.id as propiedad_id,ip.propiedad,ic.folio,ic.razon_social,ic.partida,idt.id as documentacion_id,ic.otro_documentacion,idt.documentacion
            --,ic.plano_aprobado
            ,case when ic.plano_aprobado  = true then 'Si' else 'No' end as plano_aprobado
            FROM infra_caracteristica_construccion ic
            INNER JOIN infra_edificacion_tipo ie  on ic.infra_edificacion_tipo_id = ie.id
            INNER JOIN infra_propiedad_tipo ip on ic.infra_propiedad_tipo_id = ip.id
            INNER JOIN infra_documentacion_tipo idt on ic.infra_documentacion_tipo_id = idt.id 
            WHERE ic.infra_predio_id =` + req.params.idpredio;
            let edificacion = await sequelize.query(edificacion_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });


            const edificacion_detalle_query = `select ip.id as idpredio,igct.id as idconstr,igct.gestion_construccion, ic.gestion,ieet.entidad_ejecutora,ic.detalle
            --,ic.discapacidad 
             ,case when ic.discapacidad  = true then 'Si' else 'No' end as discapacidad
            from infra_predio ip
            inner join infra_caracteristica_construccion icc on icc.infra_predio_id =ip.id
                left join  infra_construccion ic on ic.infra_caracteristica_construccion_id = icc.id
                left join infra_entidad_ejecutora_tipo ieet on ieet.id = ic.infra_entidad_ejecutora_id
                left join infra_gestion_construccion_tipo igct on igct.id = ic.infra_gestion_construccion_tipo_id
            where ip.id=` + req.params.idpredio;
            let edifDetalle = await sequelize.query(edificacion_detalle_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });


            const accesibilidad_query = `select ip.id as idpredio,iae.id as idacceso
            ,case when iae.ascensor  = true then 'Si' else 'No' end as ascensor
            ,case when iae.acceso_universal = true then 'Si' else 'No' end as universal
            ,case when iae.conoce_normativa  = true then 'Si' else 'No' end as normativa
              from infra_predio ip
                  inner join infra_acceso_edificacion iae on iae.infra_predio_id =ip.id
                  where ip.id=` + req.params.idpredio;
            let accesibilidad = await sequelize.query(accesibilidad_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            const grada_query = `select ip.id as idpredio,iae.id as idacceso, iam.id as idmedio,iam.infra_ubicacion_tipo_id as idubicacion,imat.id as idmediotipo, imat.medio_acceso,iut.ubicacion,
            string_agg(iamgr.id::character varying, ',') as idiamgr,
            string_agg(igrct.id::character varying, ',') as idgradarampa,
            string_agg(igrct.caracteristica_grada, ',') as gradarampa
            from infra_predio ip
            inner join infra_acceso_edificacion iae on iae.infra_predio_id =ip.id
            inner	join infra_acceso_medio iam on iam.infra_acceso_edificacion_id = iae.id
            inner join infra_medio_acceso_tipo imat on imat.id =iam.infra_medio_acceso_tipo_id and imat.id=1		
            inner join infra_acceso_medio_grada_rampa iamgr on iamgr.infra_acceso_medio_id=iam.id
            inner join infra_grada_rampa_cuenta_tipo igrct on igrct.id =iamgr.infra_grada_rampa_id
                    inner join infra_ubicacion_tipo iut on iut.id = iam.infra_ubicacion_tipo_id
            where ip.id=` + req.params.idpredio + `group by ip.id,iae.id, iam.id,iam.infra_ubicacion_tipo_id,imat.id, imat.medio_acceso,iut.ubicacion`;
            let grada = await sequelize.query(grada_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            const rampa_query = `	select ip.id as idpredio,iae.id as idacceso, iam.id as idmedio,iam.infra_ubicacion_tipo_id as idubicacion,imat.id as idmediotipo, imat.medio_acceso,iut.ubicacion,
            string_agg(iamgr.id::character varying, ',') as idiamgr,
            string_agg(igrct.id::character varying, ',') as idgradarampa,
            string_agg(igrct.caracteristica_grada, ',') as gradarampa
            from infra_predio ip
            inner join infra_acceso_edificacion iae on iae.infra_predio_id =ip.id
            inner	join infra_acceso_medio iam on iam.infra_acceso_edificacion_id = iae.id
            inner join infra_medio_acceso_tipo imat on imat.id =iam.infra_medio_acceso_tipo_id and imat.id=2		
            inner join infra_acceso_medio_grada_rampa iamgr on iamgr.infra_acceso_medio_id=iam.id
            inner join infra_grada_rampa_cuenta_tipo igrct on igrct.id =iamgr.infra_grada_rampa_id
            inner join infra_ubicacion_tipo iut on iut.id = iam.infra_ubicacion_tipo_id
            where ip.id=` + req.params.idpredio + `group by ip.id,iae.id, iam.id,iam.infra_ubicacion_tipo_id,imat.id, imat.medio_acceso,iut.ubicacion`;
            let rampa = await sequelize.query(rampa_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });


            const senial_query = `
			select ip.id as idpredio,iae.id as idacceso, iam.id as idmedio,iam.infra_ubicacion_tipo_id as idubicacion,imat.id as idmediotipo, imat.medio_acceso,iut.ubicacion,
         string_agg(iaes.id::character varying, ',') as idiaes,
         string_agg(ist.id::character varying, ',') as idsenial,
         string_agg(ist.senialetica, ',') as senial
        from infra_predio ip
            inner join infra_acceso_edificacion iae on iae.infra_predio_id =ip.id
              inner	join infra_acceso_medio iam on iam.infra_acceso_edificacion_id = iae.id
              inner join infra_medio_acceso_tipo imat on imat.id =iam.infra_medio_acceso_tipo_id and imat.id=3	
              inner join infra_acceso_edificacion_senialetica iaes on iaes.infra_acceso_medio_id =iam.id
              inner join infra_senialetica_tipo ist on iaes.infra_senialetica_tipo_id = ist.id
						  inner join infra_ubicacion_tipo iut on iut.id = iam.infra_ubicacion_tipo_id
          where ip.id=` + req.params.idpredio + ` group by ip.id,iae.id, iam.id ,iam.infra_ubicacion_tipo_id,imat.id, imat.medio_acceso,iut.ubicacion`;
            let senial = await sequelize.query(senial_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });
            //  console.log(grada);
            console.log(terreno, bloques, edificacion, edifDetalle, accesibilidad, grada, rampa, senial);

            res.status(200).send({
                terreno: terreno,
                bloques: bloques,
                edificacion: edificacion,
                edifDetalle: edifDetalle,
                accesibilidad: accesibilidad,
                grada: grada,
                rampa: rampa,
                senial: senial
            });
        } catch (exception) {

        }
    },

    async getReporteServicios(req, res) {

        try {
            const electricidad_query = `select ise.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio
			,ifet.id as idfuenteenergia, ifet.fuente_energia as fuenteenergia,iit.id as idinstal, iit.instalacion, idst.id as iddisponib, idst.disponibilidad_servicio as disponibilidad,ise.cantidad_ambiente_pedagogico as cantap, ise.cantidad_ambiente_no_pedagogico as cantanp, ise.cantidad_banos as cantab
			from infra_predio ip
			inner join infra_servicio_electrico ise on ise.infra_predio_id = ip.id
			inner join infra_fuente_energia_tipo ifet on ifet.id =ise.infra_fuente_energia_tipo_id
			inner join infra_instalacion_tipo iit on iit.id =ise.infra_instalacion_tipo_id
			inner join infra_disponibilidad_servicio_tipo idst on idst.id = ise.infra_disponibilidad_servicio_tipo_id
			where ip.id =` + req.params.idpredio;
            let electricidad = await sequelize.query(electricidad_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            const agua_query = `select isa.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio, isa.cantidad_ambientes_agua as cantidad,ipat.id as idpurificador, ipat.purificador_agua as purificador,iaut.id as idaguauso, iaut.agua_uso as aguauso,imsat.id as idsuministro, imsat.medio_suministro_agua as suministro, idst.id as iddisponibilidad, idst.disponibilidad_servicio as disponibilidad
            --,isa.tanque_almacenamiento as tanque
            --,isa.bomba_agua as bomba
            ,case when isa.tanque_almacenamiento = true then 'Si' else 'No' end as tanque
            ,case when isa.bomba_agua = true then 'Si' else 'No' end as bomba
            from infra_predio ip
                inner join infra_servicio_agua isa on isa.infra_predio_id = ip.id
                inner join infra_purificador_agua_tipo ipat on ipat.id = isa.infra_purificador_agua_tipo_id
                inner join infra_agua_uso_tipo iaut on iaut.id = isa.infra_agua_uso_tipo_id 
                inner join infra_medio_suministro_agua_tipo imsat on imsat.id = isa.infra_medio_suministro_agua_id
                inner join infra_disponibilidad_servicio_tipo idst on idst.id = isa.infra_disponibilidad_servicio_tipo_id
                where ip.id =` + req.params.idpredio + `  group by isa.id,ip.id ,ip.jurisdiccion_geografica_id ,isa.tanque_almacenamiento,isa.bomba_agua,isa.cantidad_ambientes_agua,ipat.id, ipat.purificador_agua,iaut.id, iaut.agua_uso,imsat.id, imsat.medio_suministro_agua,idst.id, idst.disponibilidad_servicio`;
            let agua = await sequelize.query(agua_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            const saneamiento_query = `select iss.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,imebt.id as ideliminacion,imebt.medio_eliminacion_basura as eliminacion, ipebt.id as idperiodicidad, ipebt.periodicidad_eliminacion_basura as periodicidad, b.eliminacionexc,b.eventoOtro
            from infra_predio ip
            inner join infra_servicio_saneamiento iss on iss.infra_predio_id = ip.id
            inner join infra_medio_eliminacion_basura_tipo imebt on imebt.id = iss.infra_medio_eliminacion_basura_tipo_id 
            inner join infra_periodicidad_eliminacion_basura_tipo ipebt on ipebt.id = iss.infra_periodicidad_eliminacion_basura_tipo_id
              left join (select iss.id,ip.id as idpredio,
                     string_agg(imee.medio_eliminacion_exc, ',') as eliminacionexc,
                     string_agg(issmee.otros, ',') as eventoOtro
                 from infra_predio ip
                 inner join infra_servicio_saneamiento iss on iss.infra_predio_id = ip.id
                 inner join infra_medio_eliminacion_basura_tipo imebt on imebt.id = iss.infra_medio_eliminacion_basura_tipo_id 
                 inner join infra_periodicidad_eliminacion_basura_tipo ipebt on ipebt.id = iss.infra_periodicidad_eliminacion_basura_tipo_id
                 inner join infra_servicio_saneamiento_medio_eliminacion_exc issmee on issmee.infra_servicio_saneamiento_id = iss.id
                 inner join infra_medio_eliminacion_exc_tipo imee on imee.id = issmee.infra_medio_eliminacion_exc_tipo_id
                 where ip.id = ` + req.params.idpredio + ` group by iss.id, ip.id) b on b.idpredio = ip.id
            where ip.id =` + req.params.idpredio;
            let saneamiento = await sequelize.query(saneamiento_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            //  console.log(grada);
            console.log(electricidad, agua, saneamiento);

            res.status(200).send({
                electricidad: electricidad,
                agua: agua,
                saneamiento: saneamiento
            });
        } catch (exception) {

        }
    },
    async getReporteAmbientes(req, res) {

        try {
            const ambiente_pedagogico_query = `SELECT ia.id,iat.ambiente,ia.capacidad,ia.largo,ia.ancho,ia.area
            ,case when ia.es_utilizado = true then 'Si' else 'No' end as uso
            ,case when ia.es_universal = true then 'Si' else 'No' end as univeral
            ,case when ia.servicio_electrico = true then 'Si' else 'No' end as luz
            ,case when ia.servicio_agua = true then 'Si' else 'No' end as agua
            ,case when ebth.especialidad  is null then '-' else ebth.especialidad end as especialidad
            ,ia.infra_predio_id
            FROM infra_ambiente ia 
            left JOIN infra_pedagogico ip on ia.id = ip.infra_ambiente_id
            INNER JOIN infra_ambiente_tipo iat on ia.infra_ambiente_tipo_id = iat.id
            left JOIN infra_ambiente_especialidad iae ON ip.id=iae.infra_pedagogico_id
            left JOIN especialidad_tecnico_humanistico_tipo ebth ON iae.especialidad_tecnico_humanistico_tipo_id=ebth.id
            WHERE  iat.infra_ambiente_categoria_tipo_id = 1 and  ia.infra_predio_id =` + req.params.idpredio;
            let amb_pedagogico = await sequelize.query(ambiente_pedagogico_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });
            const ambiente_recreativo_query = `SELECT ia.id, iat.ambiente,ia.capacidad,ia.largo,ia.ancho,ia.area
            --,ia.es_utilizado,ia.es_universal,ia.servicio_agua,ia.servicio_electrico
            ,case when idt.destinado  is null then '-' else idt.destinado end as destinado
            ,case when ia.es_utilizado = true then 'Si' else 'No' end as uso
            ,case when ia.es_universal = true then 'Si' else 'No' end as univeral
            ,case when ia.servicio_electrico = true then 'Si' else 'No' end as luz
            ,case when ia.servicio_agua = true then 'Si' else 'No' end as agua
            ,ia.infra_predio_id
            FROM infra_ambiente ia 
            left JOIN infra_pedagogico_recreativo ipr on ia.id = ipr.infra_ambiente_id
            INNER JOIN infra_ambiente_tipo iat on ia.infra_ambiente_tipo_id = iat.id
            left JOIN infra_ambiente_destinado_tipo idt on ipr.infra_destinado_tipo_id = idt.id
            WHERE  iat.infra_ambiente_categoria_tipo_id = 2 and infra_predio_id =` + req.params.idpredio;
            let amb_recreativo = await sequelize.query(ambiente_recreativo_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });
            const ambiente_admin_query = `SELECT ia.id,iat.ambiente,ib.bloque,ip.piso
            --,ia.es_utilizado,ia.es_universal,ia.servicio_agua,ia.servicio_electrico
            ,case when ia.es_utilizado = true then 'Si' else 'No' end as uso
            ,case when ia.es_universal = true then 'Si' else 'No' end as univeral
            ,case when ia.servicio_electrico = true then 'Si' else 'No' end as luz
            ,case when ia.servicio_agua = true then 'Si' else 'No' end as agua
            FROM infra_ambiente ia
            INNER JOIN infra_bloque ib ON ia.infra_bloque_id = ib.id
            INNER JOIN infra_ambiente_tipo iat on ia.infra_ambiente_tipo_id = iat.id
            INNER JOIN infra_piso ip ON ia.infra_piso_id = ip.id
            WHERE iat.infra_ambiente_categoria_tipo_id = 3 and ia.infra_predio_id =` + req.params.idpredio;
            let amb_admin = await sequelize.query(ambiente_admin_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });
            const ambiente_vivienda_query = `SELECT ia.id,iat.ambiente,ib.bloque,ip.piso
            --,ia.es_utilizado,ia.es_universal,ia.servicio_agua,ia.servicio_electrico
            ,case when ia.es_utilizado = true then 'Si' else 'No' end as uso
            ,case when ia.es_universal = true then 'Si' else 'No' end as univeral
            ,case when ia.servicio_electrico = true then 'Si' else 'No' end as luz
            ,case when ia.servicio_agua = true then 'Si' else 'No' end as agua
            ,iv.habitante,iv.banio,iv.ducha,iv.cocina
            FROM infra_ambiente ia
            INNER JOIN infra_bloque ib ON ia.infra_bloque_id = ib.id
            INNER JOIN infra_ambiente_tipo iat on ia.infra_ambiente_tipo_id = iat.id
            INNER JOIN infra_piso ip ON ia.infra_piso_id = ip.id
            left JOIN infra_no_pedagogico_vivienda iv ON ia.id = iv.infra_ambiente_id
            WHERE iat.infra_ambiente_categoria_tipo_id = 4 and ia.infra_predio_id =` + req.params.idpredio;
            let amb_vivienda = await sequelize.query(ambiente_vivienda_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });
            const ambiente_internado_query = `SELECT ia.id,iat.ambiente,ib.bloque,ip.piso
            ,ii.distancia,ii.litera,ii.cama
            ,ires.responsable
            ,case when ia.servicio_electrico = true then 'Si' else 'No' end as luz
            ,case when ia.servicio_agua = true then 'Si' else 'No' end as agua
            FROM infra_ambiente ia
            INNER JOIN infra_bloque ib ON ia.infra_bloque_id = ib.id
            INNER JOIN infra_ambiente_tipo iat on ia.infra_ambiente_tipo_id = iat.id
            INNER JOIN infra_piso ip ON ia.infra_piso_id = ip.id
            left JOIN infra_no_pedagogico_internado ii ON ii.infra_ambiente_id = ia.id
            left JOIN infra_responsable_tipo ires ON ii.infra_responsable_tipo_id = ires.id
            WHERE iat.infra_ambiente_categoria_tipo_id = 5 and ia.infra_predio_id =` + req.params.idpredio;
            let amb_internado = await sequelize.query(ambiente_internado_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });
            const ambiente_alim_query = `SELECT ia.id,iat.ambiente,ib.bloque,ip.piso
            --,ia.es_utilizado,ia.es_universal,ia.servicio_agua,ia.servicio_electrico
            ,case when ia.es_utilizado = true then 'Si' else 'No' end as uso
            ,case when ia.es_universal = true then 'Si' else 'No' end as univeral
            ,case when ia.servicio_electrico = true then 'Si' else 'No' end as luz
            ,case when ia.servicio_agua = true then 'Si' else 'No' end as agua
            FROM infra_ambiente ia
            INNER JOIN infra_bloque ib ON ia.infra_bloque_id = ib.id
            INNER JOIN infra_ambiente_tipo iat on ia.infra_ambiente_tipo_id = iat.id
            INNER JOIN infra_piso ip ON ia.infra_piso_id = ip.id
            WHERE iat.infra_ambiente_categoria_tipo_id = 6 and ia.infra_predio_id =` + req.params.idpredio;
            let amb_alimentacion = await sequelize.query(ambiente_alim_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });
            const ambiente_mob_query = `
            SELECT imb.id as idmob,ia.id as idamb,imbt.mobiliario,imb.cantidad,iet.estado 
            FROM infra_ambiente_mobiliario imb
            INNER JOIN infra_mobiliario_tipo imbt on imb.infra_mobiliario_tipo_id = imbt.id
            INNER JOIN infra_estado_tipo iet ON imb.infra_estado_tipo_id = iet.id
            INNER JOIN infra_ambiente ia on imb.infra_ambiente_id = ia.id 
            WHERE ia.infra_predio_id =` + req.params.idpredio;
            let mobiliario = await sequelize.query(ambiente_mob_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            //  console.log(grada);
            //   console.log(amb_pedagogico);

            res.status(200).send({
                amb_pedagogico: amb_pedagogico,
                amb_recreativo: amb_recreativo,
                amb_admin: amb_admin,
                amb_vivienda: amb_vivienda,
                amb_internado: amb_internado,
                amb_alimentacion: amb_alimentacion,
                mobiliario: mobiliario
            });
        } catch (exception) {

        }
    },
    async getReporteRiesgos(req, res) {

        try {
            const riesgo_query = `select case when ir.clase_suspendida = true then 'Si' else 'No' end as suspendida
            ,case when ir.utilizado_albergue = true then 'Si' else 'No' end as albergue
            ,itst.tiempo_suspendido,ir.cantidad_timbre_panico as cantp,ir.cantidad_extintores as cane,ir.cantidad_salidas_emergencias as canse,ivt.evacuacion
            ,string_agg(irpt.proximo, ', ') as proximo
            from infra_predio ip
            inner join infra_riesgo ir on ir.infra_predio_id = ip.id
            inner join infra_tiempo_suspendido_tipo itst on itst.id = ir.infra_tiempo_suspendido_tipo_id
            inner join infra_evacuacion_tipo ivt on ivt.id = ir.infra_evacuacion_tipo_id
            left join infra_riesgo_proximo irp on irp.infra_riesgo_id =ir.id
            left join infra_proximo_tipo irpt on irpt.id = irp.infra_proximo_tipo_id
            where ip.id =` + req.params.idpredio + ` group by ir.clase_suspendida,ir.utilizado_albergue,itst.tiempo_suspendido,ir.cantidad_timbre_panico,ir.cantidad_extintores,ir.cantidad_salidas_emergencias,ivt.evacuacion`;
            let riesgo = await sequelize.query(riesgo_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            const evento_query = `
            select iret.evento, ire.evento_otro as otro, ire.mes_inicial as mesini, ire.mes_final as mesfin
        from infra_predio ip
        inner join infra_riesgo ir on ir.infra_predio_id = ip.id
        inner join infra_riesgo_evento ire on ire.infra_riesgo_id = ir.id
        inner join infra_riesgo_evento_tipo iret on iret.id = ire.infra_riesgo_evento_tipo_id
        where ip.id =` + req.params.idpredio;
            let evento = await sequelize.query(evento_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

            const delito_query = `
            select hecho_delictivo from infra_hecho_delictivo where infra_predio_id =` + req.params.idpredio;
            let delito = await sequelize.query(delito_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });
            const hurto_query = `
            select gt.gestion, tt.turno,ihd.ambiente,ihd.mobiliario,ihd.acciones
            from infra_predio ip
            inner join infra_hurto_delictivo ihd on ihd.infra_predio_id = ip.id
            inner join gestion_tipo gt on gt.id = ihd.gestion_tipo_id
            inner join turno_tipo tt on tt.id = ihd.turno_tipo_id
            where ip.id =` + req.params.idpredio;
            let hurto = await sequelize.query(hurto_query, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });
            console.log(riesgo, evento, delito, hurto);


            res.status(200).send({
                riesgo: riesgo,
                evento: evento,
                delito: delito,
                hurto: hurto
            });
        } catch (exception) {
            console.log(exception);
        }
    },
}