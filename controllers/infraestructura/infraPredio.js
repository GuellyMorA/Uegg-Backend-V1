const InfraPredio = require('../../models/infraestructura').infraPredio;
const Jurisdiccion = require('../../models').jurisdiccion_geografica;
const sequelize = InfraPredio.sequelize;

module.exports = {
    list(req, res) {
        return InfraPredio
            .findAll({})
            .then((infraPredio) => res.status(200).send(infraPredio))
            .catch((error) => {
                res.status(400).send(error);
            });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraPredio
            .findByPk(req.params.id)
            .then((infraPredio) => {
                console.log(infraPredio);
                if (!infraPredio) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraPredio);
            })
            .catch((error) => res.status(400).send(error));
    },
    add(req, res) {
        return InfraPredio
            .create({
                zona: req.body.zona, // gma  .toUpperCase(),
                direccion: req.body.direccion // gma  .toUpperCase()
            })
            .then((infraPredio) => res.status(200).send(infraPredio))
            .catch((error) => res.status(400).send(error));
    },
    delete(req, res) {
        return InfraPredio
            .findByPk(req.params.idpredio)
            .then(infraPredio => {
                if (!infraPredio) {
                    return res.status(400).send({
                        message: 'infraPredio Not Found',
                    });
                }
                return infraPredio
                    .destroy()
                    .then(() => res.status(204).send())
                    .catch((infraPredio) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send('eliminado'));
    },
    async verificaPredio(req, res) {
        let jg = await Jurisdiccion.findByPk(req.params.jurisdiccion);
        console.log(jg);
        var verifica_sql = `select *
        from infra_predio ip
        where jurisdiccion_geografica_id=` + req.params.jurisdiccion + ` and ip.gestion_tipo_id =` + req.params.gestion + ` and ip.infra_predio_tipo_id = 1`;
        let verifica = await sequelize.query(verifica_sql, { type: sequelize.QueryTypes.SELECT, plain: true }, { raw: true });
        if (verifica) {
            res.status(200).send({ verifica: verifica });
        } else {
            console.log("no existe predio-predio creado");
            data = {
                jurisdiccionGeograficaId: req.params.jurisdiccion,
                infraPredioTipoId: 1,
                gestionTipoId: req.params.gestion,
                zona: (jg) ? jg.zona : '',
                direccion: (jg) ? jg.direccion : '',
                nombrePredio: 'Edificio Educativo',
                operativo: true
            };
            return InfraPredio.create(data)
                .then((infraPredio) => res.status(200).send({ verifica: infraPredio }))
                .catch((error) => res.status(400).send(error));
        }
    },

    async addPredio(req, res) {
        let data = {};
        if (req.body.infraPredioTipoId == 1) {
            let jg = await Jurisdiccion.findByPk(req.body.jurisdiccionGeograficaId);
            var existe_sql = `select ip.id as predioid, ip.jurisdiccion_geografica_id as jgid, ip.gestion_tipo_id as gestion, ipt.nivel
            from infra_predio ip
            inner join infra_predio_tipo ipt on ip.infra_predio_tipo_id = ipt.id
            where ipt.nivel ='Principal' and jurisdiccion_geografica_id=` + req.body.jurisdiccionGeograficaId;
            let resultado = await sequelize.query(existe_sql, {
                type: sequelize.QueryTypes.SELECT,
                plain: true
            }, {
                raw: true
            });
            if (resultado) {
                res.status(200).send({
                    msg: "existe"
                });
            } else {
                data = {
                    jurisdiccionGeograficaId: req.body.jurisdiccionGeograficaId,
                    infraPredioTipoId: req.body.infraPredioTipoId,
                    gestionTipoId: req.body.gestion,
                    zona: (jg) ? jg.zona : '',
                    direccion: (jg) ? jg.direccion : '',
                    nombrePredio: 'Edificio Educativo'
                };
                return InfraPredio
                    .create(data)
                    .then((infraPredio) => res.status(200).send(infraPredio))
                    .catch((error) => res.status(400).send(error));
            }
        } else {
            data = {
                jurisdiccionGeograficaId: req.body.jurisdiccionGeograficaId,
                infraPredioTipoId: req.body.infraPredioTipoId,
                gestionTipoId: req.body.gestion,
                nombrePredio: req.body.nombrePredio
            };
            return InfraPredio
                .create(data)
                .then((infraPredio) => res.status(200).send(infraPredio))
                .catch((error) => res.status(400).send(error));
        }
    },
    update(req, res) {
        let dataUpdate = '';
        if (req.body.tipo == 1) {
            dataUpdate = {
                jurisdiccionGeograficaId: req.body.jurisdiccionGeograficaId || infraPredio.jurisdiccionGeograficaId,
                zona: req.body.zona || infraPredio.zona,
                direccion: req.body.direccion || infraPredio.direccion,
            };
        } else {
            if (req.body.tipo == 2) {
                dataUpdate = {
                    tramoTroncal: req.body.tramo_troncal || infraPredio.tramoTroncal,
                    tramoComplementario: req.body.tramo_complementario || infraPredio.tramoComplementario,
                    tramoVecinal: req.body.tramo_vecinal || infraPredio.tramoVecinal,
                };
            }
        }
        return InfraPredio
            .findByPk(req.params.id)
            .then(infraPredio => {
                if (!infraPredio) {
                    return res.status(404).send({
                        message: 'infraPredio Not Found',
                    });
                }
                return infraPredio
                    .update(dataUpdate)
                    .then((infraPredio) => res.status(200).send(infraPredio))
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },


    async getDatosUe(req, res) {
        var datosUe_sql = `SELECT jg.*,p.zona,p.direccion,p.gestion_tipo_id as gestion, ipt.nivel as prediotipo
                            from infra_predio p inner join infra_predio_tipo ipt on ipt.id = p.infra_predio_tipo_id
                           join (SELECT jg.id,lt4.codigo as cod_depto,lt4.lugar as departamento,lt3.codigo as cod_prov,lt3.lugar as provincia
                           ,lt2.codigo as cod_mun,lt2.lugar AS municipio,lt1.codigo as cod_canton,lt1.lugar AS canton
                           ,lt.codigo as cod_local,lt.lugar AS localidad,
                           d.id AS codigo_dist,d.distrito
                           from jurisdiccion_geografica jg
                           INNER JOIN lugar_tipo lt on jg.lugar_tipo_id_localidad = lt.id
                           INNER JOIN lugar_tipo lt1 on lt.lugar_tipo_id = lt1.id
                           INNER JOIN lugar_tipo lt2 on lt1.lugar_tipo_id = lt2.id
                           INNER JOIN lugar_tipo lt3 on lt2.lugar_tipo_id = lt3.id
                           INNER JOIN lugar_tipo lt4 on lt3.lugar_tipo_id = lt4.id
                           INNER JOIN distrito_tipo d on jg.distrito_tipo_id = d.id) as jg on p.jurisdiccion_geografica_id = jg.id
                           WHERE p.id =` + req.params.predioId;
        return sequelize.query(datosUe_sql, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((datosUe) => res.status(200).send(datosUe))
            .catch((error) => res.status(400).send(error));
        console.log(datosUe_sql);
    },


    getListaUe(req, res) {
        var otra_sql = `select ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio, ict.area_total,ict.area_construida, iet.id as idespacios,iet.espacio,itt.id as idtopografia,itt.topografia,
			iat.id as idamurallado,iat.amurallado
			from infra_predio ip 
			inner join infra_caracteristica_terreno ict on ict.infra_predio_id =ip.id
			left join infra_caracteristicas_espacio ice on ice.infra_caracteristica_terreno_id =ict.id 
			left join infra_espacios_tipo iet on iet.id=ice.infra_espacio_tipo_id
			inner join infra_topografia_tipo itt on itt.id=ict.topografia_tipo_id
			inner join infra_amurallado_tipo iat on iat.id = ict.amurallado_tipo_id
			where ip.jurisdiccion_geografica_id =` + req.params.jurisdiccion;
        return sequelize.query(otra_sql, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((listaUe) => res.status(200).send(listaUe))
            .catch((error) => res.status(400).send(error));
    },

    getTotalViasAcceso(req, res) {
        var total_vias_sql = `SELECT a.id,a.acceso,sum(b.dias) as dias, sum(b.horas) as horas,sum(b.minutos) as minutos ,sum(b.costo) as costo  
        FROM (SELECT * from infra_acceso_tipo) as a  left join infra_acceso_predio_transporte b on  b.infra_acceso_tipo_id =a.id 
        and a.es_vigente = true and b.infra_predio_id= ` + req.params.predioId + `
        group by a.id,a.acceso`
        return sequelize.query(total_vias_sql, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then(async(TotalViasAcceso) => {
                let arrayPreguntas = [];
                for (const item of TotalViasAcceso) {
                    const resumen_sql = `select ict.medio_transporte_categoria as tipo
                        ,string_agg(imt.descripcion_medio_transporte, ',') as transporte
                        ,sum(iapt.dias) as dias
                        ,sum(iapt.horas) as horas
                        ,sum(iapt.minutos) as minutos
                        ,sum(iapt.costo) as costo
                        ,iapt.infra_acceso_tipo_id
                        from infra_acceso_predio_transporte iapt
                        INNER JOIN infra_medio_transporte_tipo imt on iapt.medio_transporte_tipo_id = imt.id 
                        INNER JOIN infra_medio_transporte_categoria_tipo ict on  imt.infra_medio_transporte_tipo_id = ict.id 
                        where infra_predio_id = ` + req.params.predioId + ` and iapt.infra_acceso_tipo_id = ` + item.id + `
                        group by ict.medio_transporte_categoria,iapt.infra_acceso_tipo_id`;
                    let resumen = await sequelize.query(resumen_sql, {
                        type: sequelize.QueryTypes.SELECT
                    }, {
                        raw: true
                    });
                    item["resumen"] = resumen;
                    arrayPreguntas.push(item);
                }
                res.status(200).send(arrayPreguntas)
            })
            .catch((error) => res.status(400).send(error));
    },
    getPredio(req, res) {
        var consulta = `select ip.id as predioid, ip.jurisdiccion_geografica_id as jgid, ip.gestion_tipo_id as gestion,ip.zona as zona,ip.direccion as direccion, ipt.nivel,nombre_predio
    	from infra_predio ip
    	inner join infra_predio_tipo ipt on ip.infra_predio_tipo_id = ipt.id
    	where jurisdiccion_geografica_id=` + req.params.jurisdiccion + ` and ip.gestion_tipo_id =` + req.params.gestion;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((Predio) => res.status(200).send(Predio))
            .catch((error) => res.status(400).send(error));

    },
    //Consulta para Caracteristicas de Predio
    getPredioCaracteristica(req, res) {
        var consulta = `SELECT ic.id, igct.id as infra_gestion_construccion_tipo_id, igct.gestion_construccion, ic.gestion, iee.id as infra_entidad_ejecutora_id,iee.entidad_ejecutora,ic.detalle,ic.discapacidad 
          FROM  infra_construccion ic 
          INNER JOIN infra_caracteristica_construccion icc on ic.infra_caracteristica_construccion_id = icc.id 
          INNER JOIN infra_entidad_ejecutora_tipo iee on ic.infra_entidad_ejecutora_id = iee.id 
          INNER JOIN infra_gestion_construccion_tipo igct on ic.infra_gestion_construccion_tipo_id=igct.id
          WHERE icc.infra_predio_id =` + req.params.predioId;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT,
                raw: true
            })
            .then((Predio) => res.status(200).send(Predio))
            .catch((error) => res.status(400).send(error));

    },
    getInformacionPredio(req, res) {
        var consulta = `SELECT pre.id,j.id as codEdificio,intp.nivel as tipoPredio,pre.nombre_predio as nombrePredio, pre.direccion as dir, pre.zona as zona
                   from infra_predio pre
                   inner join infra_predio_tipo intp on pre.infra_predio_tipo_id = intp.id
                   inner join jurisdiccion_geografica j on pre.jurisdiccion_geografica_id = j.id
                   WHERE pre.id =` + req.params.predioId;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT,
                raw: true
            })
            .then((Predio) => res.status(200).send(Predio))
            .catch((error) => res.status(400).send(error));
    },

    async getValidacionCierre(req, res) {

        try {
            var validacion = [];
            var predios = await InfraPredio.findAll({ where: { jurisdiccion_geografica_id: req.params.jurisdiccion, gestion_tipo_id: req.params.gestion }, attributes: ['id', 'nombrePredio'] });
            console.log(predios);
            var cant = 0;
            var valido = false;
            try {
                for (let item of predios) {
                    //console.log("cant ===========>>>", cant);
                    var consulta_query = `select sp_validacion_infraestructura_web('` + req.params.gestion + `','` + req.params.jurisdiccion + `','` + item.id + `') as obs`;
                    var obs = await sequelize.query(consulta_query, {
                        type: sequelize.QueryTypes.SELECT
                    }, {
                        raw: true
                    });
                    if (obs.length > 0) {
                        valido = false;
                    } else {
                        valido = true;
                    }
                    validacion[cant] = {
                        mensaje: obs,
                        predio: item.nombrePredio,
                        id: item.id,
                        valido: valido
                    };
                    cant++;
                }

                res.status(200).send({ 'validacion': validacion });
            } catch (error) {
                res.status(400).send(error);
            }

        } catch (exception) {
            res.status(400).send(exception);
        }

    },
    async cerrarOperativo(req, res) {
        console.log(req);
        var cierre = false;
        var mensaje = 'finalizado';
        try {
            var predios = await InfraPredio.findAll({ where: { jurisdiccion_geografica_id: req.params.jurisdiccion, gestion_tipo_id: req.params.gestion }, attributes: ['id', 'nombrePredio'] });
            console.log(predios);
            var cant = 0;
            try {
                for (let item of predios) {
                    await InfraPredio.update({
                        operativo: cierre
                    }, {
                        where: {
                            id: item.id
                        }
                    })

                    cant++;
                }

                res.status(200).send({ 'mensaje': mensaje });
            } catch (error) {
                res.status(400).send(error);
            }

        } catch (exception) {
            res.status(400).send(exception);
        }

        /*  return InfraPredio
             .findByPk(req.params.id)
             .then(infraPredio => {
                 if (!infraPredio) {
                     return res.status(404).send({
                         message: 'infraPredio Not Found',
                     });
                 }
                 return infraPredio
                     .update({
                         operativo: cierre || infraPredio.operativo,
                     })
                     .then((infraPredio) => res.status(200).send(infraPredio))
                     .catch((error) => res.status(400).send(error));
             })
             .catch((error) => res.status(400).send(error)); */
    },
    async habilitarOperativo(req, res) {
        // console.log(req);
        var cierre = true;
        var mensaje = 'habilitado';
        try {
            var predios = await InfraPredio.findAll({ where: { jurisdiccion_geografica_id: req.params.jurisdiccion, gestion_tipo_id: req.params.gestion }, attributes: ['id', 'nombrePredio'] });
            console.log(predios);
            var cant = 0;
            try {
                for (let item of predios) {
                    await InfraPredio.update({
                        operativo: cierre
                    }, {
                        where: {
                            id: item.id
                        }
                    })

                    cant++;
                }

                res.status(200).send({ 'mensaje': mensaje });
            } catch (error) {
                res.status(400).send(error);
            }

        } catch (exception) {
            res.status(400).send(exception);
        }
    },


};