const InfraPredioInstitucioneducativa = require('../../models/infraestructura').infra_predio_institucioneducativa;
const Institucioneducativa = require('../../models').institucioneducativa;
const sequelize = InfraPredioInstitucioneducativa.sequelize;

module.exports = {
    list(req, res) {
        return InfraPredioInstitucioneducativa
            .findAll()
            .then((infraPredioInstitucioneducativa) => res.status(200).send(infraPredioInstitucioneducativa))
            .catch((error) => {
                res.status(400).send(error);
            });
    },

    getById(req, res) {
        return InfraPredioInstitucioneducativa
            .findByPk(req.params.id)
            .then((infraPredioInstitucioneducativa) => {
                if (!infraPredioInstitucioneducativa) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraPredioInstitucioneducativa);
            })
            .catch((error) => res.status(400).send(error));
    },

    add(req, res) {
        console.log(req.body);
        return InfraPredioInstitucioneducativa
            .create({
                infra_predio_id: `${ req.body.idpredio}`,
                infra_tenencia_tipo_id: `${ req.body.tenenciaid}`,
                //persona_id: req.body.personaId,
                institucioneducativa_id: `${ req.body.sie}`,
                representante: `${ req.body.representante}`,
                bth_especialidad: `${ req.body.bth}`,
            })
            .then((infraPredioInstitucioneducativa) => res.status(201).send(infraPredioInstitucioneducativa))
            .catch((error) => res.status(400).send(error));
    },

    update(req, res) {
        return InfraPredioInstitucioneducativa
            .findByPk(req.params.id)
            .then(infraPredioInstitucioneducativa => {
                if (!infraPredioInstitucioneducativa) {
                    return res.status(404).send({
                        message: 'infraPredioInstitucioneducativa Not Found',
                    });
                }
                return infraPredioInstitucioneducativa
                    .update({
                        infra_predio_id: `${ req.body.idpredio}` || infraPredioInstitucioneducativa.infra_predio_id,
                        infra_tenencia_tipo_id: `${ req.body.tenenciaid}` || infraPredioInstitucioneducativa.infra_tenencia_tipo_id,
                        //  persona_id: `${ req.body.personaId}` || infraPredioInstitucioneducativa.persona_id,
                        institucioneducativa_id: `${ req.body.sie}` || infraPredioInstitucioneducativa.institucioneducativa_id,
                        representante: `${ req.body.representante}` || infraPredioInstitucioneducativa.representante,
                        bth_especialidad: `${ req.body.bth}` || infraPredioInstitucioneducativa.bth_especialidad,
                    })
                    .then(() => res.status(200).send(infraPredioInstitucioneducativa))
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },

    delete(req, res) {
        return InfraPredioInstitucioneducativa
            .findByPk(req.params.id)
            .then(infraPredioInstitucioneducativa => {
                if (!infraPredioInstitucioneducativa) {
                    return res.status(400).send({
                        message: 'infraPredioInstitucioneducativa Not Found',
                    });
                }
                return infraPredioInstitucioneducativa
                    .destroy()
                    .then(() => res.status(204).send())
                    .catch((error) => res.status(400).send('error'));
            })
            .catch((error) => res.status(400).send(error));
    },

    addAutomatico(req, res) {
        console.log('-------------------------------------', req.body);
        return Institucioneducativa.findAll({
                attributes: ['id'],
                where: { le_juridicciongeografica_id: req.body.jurisdiccion }
            })
            .then(async(institucioneducativa) => {
                console.log('asdasdasd', institucioneducativa);
                for (let item of institucioneducativa) {
                    await InfraPredioInstitucioneducativa.create({
                        infra_predio_id: `${ req.body.predio}`,
                        institucioneducativa_id: item.id,
                        bth_especialidad: `${ req.body.bth_especialidad}`
                    });
                }
                res.status(200).send(institucioneducativa)
            })
            .catch((error) => res.status(400).send(error));
    },

    getUEoperan(req, res) {
        var consulta = `
		select ipie.id, ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,  ie.id as sie,ie.institucioneducativa,iet.descripcion,(per.paterno||' '||per.materno||' '||per.nombre) as director,
		per.celular as telefono,itt.id as tenenciaid,itt.tenencia,ipie.representante,ipie.bth_especialidad as bth
        from infra_predio ip
		inner join infra_predio_institucioneducativa  ipie on ipie.infra_predio_id =ip.id
		inner join institucioneducativa ie on ie.id = ipie.institucioneducativa_id
		inner join institucioneducativa_tipo iet on iet.id =ie.institucioneducativa_tipo_id
		left join maestro_inscripcion mi on mi.institucioneducativa_id =ie.id and mi.cargo_tipo_id = 1 and mi.es_vigente_administrativo = true and mi.gestion_tipo_id =2019
		left join persona per on per.id = mi.persona_id
		left join infra_tenencia_tipo itt on itt.id = ipie.infra_tenencia_tipo_id
		where  ip.id = ` + req.params.predioid;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((uEoperan) => res.status(200).send(uEoperan))
            .catch((error) => res.status(400).send(error));

    },

    getListUEoperan(req, res) {
        var consulta = `
		select ipie.id, ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,  ie.id as sie,ie.institucioneducativa,iet.descripcion,(per.paterno||' '||per.materno||' '||per.nombre) as director,
		per.celular as telefono
		
		from infra_predio ip
		inner join infra_predio_institucioneducativa  ipie on ipie.infra_predio_id =ip.id
		inner join institucioneducativa ie on ie.id = ipie.institucioneducativa_id
		inner join institucioneducativa_tipo iet on iet.id =ie.institucioneducativa_tipo_id
		inner join maestro_inscripcion mi on mi.institucioneducativa_id =ie.id and mi.cargo_tipo_id = 1 and mi.es_vigente_administrativo = true and mi.gestion_tipo_id =2019
		inner join persona per on per.id = mi.persona_id
		where ip.id = ` + req.params.predioid;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((uEoperan) => res.status(200).send(uEoperan))
            .catch((error) => res.status(400).send(error));
    },

    getListUE(req, res) {
        var consulta = `
        select ie.id as sie,ie.institucioneducativa,iet.descripcion,(per.paterno||' '||per.materno||' '||per.nombre) as maestro,
        per.celular as telefono
        from institucioneducativa ie 
        inner join jurisdiccion_geografica jg on jg.id = ie.le_juridicciongeografica_id
        inner join institucioneducativa_tipo iet on iet.id =ie.institucioneducativa_tipo_id
        inner join maestro_inscripcion mi on mi.institucioneducativa_id =ie.id and mi.cargo_tipo_id = 1 and mi.es_vigente_administrativo = true and mi.gestion_tipo_id =2019
        inner join persona per on per.id = mi.persona_id
        where ie.id = ` + req.params.sie;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((ListUE) => res.status(200).send(ListUE))
            .catch((error) => res.status(400).send(error));

    },
    getByIdExist(req, res) {
        var consulta = `select count(*) from infra_predio_institucioneducativa where infra_predio_id = ${req.params.predioId} and institucioneducativa_id = ${req.params.sie}`;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((ListUE) => res.status(200).send(ListUE))
            .catch((error) => res.status(400).send(error));
    },
};