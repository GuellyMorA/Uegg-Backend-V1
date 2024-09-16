const InfraRiesgoEvento = require('../../models/infraestructura').infraRiesgoEvento;
const InfraRiesgo = require('../../models/infraestructura').infraRiesgo;
module.exports = {
    list(req, res) {
        return InfraRiesgoEvento
            .findAll({})
            .then((infraRiesgoEvento) => res.status(200).send(infraRiesgoEvento))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        return InfraRiesgoEvento
            .findByPk(req.params.id)
            .then((infraRiesgoEvento) => {
                console.log(infraRiesgoEvento);
                if (!infraRiesgoEvento) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraRiesgoEvento);
            })
            .catch((error) => res.status(400).send(error));
    },
    async add(req, res) {
        let riesgoid;
        if (req.body.infraRiesgoId == 0) {
            let result = await InfraRiesgo.create({
                infraPredioId: `${ req.body.idpredio}`,
                claseSuspendida: false,
                utilizadoAlbergue: false
            });
            riesgoid = result.id;
        } else {
            riesgoid = req.body.infraRiesgoId;
        }

        return await InfraRiesgoEvento
            .create({
                infraRiesgoEventoTipoId: req.body.infraRiesgoEventoTipoId,
                infraRiesgoId: riesgoid,
                mesInicial: req.body.mesInicial,
                mesFinal: req.body.mesFinal,
                eventoOtro: req.body.eventoOtro,
            })
            .then((infraRiesgoEvento) => res.status(200).send(infraRiesgoEvento))
            .catch((error) => res.status(400).send(error));
    },
    delete(req, res) {
        return InfraRiesgoEvento
            .findByPk(req.params.id)
            .then(infraRiesgoEvento => {
                if (!infraRiesgoEvento) {
                    return res.status(400).send({
                        message: 'infraRiesgoEvento Not Found',
                    });
                }
                return infraRiesgoEvento
                    .destroy()
                    .then(() => res.status(204).send())
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },

};