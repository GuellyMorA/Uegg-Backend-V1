const InfraConstruccion = require('../../models/infraestructura').infra_construccion;
const sequelize = InfraConstruccion.sequelize;
module.exports = {
    list(req, res) {
        return InfraConstruccion
            .findAll({})
            .then((infraConstruccion) => res.status(200).send(infraConstruccion))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        return InfraConstruccion
            .findByPk(req.params.id)
            .then((infraConstruccion) => { //console.log(infraConstruccion);
                if (!infraConstruccion) {
                    return res.status(404).send({
                        message: 'infraConstruccion Not Found',
                    });
                }
                return res.status(200).send(infraConstruccion);
            })
            .catch((error) => res.status(400).send(error));
    },

    async add(req, res) {

        const v2 = `select gestion as ges from infra_construccion ifc where ifc.infra_gestion_construccion_tipo_id = 1 AND ifc.infra_caracteristica_construccion_id = ` + req.body.infra_caracteristica_construccion_id;
        let gest = await sequelize.query(v2, { type: sequelize.QueryTypes.SELECT, raw: true });

        let acc = [2, 3];

        if (gest.length != 0) {
            if (req.body.gestion < gest[0].ges) {
                let id_acc = req.body.infra_gestion_construccion_tipo_id
                if (acc.includes(id_acc)) {
                    res.status(200).send({ msg: 'No se pude ampliar ni refaccionar antes de la construcción..' })
                }

            } else {
                const verificaCaracteristica_sql = `select count(*) as cantidad FROM infra_construccion ifc WHERE infra_gestion_construccion_tipo_id = ` + req.body.infra_gestion_construccion_tipo_id + `and ifc.infra_caracteristica_construccion_id = ` + req.body.infra_caracteristica_construccion_id;
                //let validate = await verificaCaracteristica(req.body.infra_gestion_construccion, req.body.infra_caracteristica_construccion);//sequelize.query(verificaCaracteristica_sql, { type: sequelize.QueryTypes.SELECT, raw: true });
                let validate = await sequelize.query(verificaCaracteristica_sql, { type: sequelize.QueryTypes.SELECT, raw: true });
                if (validate[0].cantidad == 0) {
                    return InfraConstruccion
                        .create({
                            infra_gestion_construccion_tipo_id: req.body.infra_gestion_construccion_tipo_id,
                            infra_entidad_ejecutora_id: req.body.infra_entidad_ejecutora_id,
                            gestion: req.body.gestion,
                            discapacidad: req.body.discapacidad,
                            detalle: req.body.detalle,
                            infra_caracteristica_construccion_id: req.body.infra_caracteristica_construccion_id
                        })
                        .then((infraConstruccion) => res.status(200).send(infraConstruccion))
                        .catch((error) => res.status(400).send(error));
                } else {
                    res.status(200).send({ msg: 'El tipo de construcción, ya se está registrado' })
                }
            }
        } else {
            res.status(200).send({ msg: 'No existe fecha de contsruccion..' })
        }







    },
    async update(req, res) {
        const v = `select infra_caracteristica_construccion_id from infra_construccion ifc where ifc.id = ` + req.body.id;

        let id_cons = await sequelize.query(v, { type: sequelize.QueryTypes.SELECT, raw: true });

        const v2 = `select gestion as ges from infra_construccion ifc where ifc.infra_gestion_construccion_tipo_id = 1 AND ifc.infra_caracteristica_construccion_id = ` + id_cons[0].infra_caracteristica_construccion_id;
        let gest = await sequelize.query(v2, { type: sequelize.QueryTypes.SELECT, raw: true });

        let acc = [2, 3];

        if (gest.length != 0) {
            if (req.body.gestion < gest[0].ges) {
                let id_acc = req.body.infra_gestion_construccion_tipo_id
                if (acc.includes(id_acc)) {
                    res.status(200).send({ msg: 'No se pude ampliar ni refaccionar antes de la construcción..' })
                } else {
                    return InfraConstruccion
                        .findByPk(req.params.id)
                        .then(infraConstruccion => {
                            if (!infraConstruccion) {
                                return res.status(404).send({
                                    message: 'infraConstruccion Not Found',
                                });
                            }

                            return infraConstruccion
                                .update({
                                    //infra_gestion_construccion_tipo_id: req.body.infra_gestion_construccion_tipo_id || infraConstruccion.infra_gestion_construccion_tipo_id,
                                    infra_entidad_ejecutora_id: req.body.infra_entidad_ejecutora_id || infraConstruccion.infra_entidad_ejecutora_id,
                                    gestion: req.body.gestion || infraConstruccion.gestion,
                                    discapacidad: req.body.discapacidad || infraConstruccion.discapacidad,
                                    detalle: req.body.detalle || infraConstruccion.detalle,
                                    infra_caracteristica_construccion_id: req.body.infra_caracteristica_construccion_id || infraConstruccion.infra_caracteristica_construccion_id
                                })
                                .then((infraConstruccion) => res.status(200).send(infraConstruccion))
                                .catch((error) => res.status(400).send(error));
                        })
                        .catch((error) => res.status(400).send(error));
                }

            } else {
                return InfraConstruccion
                    .findByPk(req.params.id)
                    .then(infraConstruccion => {
                        if (!infraConstruccion) {
                            return res.status(404).send({
                                message: 'infraConstruccion Not Found',
                            });
                        }

                        return infraConstruccion
                            .update({
                                //infra_gestion_construccion_tipo_id: req.body.infra_gestion_construccion_tipo_id || infraConstruccion.infra_gestion_construccion_tipo_id,
                                infra_entidad_ejecutora_id: req.body.infra_entidad_ejecutora_id || infraConstruccion.infra_entidad_ejecutora_id,
                                gestion: req.body.gestion || infraConstruccion.gestion,
                                discapacidad: req.body.discapacidad || infraConstruccion.discapacidad,
                                detalle: req.body.detalle || infraConstruccion.detalle,
                                infra_caracteristica_construccion_id: req.body.infra_caracteristica_construccion_id || infraConstruccion.infra_caracteristica_construccion_id
                            })
                            .then((infraConstruccion) => res.status(200).send(infraConstruccion))
                            .catch((error) => res.status(400).send(error));
                    })
                    .catch((error) => res.status(400).send(error));
            }
        } else {
            console.log('O-O-O-no existe fecha de contsruccion');
        }









    },

    delete(req, res) {
        return InfraConstruccion
            .findByPk(req.params.id)
            .then(infraConstruccion => {
                if (!infraConstruccion) {
                    return res.status(400).send({
                        message: 'infraConstruccion Not Found',
                    });
                }
                return infraConstruccion
                    .destroy()
                    .then(() => res.status(204).send())
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },

    verificaCaracteristica(gestion_construccion_id, caracteristica_construccion_id) {
        const verificaCaracteristica_sql = `select count(*) as cantidad FROM infra_construccion ifc WHERE infra_gestion_construccion_tipo_id = ` + gestion_construccion_id + `and ifc.infra_caracteristica_construccion_id = ` + caracteristica_construccion_id;
        return sequelize.query(verificaCaracteristica_sql, { type: sequelize.QueryTypes.SELECT, raw: true })
            .then((verificaCaracteristica) => res.status(200).send(verificaCaracteristica))
            .catch((error) => res.status(400).send(error));
    },

};