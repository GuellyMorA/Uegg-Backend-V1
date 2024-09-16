const InfraServicioElectrico = require('../../models/infraestructura').infraServicioElectrico;
const sequelize = InfraServicioElectrico.sequelize;
module.exports = {
    list(req, res) {
        return InfraServicioElectrico
            .findAll({})
            .then((infraServicioElectrico) => res.status(200).send(infraServicioElectrico))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        // console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraServicioElectrico
            .findByPk(req.params.id)
            .then((infraServicioElectrico) => {
                console.log(infraServicioElectrico);
                if (!infraServicioElectrico) {
                    return res.status(404).send({
                        message: 'InfraServicioElectrico Not Found',
                    });
                }
                return res.status(200).send(infraServicioElectrico);
            })
            .catch((error) => res.status(400).send(error));
    },

    add(req, res) {
        console.log('--------------------------------------', req.body);
        return InfraServicioElectrico
            .create({
                infraPredioId: `${ req.body.idpredio}`,
                infraFuenteEnergiaTipoId: `${req.body.idfuenteenergia}`,
                infraInstalacionTipoId: `${req.body.idinstal}`,
                infraDisponibilidadServicioTipoId: `${req.body.iddisponib}`,
                cantidadAmbientePedagogico: `${req.body.cantap}`,
                cantidadAmbienteNoPedagogico: `${req.body.cantanp}`,
                cantidadBanos: `${req.body.cantab}`,
            })
            .then((infraServicioElectrico) => res.status(201).send(infraServicioElectrico))
            .catch((error) => res.status(400).send(error));
    },

    update(req, res) {
        console.log(req.params.body);
        return InfraServicioElectrico
            .findByPk(req.params.id)
            .then(infraServicioElectrico => {
                if (!infraServicioElectrico) {
                    return res.status(404).send({
                        message: 'infraServicioElectrico Not Found',
                    });
                }
                return infraServicioElectrico
                    .update({
                        infraPredioId: `${ req.body.idpredio}` || infraServicioElectrico.infraPredioId,
                        infraFuenteEnergiaTipoId: `${req.body.idfuenteenergia}` || infraServicioElectrico.infraFuenteEnergiaTipoId,
                        infraInstalacionTipoId: `${req.body.idinstal}` || infraServicioElectrico.infraInstalacionTipoId,
                        infraDisponibilidadServicioTipoId: `${req.body.iddisponib}` || infraServicioElectrico.infraDisponibilidadServicioTipoId,
                        cantidadAmbientePedagogico: `${req.body.cantap}` || infraServicioElectrico.cantidadAmbientePedagogico,
                        cantidadAmbienteNoPedagogico: `${req.body.cantanp}` || infraServicioElectrico.cantidadAmbienteNoPedagogico,
                        cantidadBanos: `${req.body.cantab}` || infraServicioElectrico.cantidadBanos,
                    })
                    .then((infraServicioElectrico) => res.status(200).send(infraServicioElectrico))
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },
    delete(req, res) {
        return InfraServicioElectrico
            .findByPk(req.params.id)
            .then(infraServicioElectrico => {
                if (!infraServicioElectrico) {
                    return res.status(400).send({
                        message: 'infraServicioElectrico Not Found',
                    });
                }
                return infraServicioElectrico
                    .destroy()
                    .then(() => res.status(204).send())
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },

    getServicioElectrico(req, res) {
        var consulta = `select ise.id, ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio
		,ifet.id as idfuenteenergia, ifet.fuente_energia as fuenteenergia,iit.id as idinstal, iit.instalacion, idst.id as iddisponib, idst.disponibilidad_servicio,ise.cantidad_ambiente_pedagogico as cantap, ise.cantidad_ambiente_no_pedagogico as cantanp, ise.cantidad_banos as cantab
		from infra_predio ip
		inner join infra_servicio_electrico ise on ise.infra_predio_id = ip.id
		inner join infra_fuente_energia_tipo ifet on ifet.id =ise.infra_fuente_energia_tipo_id
		inner join infra_instalacion_tipo iit on iit.id =ise.infra_instalacion_tipo_id
		inner join infra_disponibilidad_servicio_tipo idst on idst.id = ise.infra_disponibilidad_servicio_tipo_id
		where ip.id =` + req.params.predioId;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((ServicioElectrico) => res.status(200).send(ServicioElectrico))
            .catch((error) => res.status(400).send(error));

    },
    async getCantidadAmbientesElectricidad(req, res) {
        // console.log(req.params.idpredio);
        try {
            const cantidad_ap = ` select count(*) as cantidad
            from infra_ambiente ia
            inner join infra_ambiente_tipo iat on iat.id = ia.infra_ambiente_tipo_id
            inner join infra_ambiente_categoria_tipo iact on iact.id = iat.infra_ambiente_categoria_tipo_id
            where  iact.id in (1,2) and ia.servicio_electrico = true and ia.infra_predio_id =` + req.params.idpredio;
            let cantidadPedag = await sequelize.query(cantidad_ap, { type: sequelize.QueryTypes.SELECT }, { raw: true });
            //  console.log(grada);
            const cantidad_anp = `select count(*) as cantidad
            from infra_ambiente ia
            inner join infra_ambiente_tipo iat on iat.id = ia.infra_ambiente_tipo_id
            inner join infra_ambiente_categoria_tipo iact on iact.id = iat.infra_ambiente_categoria_tipo_id
            where iact.id in (3,4,5,6,8) and ia.servicio_electrico = true and ia.infra_predio_id =` + req.params.idpredio;
            let cantidadNoPedag = await sequelize.query(cantidad_anp, { type: sequelize.QueryTypes.SELECT }, { raw: true });

            const cantidad_b = `select count(*) as cantidad
            from infra_ambiente ia
            inner join infra_ambiente_tipo iat on iat.id = ia.infra_ambiente_tipo_id
            inner join infra_ambiente_categoria_tipo iact on iact.id = iat.infra_ambiente_categoria_tipo_id
            where iact.id in (7) and ia.servicio_electrico = true and ia.infra_predio_id =` + req.params.idpredio;
            let cantidadBanios = await sequelize.query(cantidad_b, { type: sequelize.QueryTypes.SELECT }, { raw: true });

            console.log(cantidadPedag, cantidadNoPedag, cantidadBanios);

            res.status(200).send({
                cantidadPedag: cantidadPedag,
                cantidadNoPedag: cantidadNoPedag,
                cantidadBanios: cantidadBanios
            });
        } catch (exeption) {

        }
    },
};