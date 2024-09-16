const InfraAccesoEdificacion = require('../../models/infraestructura').infra_acceso_edificacion;
const InfraAccesoMedio = require('../../models/infraestructura').infra_acceso_medio;
const InfraAccesoMedioGradaRampa = require('../../models/infraestructura').infraAccesoMedioGradaRampa; //infra_acceso_medio_grada_rampa;
const InfraAccesoEdificacionSenialetica = require('../../models/infraestructura').infraAccesoEdificacionSenialetica; //infra_acceso_edificacion_senialetica;
const sequelize = InfraAccesoEdificacion.sequelize;
module.exports = {
    list(req, res) {
        return InfraAccesoEdificacion
            .findAll({})
            .then((infraAccesoEdificacion) => res.status(200).send(infraAccesoEdificacion))
            .catch((error) => {
                res.status(400).send(error);
            });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraAccesoEdificacion
            .findByPk(req.params.id)
            .then((infraAccesoEdificacion) => {
                console.log(infraAccesoEdificacion);
                if (!infraAccesoEdificacion) {
                    return res.status(404).send({
                        message: 'infraAccesoEdificacion Not Found',
                    });
                }
                return res.status(200).send(infraAccesoEdificacion);
            })
            .catch((error) => res.status(400).send(error));
    },

    getAccesibilidad(req, res) {
        var consulta = `
    select  * from infra_acceso_edificacion  where  infra_predio_id = ` + req.params.predioid;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((Accesibilidad) => res.status(200).send(Accesibilidad))
            .catch((error) => res.status(400).send(error));

    },
    updateAcceso(req, res) {
        return InfraAccesoEdificacion
            .findByPk(req.params.id)
            .then(infraAccesoEdificacion => {
                if (!infraAccesoEdificacion) {
                    return res.status(404).send({
                        message: 'infraAccesoEdificacion Not Found',
                    });
                }
                return infraAccesoEdificacion
                    .update({
                        ascensor: `${ req.body.ascensor}` || infraAccesoEdificacion.ascensor,
                        acceso_universal: `${ req.body.universal}` || infraAccesoEdificacion.acceso_universal,
                        conoce_normativa: `${ req.body.normativa}` || infraAccesoEdificacion.conoce_normativa
                    })
                    .then(async(infraAccesoEdificacion) => {
                        let idaccesomedio;
                        if (req.body.esGrada) {
                            if (req.body.objgrada.idmedio == 0) {
                                let gradanueva = await InfraAccesoMedio.create({
                                    infra_acceso_edificacion_id: infraAccesoEdificacion.id,
                                    infra_medio_acceso_tipo_id: 1,
                                    infra_ubicacion_tipo_id: req.body.objgrada.idubicacion
                                });
                                idaccesomedio = gradanueva.id;
                            } else {
                                idaccesomedio = req.body.objgrada.idmedio;
                                await InfraAccesoMedio.update({
                                    infra_ubicacion_tipo_id: req.body.objgrada.idubicacion
                                }, {
                                    where: {
                                        id: idaccesomedio
                                    }
                                })
                            }
                            let result = await InfraAccesoMedioGradaRampa.destroy({
                                where: {
                                    'infraAccesoMedioId': idaccesomedio
                                }
                            });
                            for (let item of req.body.objgrada.idgradarampa) {
                                await InfraAccesoMedioGradaRampa.create({
                                    infraAccesoMedioId: idaccesomedio,
                                    infraGradaRampaId: item
                                });
                            }
                        } else {
                            await InfraAccesoMedioGradaRampa.destroy({
                                where: {
                                    infraAccesoMedioId: req.body.objgrada.idmedio
                                }
                            });
                            await InfraAccesoMedio.destroy({
                                where: {
                                    infra_acceso_edificacion_id: req.body.objgrada.idacceso,
                                    infra_medio_acceso_tipo_id: req.body.objgrada.idmediotipo
                                }
                            });

                        }
                        if (req.body.esRampa == true) {
                            if (req.body.objrampa.idmedio == 0) {
                                let rampanueva = await InfraAccesoMedio.create({
                                    infra_acceso_edificacion_id: infraAccesoEdificacion.id,
                                    infra_medio_acceso_tipo_id: 2,
                                    infra_ubicacion_tipo_id: req.body.objgrada.idubicacion
                                });
                                idaccesomedio = rampanueva.id;
                            } else {
                                idaccesomedio = req.body.objrampa.idmedio;
                                await InfraAccesoMedio.update({
                                    infra_ubicacion_tipo_id: req.body.objrampa.idubicacion
                                }, {
                                    where: {
                                        id: idaccesomedio
                                    }
                                })
                            }
                            let result = await InfraAccesoMedioGradaRampa.destroy({
                                where: {
                                    'infraAccesoMedioId': idaccesomedio
                                }
                            });
                            for (let item of req.body.objrampa.idgradarampa) {
                                await InfraAccesoMedioGradaRampa.create({
                                    infraAccesoMedioId: idaccesomedio,
                                    infraGradaRampaId: item
                                });
                            }
                        } else {
                            await InfraAccesoMedioGradaRampa.destroy({
                                where: {
                                    infraAccesoMedioId: req.body.objrampa.idmedio
                                }
                            });
                            await InfraAccesoMedio.destroy({
                                where: {
                                    infra_acceso_edificacion_id: req.body.objrampa.idacceso,
                                    infra_medio_acceso_tipo_id: req.body.objrampa.idmediotipo
                                }
                            });
                        }

                        if (req.body.esSenial == true) {
                            if (req.body.objsenial.idmedio == 0) {
                                let senialnueva = await InfraAccesoMedio.create({
                                    infra_acceso_edificacion_id: infraAccesoEdificacion.id,
                                    infra_medio_acceso_tipo_id: 3,
                                    infra_ubicacion_tipo_id: req.body.objsenial.idubicacion
                                });
                                idaccesomedio = senialnueva.id;
                            } else {
                                idaccesomedio = req.body.objsenial.idmedio;
                                await InfraAccesoMedio.update({
                                    infra_ubicacion_tipo_id: req.body.objsenial.idubicacion
                                }, {
                                    where: {
                                        id: idaccesomedio
                                    }
                                })
                            }
                            let result = await InfraAccesoEdificacionSenialetica.destroy({
                                where: {
                                    'infraAccesoMedioId': idaccesomedio
                                }
                            });
                            for (let item of req.body.objsenial.idsenial) {
                                await InfraAccesoEdificacionSenialetica.create({
                                    infraAccesoMedioId: idaccesomedio,
                                    infraSenialeticaTipoId: item
                                });
                            }

                        } else {
                            await InfraAccesoEdificacionSenialetica.destroy({
                                where: {
                                    infraAccesoMedioId: req.body.objsenial.idmedio
                                }
                            });
                            await InfraAccesoMedio.destroy({
                                where: {
                                    infra_acceso_edificacion_id: req.body.objsenial.idacceso,
                                    infra_medio_acceso_tipo_id: req.body.objsenial.idmediotipo
                                }
                            });
                        }
                        res.status(200).send(infraAccesoEdificacion)
                    })
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },
    addAcceso(req, res) {
        //  console.log(req.body);
        return InfraAccesoEdificacion
            .create({
                infra_predio_id: `${ req.body.predioid}`,
                ascensor: `${ req.body.ascensor}`,
                acceso_universal: `${ req.body.universal}`,
                conoce_normativa: `${ req.body.normativa}`
            })
            .then(async(infraAccesoEdificacion) => {

                if (req.body.esGrada) {

                    let gradanueva = await InfraAccesoMedio.create({
                        infra_acceso_edificacion_id: infraAccesoEdificacion.id,
                        infra_medio_acceso_tipo_id: 1,
                        infra_ubicacion_tipo_id: req.body.objgrada.idubicacion
                    });

                    for (let item of req.body.objgrada.idgradarampa) {
                        await InfraAccesoMedioGradaRampa.create({
                            infraAccesoMedioId: gradanueva.id,
                            infraGradaRampaId: item
                        });
                    }

                }
                if (req.body.esRampa) {

                    let rampanueva = await InfraAccesoMedio.create({
                        infra_acceso_edificacion_id: infraAccesoEdificacion.id,
                        infra_medio_acceso_tipo_id: 2,
                        infra_ubicacion_tipo_id: req.body.objrampa.idubicacion
                    });

                    for (let item of req.body.objrampa.idgradarampa) {
                        await InfraAccesoMedioGradaRampa.create({
                            infraAccesoMedioId: rampanueva.id,
                            infraGradaRampaId: item
                        });
                    }

                }
                if (req.body.esSenial) {

                    let senialnueva = await InfraAccesoMedio.create({
                        infra_acceso_edificacion_id: infraAccesoEdificacion.id,
                        infra_medio_acceso_tipo_id: 3,
                        infra_ubicacion_tipo_id: req.body.objsenial.idubicacion
                    });

                    for (let item of req.body.objsenial.idsenial) {
                        await InfraAccesoEdificacionSenialetica.create({
                            infraAccesoMedioId: senialnueva.id,
                            infraSenialeticaTipoId: item
                        });
                    }

                }
                res.status(200).send(infraAccesoEdificacion)
            })
            .catch((error) => res.status(400).send(error));
    },


    getRampasGradas(req, res) {
        var consulta = `	select iae.id, iae.infra_predio_id,
    sum(case when imat.id ='1' then 1 else 0 end) as grada,
    sum(case when imat.id ='2' then 1 else 0 end) as rampa,
    sum(case when imat.id ='3' then 1 else 0 end) as senial

      from infra_acceso_edificacion iae
      inner join infra_acceso_medio iam on iam.infra_acceso_edificacion_id = iae.id
      inner join  infra_medio_acceso_tipo imat on imat.id = iam.infra_medio_acceso_tipo_id 
      where iae.infra_predio_id =` + req.params.predioid + `
      group by iae.id, iae.infra_predio_id `;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((RampasGradas) => res.status(200).send(RampasGradas))
            .catch((error) => res.status(400).send(error));

    },

    getGRSbyId(req, res) {
        var consulta = `select distinct ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,iae.ascensor,iae.id as accesomedioid,iae.acceso_universal,iae.conoce_normativa,imat.id as accesotipoid, imat.medio_acceso as accesotipo,
    string_agg(iamgr.id::character varying, ',') as idaccesogr,
    string_agg(igrct.id::character varying, ',') as idcaract,
    string_agg(igrct.caracteristica_grada, ',') as caracteristica,
    string_agg(ist.id::character varying, ',') as idsenial,
    string_agg(ist.senialetica, ',') as senial,
    string_agg(it.id::character varying, ',') as ididioma,
    string_agg(it.idioma, ',') as idioma
    from infra_predio ip
    inner join infra_acceso_edificacion iae on iae.infra_predio_id =ip.id
    inner	join infra_acceso_medio iam on iam.infra_acceso_edificacion_id = iae.id
    inner join infra_medio_acceso_tipo imat on imat.id =iam.infra_medio_acceso_tipo_id and imat.id=` + req.params.GRSId + `
    left join infra_acceso_medio_grada_rampa iamgr on iamgr.infra_acceso_medio_id=iam.id
		left join infra_grada_rampa_cuenta_tipo igrct on igrct.id =iamgr.infra_grada_rampa_id
		left join infra_acceso_edificacion_senialetica iaes on iaes.infra_acceso_medio_id =iam.id
		left join infra_senialetica_tipo ist on iaes.infra_senialetica_tipo_id = ist.id
		left join idioma_tipo it on it.id = iaes.idioma_tipo_id
		where  ip.id = ` + req.params.predioid + `group by ip.id,ip.jurisdiccion_geografica_id,iae.ascensor,iae.id,iae.acceso_universal,iae.conoce_normativa,imat.id,imat.medio_acceso`;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((RampasGradas) => res.status(200).send(RampasGradas))
            .catch((error) => res.status(400).send(error));
    },
};