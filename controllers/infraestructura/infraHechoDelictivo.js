const InfraHechoDelictivo = require('../../models/infraestructura').infraHechoDelictivo;
const sequelize = InfraHechoDelictivo.sequelize;
module.exports = {
    list(req, res) {
        return InfraHechoDelictivo
            .findAll({})
            .then((infraHechoDelictivo) => res.status(200).send(infraHechoDelictivo))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraHechoDelictivo
            .findByPk(req.params.id)
            .then((infraHechoDelictivo) => {
                console.log(infraHechoDelictivo);
                if (!infraHechoDelictivo) {
                    return res.status(404).send({
                        message: 'infraHechoDelictivo Not Found',
                    });
                }
                return res.status(200).send(infraHechoDelictivo);
            })
            .catch((error) => res.status(400).send(error));
    },
    getDelito(req, res) {
        var consulta = `select * from infra_hecho_delictivo where infra_predio_id =` + req.params.predioId;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((Delito) => res.status(200).send(Delito))
            .catch((error) => res.status(400).send(error));
    },
    add(req, res) {
        return InfraHechoDelictivo
            .create({
                infraPredioId: req.body.infra_predio_id,
                hechoDelictivo: req.body.hecho_delictivo,
            })
            .then((infraHechoDelictivo) => res.status(201).send(infraHechoDelictivo))
            .catch((error) => res.status(400).send(error));
    },
    delete(req, res) {
        return InfraHechoDelictivo
            .findByPk(req.params.id)
            .then(infraHechoDelictivo => {
                if (!infraHechoDelictivo) {
                    return res.status(400).send({
                        message: 'infraHechoDelictivo Not Found',
                    });
                }
                return infraHechoDelictivo
                    .destroy()
                    .then(() => res.status(204).send())
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },

};