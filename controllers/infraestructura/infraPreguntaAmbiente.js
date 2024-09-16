const InfraPreguntaAmbiente = require('../../models/infraestructura').infra_pregunta_ambiente;

module.exports = {
    list(req, res) {
        return InfraPreguntaAmbiente
            .findAll({})
            .then((infraPreguntaAmbiente) => res.status(200).send(infraPreguntaAmbiente))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraPreguntaAmbiente
            .findByPk(req.params.id)
            .then((infraPreguntaAmbiente) => {
                console.log(infraPreguntaAmbiente);
                if (!infraPreguntaAmbiente) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraPreguntaAmbiente);
            })
            .catch((error) => res.status(400).send(error));
    },

};