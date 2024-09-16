const InfraInternetDisponibilidadTipo = require('../../models/infraestructura').infra_internet_disponibilidad_tipo;  //infraInternetDisponibilidadTipo;

module.exports = {
    list(req, res) {
        return InfraInternetDisponibilidadTipo
            .findAll({})
            .then((infraInternetDisponibilidadTipo) => res.status(200).send(infraInternetDisponibilidadTipo)) //.then((InfraInternetDisponibilidadTipo) => res.status(200).send(InfraInternetDisponibilidadTipo))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraInternetDisponibilidadTipo
            .findByPk(req.params.id)
            .then((infraInternetDisponibilidadTipo) => {//gma
                console.log(infraInternetDisponibilidadTipo);
                if (!infraInternetDisponibilidadTipo) {
                    return res.status(404).send({
                        message: 'InfraInternetDisponibilidadTipo no encontrado',
                    });
                }
                return res.status(200).send(infraInternetDisponibilidadTipo); // gma return res.status(200).send(InfraInternetDisponibilidadTipo);
            })
            .catch((error) => res.status(400).send(error));
    },

};