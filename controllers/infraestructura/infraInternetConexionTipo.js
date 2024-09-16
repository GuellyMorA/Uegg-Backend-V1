const InfraInternetConexionTipo = require('../../models/infraestructura').infra_internet_conexion_tipo; //gma infraInternetConexionTipo;

module.exports = {
    list(req, res) {
        return InfraInternetConexionTipo
            .findAll({})
            .then((infraInternetConexionTipo) => res.status(200).send(infraInternetConexionTipo)) //.then((InfraInternetConexionTipo) => res.status(200).send(InfraInternetConexionTipo))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraInternetConexionTipo
            .findByPk(req.params.id)
            .then((infraInternetConexionTipo) => { // gma
                console.log(infraInternetConexionTipo);
                if (!infraInternetConexionTipo) {
                    return res.status(404).send({
                        message: 'InfraInternetConexionTipo no encontrado',
                    });
                }
                return res.status(200).send(infraInternetConexionTipo); // gma
            })
            .catch((error) => res.status(400).send(error));
    },

};