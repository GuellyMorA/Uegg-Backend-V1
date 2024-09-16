const InfraFuenteEnergiaTipo = require('../../models/infraestructura').infraFuenteEnergiaTipo;

module.exports = {
    list(req, res) {
        return InfraFuenteEnergiaTipo
            .findAll({})
            .then((infraFuenteEnergiaTipo) => res.status(200).send(infraFuenteEnergiaTipo))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraFuenteEnergiaTipo
            .findByPk(req.params.id)
            .then((infraFuenteEnergiaTipo) => {
                console.log(infraFuenteEnergiaTipo);
                if (!infraFuenteEnergiaTipo) {
                    return res.status(404).send({
                        message: 'infraGestionConstruccionTipo Not Found',
                    });
                }
                return res.status(200).send(infraFuenteEnergiaTipo);
            })
            .catch((error) => res.status(400).send(error));
    },

};