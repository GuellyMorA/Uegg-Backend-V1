const InfraMedioEliminacionExcTipo = require('../../models/infraestructura').infraMedioEliminacionExcTipo;

module.exports = {
    list(req, res) {
        return InfraMedioEliminacionExcTipo
            .findAll({})
            .then((infraMedioEliminacionExcTipo) => res.status(200).send(infraMedioEliminacionExcTipo))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraMedioEliminacionExcTipo
            .findByPk(req.params.id)
            .then((infraMedioEliminacionExcTipo) => {
                console.log(infraMedioEliminacionExcTipo);
                if (!infraMedioEliminacionExcTipo) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraMedioEliminacionExcTipo);
            })
            .catch((error) => res.status(400).send(error));
    },

};