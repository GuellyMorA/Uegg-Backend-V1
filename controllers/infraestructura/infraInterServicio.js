const InfraInternetServicio = require('../../models/infraestructura').infra_internet_servicio; // gma infraInternetServicio;

const sequelize = InfraInternetServicio.sequelize;

module.exports = {

    list(req, res) {
        return InfraInternetServicio
            .findAll({})
            .then((infraInternetServicio) => res.status(200).send(infraInternetServicio))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraInternetServicio
            .findByPk(req.params.id)
            .then((infraInternetServicio) => {
                console.log(infraInternetServicio);
                if (!infraInternetServicio) {
                    return res.status(404).send({
                        message: 'infraInternetServicio Not Found',
                    });
                }
                return res.status(200).send(infraInternetServicio);
            })
            .catch((error) => res.status(400).send(error));
    },

    add(req, res) {
        console.log(';o', req.body);
        return InfraInternetServicio
            .create({
                institucioneducativa_id: req.body.institucioneducativa_id,
                fechaRegistro: req.body.fechaRegistro,
                fechaModificacion: req.body.fechaModificacion,
                tipo: req.body.tipo,
                empi: req.body.empi,
                peri: req.body.peri,
                disp: req.body.disp
            })
            .then((InfraInternetServicio) => res.status(201).send(InfraInternetServicio))
            .catch((error) => res.status(400).send(error));
    }
}