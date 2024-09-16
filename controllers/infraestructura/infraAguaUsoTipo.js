const InfraAguaUsoTipo = require('../../models/infraestructura').infraAguaUsoTipo;

module.exports = {
    list(req, res) {
        return InfraAguaUsoTipo
            .findAll({})
            .then((infraAguaUsoTipo) => res.status(200).send(infraAguaUsoTipo))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraAguaUsoTipo
            .findByPk(req.params.id)
            .then((infraAguaUsoTipo) => {
                console.log(infraAguaUsoTipo);
                if (!infraAguaUsoTipo) {
                    return res.status(404).send({
                        message: 'infraAguaUsoTipo Not Found',
                    });
                }
                return res.status(200).send(infraAguaUsoTipo);
            })
            .catch((error) => res.status(400).send(error));
    },

};