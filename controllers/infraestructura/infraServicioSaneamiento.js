const InfraServicioSaneamiento = require('../../models/infraestructura').infraServicioSaneamiento;
const InfraServicioSaneamientoMedioEliminacionExc = require('../../models/infraestructura').infraServicioSaneamientoMedioEliminacionExc;
const sequelize = InfraServicioSaneamiento.sequelize;
module.exports = {
    list(req, res) {
        return InfraServicioSaneamiento
            .findAll({})
            .then((infraServicioSaneamiento) => res.status(200).send(infraServicioSaneamiento))
            .catch((error) => {
                res.status(400).send(error);
            });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraServicioSaneamiento
            .findByPk(req.params.id)
            .then((infraServicioSaneamiento) => {
                console.log(infraServicioSaneamiento);
                if (!infraServicioSaneamiento) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraServicioSaneamiento);
            })
            .catch((error) => res.status(400).send(error));
    },
    add(req, res) {
        return InfraServicioSaneamiento
            .create({
                infraPredioId: `${ req.body.objServicio.idpredio}`,
                infraMedioEliminacionBasuraTipoId: `${req.body.objServicio.ideliminacion}`,
                infraPeriodicidadEliminacionBasuraTipoId: `${req.body.objServicio.idperiodicidad}`,
            })
            .then(async (infraServicioSaneamiento) => {
                if (req.body.objServicioExc.ideliminacionexc.length > 0) {
                    for (let item of req.body.objServicioExc.ideliminacionexc) {
                        if (item == 5) {
                            await InfraServicioSaneamientoMedioEliminacionExc.create({
                                infraServicioSaneamientoId: infraServicioSaneamiento.id,
                                infraMedioEliminacionExcTipoId: item,
                                otros: req.body.otros,
                            });
                        } else {
                            await InfraServicioSaneamientoMedioEliminacionExc.create({
                                infraServicioSaneamientoId: infraServicioSaneamiento.id,
                                infraMedioEliminacionExcTipoId: item,
                            });
                        }
                    }
                }
                return res.status(200).send(infraServicioSaneamiento);
            }).catch((error) => res.status(400).send(error));
    },

    update(req, res) {
        console.log(req.body);
        return InfraServicioSaneamiento
            .findByPk(req.params.id)
            .then(infraServicioSaneamiento => {
                if (!infraServicioSaneamiento) {
                    return res.status(404).send({
                        message: 'infraServicioSaneamiento Not Found',
                    });
                }
                return infraServicioSaneamiento
                    .update({
                        infraPredioId: `${ req.body.objServicio.idpredio}` || infraServicioSaneamiento.infraPredioId,
                        infraMedioEliminacionBasuraTipoId: `${req.body.objServicio.ideliminacion}` || infraServicioSaneamiento.infraMedioEliminacionBasuraTipoId,
                        infraPeriodicidadEliminacionBasuraTipoId: `${req.body.objServicio.idperiodicidad}` || infraServicioSaneamiento.infraPeriodicidadEliminacionBasuraTipoId,

                    })
                    .then(async (saneamiento) => {console.log('lelga');
                        await InfraServicioSaneamientoMedioEliminacionExc.destroy({
                            where: {
                                infraServicioSaneamientoId: req.params.id
                            }   
                        }); console.log('=================== elimina0');
                            if (req.body.objServicioExc.ideliminacionexc.length > 0) {
                                for (let item of req.body.objServicioExc.ideliminacionexc) {
                                    if (item == 5) {
                                        await InfraServicioSaneamientoMedioEliminacionExc.create({
                                            infraServicioSaneamientoId: req.params.id,
                                            infraMedioEliminacionExcTipoId: item,
                                            otros: req.body.otro,
                                        });
                                    } else {
                                        await InfraServicioSaneamientoMedioEliminacionExc.create({
                                            infraServicioSaneamientoId: req.params.id,
                                            infraMedioEliminacionExcTipoId: item,
                                        });
                                    }
                                }
                            } else {
                            console.log('no existeeeee');
                            } 
                            return res.status(200).send(saneamiento);
                        });
                        
                        
            })
            .catch((error) => res.status(400).send(error));
    },
    delete(req, res) {
        return InfraServicioSaneamiento
            .findByPk(req.params.id)
            .then(infraServicioSaneamiento => {
                if (!infraServicioSaneamiento) {
                    return res.status(400).send({
                        message: 'infraServicioSaneamiento Not Found',
                    });
                }
                return infraServicioSaneamiento
                    .destroy()
                    .then(() => res.status(204).send())
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },
    getServicioSaneamiento(req, res) {
        var consulta = `select iss.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,imebt.id as ideliminacion,imebt.medio_eliminacion_basura as eliminacion, ipebt.id as idperiodicidad, ipebt.periodicidad_eliminacion_basura as periodicidad
	   from infra_predio ip
	   inner join infra_servicio_saneamiento iss on iss.infra_predio_id = ip.id
	   inner join infra_medio_eliminacion_basura_tipo imebt on imebt.id = iss.infra_medio_eliminacion_basura_tipo_id 
	   inner join infra_periodicidad_eliminacion_basura_tipo ipebt on ipebt.id = iss.infra_periodicidad_eliminacion_basura_tipo_id
	   where ip.id =` + req.params.predioId;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((ServicioElectrico) => res.status(200).send(ServicioElectrico))
            .catch((error) => res.status(400).send(error));
    },
 async getServicioSaneamientoExc(req, res) {
        try {
            const eliminacionExc_sql = `select iss.id
               ,string_agg(issmee.id::character varying, ',') as idservelimexc,
                string_agg(imee.id::character varying, ',') as ideliminacionexc,
                string_agg(imee.medio_eliminacion_exc, ',') as eliminacionexc,
                string_agg(issmee.otros, ',') as eventoOtro
            from infra_predio ip
            inner join infra_servicio_saneamiento iss on iss.infra_predio_id = ip.id
            inner join infra_medio_eliminacion_basura_tipo imebt on imebt.id = iss.infra_medio_eliminacion_basura_tipo_id 
            inner join infra_periodicidad_eliminacion_basura_tipo ipebt on ipebt.id = iss.infra_periodicidad_eliminacion_basura_tipo_id
            inner join infra_servicio_saneamiento_medio_eliminacion_exc issmee on issmee.infra_servicio_saneamiento_id = iss.id
            inner join infra_medio_eliminacion_exc_tipo imee on imee.id = issmee.infra_medio_eliminacion_exc_tipo_id
            where ip.id =` + req.params.predioId + ` group by iss.id`;
            let eliminacionExc = await sequelize.query(eliminacionExc_sql, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

  
            const detalleOtro_sql = `select ip.id as idpredio, issmee.infra_medio_eliminacion_exc_tipo_id, issmee.otros
            from infra_predio ip 
            inner join infra_servicio_saneamiento iss on iss.infra_predio_id = ip.id
            inner join infra_servicio_saneamiento_medio_eliminacion_exc issmee on issmee.infra_servicio_saneamiento_id = iss.id
            where ip.id =` + req.params.predioId + ` and issmee.infra_medio_eliminacion_exc_tipo_id =5`;
            let detalleOtro = await sequelize.query(detalleOtro_sql, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            });

         

            res.status(200).send({
                eliminacionExc: eliminacionExc,
                detalleOtro: detalleOtro
            });
        } catch (exeption) {

          
        }
    },

    getSaneamientoBanios(req, res) {
        var consulta = `select ia.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio
		--ia.capacidad,ia.area,ia.largo,ia.ancho,ia.es_utilizado,ia.es_universal,ia.es_servicio,iet.id as idestado,ia.servicio_electrico,ia.servicio_agua,ib.id as idbloque,ib.bloque,ipi.id as idpiso,ipi.piso
		--,iet.id as idestado,iet.estado
        ,iat.id as idambsubtipo, iat.ambiente as ambsubtipo,iact.id as idambtipo, iact.ambiente_categoria as ambiente
		--,ibab.id as idbatban, iabt.id as idartbanio, iabt.artefacto_banio as artbanio, ibab.cantidad_funciona,ibab.cantidad_no_funciona, ibab.servicio_saneamiento
		,case when ia.es_utilizado =true then 'Si' else 'No' end as funciona
		, sum(case when ibab.infra_artefacto_banio_tipo_id ='1' then ibab.cantidad_funciona else 0 end) as letrinaf,
    sum(case when ibab.infra_artefacto_banio_tipo_id ='1' then ibab.cantidad_no_funciona else 0 end) as letrinanf,
    sum(case when ibab.infra_artefacto_banio_tipo_id ='2' then ibab.cantidad_funciona else 0 end) as inodorof,
        sum(case when ibab.infra_artefacto_banio_tipo_id ='2' then ibab.cantidad_no_funciona else 0 end) as inodoronf,
    sum(case when ibab.infra_artefacto_banio_tipo_id ='3' then ibab.cantidad_funciona else 0 end) as urinariof,
    sum(case when ibab.infra_artefacto_banio_tipo_id ='3' then ibab.cantidad_no_funciona else 0 end) as urinarionf,
        sum(case when ibab.infra_artefacto_banio_tipo_id ='4' then ibab.cantidad_funciona else 0 end) as lavamanosf,
        sum(case when ibab.infra_artefacto_banio_tipo_id ='4' then ibab.cantidad_no_funciona else 0 end) as lavamanosnf,
    sum(case when ibab.infra_artefacto_banio_tipo_id ='5' then ibab.cantidad_funciona else 0 end) as duchasf,
    sum(case when ibab.infra_artefacto_banio_tipo_id ='5' then ibab.cantidad_no_funciona else 0 end) as duchasnf
				from infra_predio ip
				inner join infra_ambiente ia on ia.infra_predio_id = ip.id
				inner join infra_ambiente_tipo iat on iat.id =ia.infra_ambiente_tipo_id														--//iat sirve para el SUB TIPO  de ambiente (mas especifico)
				inner join infra_ambiente_categoria_tipo  iact on iact.id=iat.infra_ambiente_categoria_tipo_id and iact.id = 7		--// iact sirve para definir el tipo de ambiente
				--inner join infra_estado_tipo iet on iet.id=ia.infra_estado_tipo_id
				inner join infra_bloque ib on ib.id = ia.infra_bloque_id
				inner join infra_piso ipi on ipi.id = ia.infra_piso_id  
				left join infra_bateria_artefacto_banio ibab on ibab.infra_ambiente_id = ia.id
				left join infra_artefacto_banio_tipo iabt on iabt.id = ibab.infra_artefacto_banio_tipo_id
	 where ip.id =` + req.params.predioId +
            ` group by 
			ia.id,ip.id,ip.jurisdiccion_geografica_id,ia.capacidad,ia.area,ia.largo,ia.ancho,ia.es_utilizado,ia.es_universal,ia.es_servicio,ia.servicio_electrico
			   ,ia.servicio_agua,ib.id,ib.bloque,ipi.id,ipi.piso,iat.id, iat.ambiente,iact.id, iact.ambiente_categoria
			`;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((ServicioElectrico) => res.status(200).send(ServicioElectrico))
            .catch((error) => res.status(400).send(error));
    },
    getSaneamientoVestuarios(req, res) {
        var consulta = `select ia.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,
		ia.area,ia.es_utilizado
		,case when ia.es_utilizado =true then 'Si' else 'No' end as funciona 
		,iet.id as idestado,iet.estado
		,iat.id as idambsubtipo, iat.ambiente as ambsubtipo,iact.id as idambiente, iact.ambiente_categoria as ambiente
			from infra_predio ip
				inner join infra_ambiente ia on ia.infra_predio_id = ip.id
				inner join infra_ambiente_tipo iat on iat.id =ia.infra_ambiente_tipo_id														--//iat sirve para el SUB TIPO  de ambiente (mas especifico)
				inner join infra_ambiente_categoria_tipo  iact on iact.id=iat.infra_ambiente_categoria_tipo_id and iact.id = 8		--// iact sirve para definir el tipo de ambiente
				inner join infra_estado_tipo iet on iet.id=ia.infra_estado_tipo_id
	where ip.id =` + req.params.predioId +
            `group by ia.id, ip.id,ip.jurisdiccion_geografica_id,ia.area,ia.es_utilizado,iet.id,iet.estado,iat.id , iat.ambiente ,iact.id , iact.ambiente_categoria`;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((ServicioElectrico) => res.status(200).send(ServicioElectrico))
            .catch((error) => res.status(400).send(error));
    },
};