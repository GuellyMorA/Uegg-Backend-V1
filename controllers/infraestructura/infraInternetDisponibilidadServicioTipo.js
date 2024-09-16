const InfraInternetDisponibilidadServicioTipo = require('../../models/infraestructura').infra_internet_disponibilidad_servicio_tipo;
// create by gma
module.exports = {
    list(req, res) {
        return InfraInternetDisponibilidadServicioTipo
            .findAll({})
            .then((infraInternetDisponibilidadServicioTipo) => res.status(200).send(infraInternetDisponibilidadServicioTipo))
            .catch((error) => { res.status(400).send(error); });
    },   

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraInternetDisponibilidadServicioTipo
            .findByPk(req.params.id)
            .then((infraInternetDisponibilidadServicioTipo) => {
                console.log(infraInternetDisponibilidadServicioTipo);
                if (!infraInternetDisponibilidadServicioTipo) {
                    return res.status(404).send({
                        message: 'InfraInternetDisponibilidadServicioTipo no encontrado',
                    });
                }
                return res.status(200).send(infraInternetDisponibilidadServicioTipo);
            })
            .catch((error) => res.status(400).send(error));
    },

};