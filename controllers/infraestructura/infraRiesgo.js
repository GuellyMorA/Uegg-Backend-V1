const InfraRiesgo = require('../../models/infraestructura').infraRiesgo;
const InfraRiesgoProximo = require('../../models/infraestructura').infraRiesgoProximo;
const sequelize = InfraRiesgo.sequelize;

module.exports = {
    list(req, res) {
        return InfraRiesgo
            .findAll({})
            .then((infraRiesgo) => res.status(200).send(infraRiesgo))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        // console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraRiesgo
            .findByPk(req.params.id)
            .then((infraRiesgo) => {
                console.log(infraRiesgo);
                if (!infraRiesgo) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraRiesgo);
            })
            .catch((error) => res.status(400).send(error));
    },
    async add(req, res) {
        console.log('----------------------', req.body);
        return await InfraRiesgo
            .create({
                infraPredioId: `${ req.body.objRiesgos.idpredio}`,
                claseSuspendida: `${req.body.objRiesgos.suspendido}`,
                infraTiempoSuspendidoTipoId: `${req.body.objRiesgos.idtiempo}`,
                utilizadoAlbergue: `${req.body.objRiesgos.albergue}`,
                cantidadTimbrePanico: `${req.body.objRiesgos.cantpanico}`,
                cantidadExtintores: `${req.body.objRiesgos.cantextintor}`,
                cantidadSalidasEmergencias: `${req.body.objRiesgos.cantsalidas}`,
                infraEvacuacionTipoId: `${req.body.objRiesgos.idevacuacion}`
            })
            .then(async(infraRiesgo) => {
                if (req.body.objProximo.idproximo.length > 0) {
                    for (let item of req.body.objProximo.idproximo) {
                        await InfraRiesgoProximo.create({
                            infraRiesgoId: infraRiesgo.id,
                            infraProximoTipoId: item
                        });
                    }
                }
                return res.status(200).send(infraRiesgo);
            }).catch((error) => res.status(400).send(error));
    },
    update(req, res) {
        console.log('hgfjh', req.params.body);
        return InfraRiesgo
            .findByPk(req.params.id)
            .then(infraRiesgo => {
                if (!infraRiesgo) {
                    return res.status(404).send({
                        message: 'infraRiesgo Not Found',
                    });
                }
                return infraRiesgo
                    .update({
                        infraPredioId: `${ req.body.objRiesgos.idpredio}` || infraRiesgo.infraPredioId,
                        claseSuspendida: `${req.body.objRiesgos.suspendido}` || infraRiesgo.claseSuspendida,
                        infraTiempoSuspendidoTipoId: `${req.body.objRiesgos.idtiempo}` || infraRiesgo.infraTiempoSuspendidoTipoId,
                        utilizadoAlbergue: `${req.body.objRiesgos.albergue}` || infraRiesgo.utilizadoAlbergue,
                        cantidadTimbrePanico: `${req.body.objRiesgos.cantpanico}` || infraRiesgo.cantidadTimbrePanico,
                        cantidadExtintores: `${req.body.objRiesgos.cantextintor}` || infraRiesgo.cantidadExtintores,
                        cantidadSalidasEmergencias: `${req.body.objRiesgos.cantsalidas}` || infraRiesgo.cantidadSalidasEmergencias,
                        infraEvacuacionTipoId: `${req.body.objRiesgos.idevacuacion}` || infraRiesgo.infraEvacuacionTipoId,
                    })
                    .then(async(riesgos) => {
                        await InfraRiesgoProximo.destroy({
                            where: {
                                infraRiesgoId: req.params.id
                            }
                        });
                        if (req.body.objProximo.idproximo.length > 0) {
                            for (let item of req.body.objProximo.idproximo) {
                                await InfraRiesgoProximo.create({
                                    infraRiesgoId: req.params.id,
                                    infraProximoTipoId: item
                                });
                            }
                        } else {
                            console.log('no existeeeee');
                        }
                        return res.status(200).send(riesgos);
                    });


            })
            .catch((error) => res.status(400).send(error));
    },

    getRiesgoEdificio(req, res) {
        var consulta = ` select ir.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,iet.id as idevacuacion,iet.evacuacion,itst.id as idtiempo, itst.tiempo_suspendido as tiemposuspendido,ir.clase_suspendida as suspendido, ir.utilizado_albergue as albergue, ir.cantidad_timbre_panico as cantpanico, ir.cantidad_extintores as cantextintor,ir.cantidad_salidas_emergencias as cantsalidas
        from infra_predio ip
        inner join infra_riesgo ir on ir.infra_predio_id = ip.id
        left join infra_evacuacion_tipo iet on iet.id =ir.infra_evacuacion_tipo_id
        left join infra_tiempo_suspendido_tipo itst on itst.id = ir.infra_tiempo_suspendido_tipo_id
        where ip.id =` + req.params.predioId;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((RiesgoEdificio) => res.status(200).send(RiesgoEdificio))
            .catch((error) => res.status(400).send(error));
    },
    getRiesgoEdificioEvento(req, res) {
        var consulta = `select ire.id --,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio
        ,ire.mes_inicial as mesini, ire.mes_final as mesfin, ire.evento_otro as otro,ire.id as idriesgoevento,iret.id as ideventotipo, iret.evento
        from infra_predio ip
        inner join infra_riesgo ir on ir.infra_predio_id = ip.id
        inner join infra_riesgo_evento ire on ire.infra_riesgo_id = ir.id
        inner join infra_riesgo_evento_tipo iret on iret.id = ire.infra_riesgo_evento_tipo_id
        where ip.id =` + req.params.predioId;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((RiesgoEdificioEvento) => res.status(200).send(RiesgoEdificioEvento))
            .catch((error) => res.status(400).send(error));
    },
    getRiesgoProximo(req, res) {
        var consulta = `select ir.id as idriesgo, ip.id as idpredio,
        string_agg(irp.id::character varying, ',') as idriesgoproximo,
string_agg(irpt.id::character varying, ',') as idproximo,
string_agg(irpt.proximo, ',') as proximo
       from infra_predio ip
       inner join infra_riesgo ir on ir.infra_predio_id = ip.id 
       inner join infra_riesgo_proximo irp on irp.infra_riesgo_id =ir.id
       inner join infra_proximo_tipo irpt on irpt.id = irp.infra_proximo_tipo_id
       where ip.id = ` + req.params.predioId + ` group by ir.id,ip.id`;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((riesgoProximo) => res.status(200).send(riesgoProximo))
            .catch((error) => res.status(400).send(error));
    },
}