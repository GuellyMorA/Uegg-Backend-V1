const InfraServicioAgua = require('../../models/infraestructura').infraServicioAgua;
const sequelize = InfraServicioAgua.sequelize;
module.exports = {
    list(req, res) {
        return InfraServicioAgua
            .findAll({})
            .then((infraServicioAgua) => res.status(200).send(infraServicioAgua))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraServicioAgua
            .findByPk(req.params.id)
            .then((infraServicioAgua) => {
                console.log(infraServicioAgua);
                if (!infraServicioAgua) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraServicioAgua);
            })
            .catch((error) => res.status(400).send(error));
    },

    add(req, res) {
        console.log('--------------------------------------', req.body);
        return InfraServicioAgua
            .create({
                infraPredioId: `${ req.body.idpredio}`,
                infraMedioSuministroAguaId: `${req.body.idsuministro}`,
                tanqueAlmacenamiento: `${req.body.tanque}`,
                bombaAgua: `${req.body.bomba}`,
                infraDisponibilidadServicioTipoId: `${req.body.iddisponibilidad}`,
                infraAguaUsoTipoId: `${req.body.idaguauso}`,
                infraPurificadorAguaTipoId: `${req.body.idpurificador}`,
                cantidadAmbientesAgua: `${req.body.cantidad}`,
            })
            .then((infraServicioAgua) => res.status(201).send(infraServicioAgua))
            .catch((error) => res.status(400).send(error));
    },

    update(req, res) {
        console.log(req.params.body);
        return InfraServicioAgua
            .findByPk(req.params.id)
            .then(infraServicioAgua => {
                if (!infraServicioAgua) {
                    return res.status(404).send({
                        message: 'infraServicioAgua Not Found',
                    });
                }
                return infraServicioAgua
                    .update({
                        infraPredioId: `${ req.body.idpredio}` || infraServicioAgua.infraPredioId,
                        infraMedioSuministroAguaId: `${req.body.idsuministro}` || infraServicioAgua.infraMedioSuministroAguaId,
                        tanqueAlmacenamiento: `${req.body.tanque}` || infraServicioAgua.tanqueAlmacenamiento,
                        bombaAgua: `${req.body.bomba}` || infraServicioAgua.bombaAgua,
                        infraDisponibilidadServicioTipoId: `${req.body.iddisponibilidad}` || infraServicioAgua.infraDisponibilidadServicioTipoId,
                        infraAguaUsoTipoId: `${req.body.idaguauso}` || infraServicioAgua.infraAguaUsoTipoId,
                        infraPurificadorAguaTipoId: `${req.body.idpurificador}` || infraServicioAgua.infraPurificadorAguaTipoId,
                        cantidadAmbientesAgua: `${req.body.cantidad}` || infraServicioAgua.cantidadAmbientesAgua,
                    })
                    .then((infraServicioAgua) => res.status(200).send(infraServicioAgua))
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },
    delete(req, res) {
        return InfraServicioAgua
            .findByPk(req.params.id)
            .then(infraServicioAgua => {
                if (!infraServicioAgua) {
                    return res.status(400).send({
                        message: 'infraServicioAgua Not Found',
                    });
                }
                return infraServicioAgua
                    .destroy()
                    .then(() => res.status(204).send())
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },
    getServicioAgua(req, res) {
        var consulta = `select isa.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,isa.tanque_almacenamiento as tanque,isa.bomba_agua as bomba, isa.cantidad_ambientes_agua as cantidad,ipat.id as idpurificador, ipat.purificador_agua as purificador,iaut.id as idaguauso, iaut.agua_uso as aguauso,imsat.id as idsuministro, imsat.medio_suministro_agua as suministro, idst.id as iddisponibilidad, idst.disponibilidad_servicio as disponibilidad
	   from infra_predio ip
		   inner join infra_servicio_agua isa on isa.infra_predio_id = ip.id
		   inner join infra_purificador_agua_tipo ipat on ipat.id = isa.infra_purificador_agua_tipo_id
		   inner join infra_agua_uso_tipo iaut on iaut.id = isa.infra_agua_uso_tipo_id 
		   inner join infra_medio_suministro_agua_tipo imsat on imsat.id = isa.infra_medio_suministro_agua_id
		   inner join infra_disponibilidad_servicio_tipo idst on idst.id = isa.infra_disponibilidad_servicio_tipo_id
		   where ip.id =` + req.params.predioId +
            `group by isa.id,ip.id ,ip.jurisdiccion_geografica_id ,isa.tanque_almacenamiento,isa.bomba_agua,isa.cantidad_ambientes_agua,ipat.id, ipat.purificador_agua,iaut.id, iaut.agua_uso,imsat.id, imsat.medio_suministro_agua,idst.id, idst.disponibilidad_servicio`;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((ServicioAgua) => res.status(200).send(ServicioAgua))
            .catch((error) => res.status(400).send(error));

    },
    getCantidad(req, res) {
        var consulta = `select count(*) as cantidad
        from infra_ambiente ia
        inner join infra_ambiente_tipo iat on iat.id = ia.infra_ambiente_tipo_id
        inner join infra_ambiente_categoria_tipo iact on iact.id = iat.infra_ambiente_categoria_tipo_id
        where iact.id not in (7) and ia.servicio_agua = true and ia.infra_predio_id =` + req.params.idpredio;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((ServicioAgua) => res.status(200).send(ServicioAgua))
            .catch((error) => res.status(400).send(error));

    },


};