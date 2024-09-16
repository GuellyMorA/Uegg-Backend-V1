const InfraInstitucioneducativaPrevencion = require('../../models/infraestructura').infraInstitucioneducativaPrevencion;
const sequelize = InfraInstitucioneducativaPrevencion.sequelize;

module.exports = {
    list(req, res) {
        return InfraInstitucioneducativaPrevencion
            .findAll({})
            .then((infraAccesoMedio) => res.status(200).send(infraAccesoMedio))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraInstitucioneducativaPrevencion
            .findByPk(req.params.id)
            .then((infraInstitucioneducativaPrevencion) => {
                console.log(infraInstitucioneducativaPrevencion);
                if (!infraInstitucioneducativaPrevencion) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraInstitucioneducativaPrevencion);
            })
            .catch((error) => res.status(400).send(error));
    },
    add(req, res) {
        return InfraInstitucioneducativaPrevencion
            .create({
                infraPredioInstitucioneducativaId: `${ req.body.idpredioinst}`,
                disponibleFormulario: `${req.body.disponible}`,
                personalCapacitado: `${req.body.personal}`,
                formularioEdanE: `${req.body.formulario}`
            })
            .then((infraInstitucioneducativaPrevencion) => res.status(200).send(infraInstitucioneducativaPrevencion))
            .catch((error) => res.status(400).send(error));
    },
    update(req, res) {
        return InfraInstitucioneducativaPrevencion
            .findByPk(req.params.id)
            .then(infraInstitucioneducativaPrevencion => {
                if (!infraInstitucioneducativaPrevencion) {
                    return res.status(404).send({
                        message: 'infraInstitucioneducativaPrevencion Not Found                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ',
                    });
                }
                return infraInstitucioneducativaPrevencion
                    .update({
                        infraPredioInstitucioneducativaId: `${ req.body.idpredioinst}` || infraInstitucioneducativaPrevencion.infraPredioInstitucioneducativaId,
                        disponibleFormulario: `${req.body.disponible}` || infraInstitucioneducativaPrevencion.disponibleFormulario,
                        personalCapacitado: `${req.body.personal}` || infraInstitucioneducativaPrevencion.personalCapacitado,
                        formularioEdanE: `${req.body.formulario}` || infraInstitucioneducativaPrevencion.formularioEdanE,
                    })
                    .then(() => res.status(200).send(infraInstitucioneducativaPrevencion))
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },

    async getPrevencion(req, res) {

        let resulInstitucioneducativaPrevencion = await queryPrevencion(req.params.idipie);

        if (resulInstitucioneducativaPrevencion != null) {
            console.log("------------------------------- existe");
            res.status(200).send(resulInstitucioneducativaPrevencion);
        } else {
            console.log("------------------------------- vaciooo", req.params.idipie);
            let result = await InfraInstitucioneducativaPrevencion.create({
                infraPredioInstitucioneducativaId: `${ req.params.idipie }`,
                disponibleFormulario: false,
                personalCapacitado: false,
                formularioEdanE: false
            });
            resulInstitucioneducativaPrevencion = await queryPrevencion(req.params.idipie);
            res.status(200).send(resulInstitucioneducativaPrevencion);
        }
    },

};

function queryPrevencion(infra_predio_institucioneducativa_id) {
    var consulta = `select ipv.id, ipie.id as idpredioinst,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,  ie.id as sie,ie.institucioneducativa, ipv.disponible_formulario as disponible, ipv.personal_capacitado as personal,ipv.formulario_edan_e as formulario
        from infra_predio ip
        inner join infra_predio_institucioneducativa ipie on ipie.infra_predio_id =ip.id
        inner join institucioneducativa ie on ie.id = ipie.institucioneducativa_id
        inner join infra_institucioneducativa_prevencion ipv on ipv.infra_predio_institucioneducativa_id  = ipie.id
        where ipie.id = ` + infra_predio_institucioneducativa_id;
    return sequelize.query(consulta, { type: sequelize.QueryTypes.SELECT, plain: true, raw: true });
}