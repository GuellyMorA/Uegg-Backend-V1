const InfraInternetEmpresasTipo = require('../../models/infraestructura').infra_internet_empresa_servicio_tipo ; 
module.exports = {
    list(req, res) {
        return InfraInternetEmpresasTipo
            .findAll({})
            .then((infraInternetEmpresasTipo) => res.status(200).send(infraInternetEmpresasTipo)) // gma .then((InfraInternetEmpresasTipo) => res.status(200).send(InfraInternetEmpresasTipo))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraInternetEmpresasTipo
            .findByPk(req.params.id)
            .then((infraInternetEmpresasTipo) => { // gma
                console.log(infraInternetEmpresasTipo);
                if (!infraInternetEmpresasTipo) {
                    return res.status(404).send({
                        message: 'InfraInternetEmpresasTipo no encontrado',
                    });
                }
                return res.status(200).send(infraInternetEmpresasTipo); // gma return res.status(200).send(InfraInternetEmpresasTipo);
            })
            .catch((error) => res.status(400).send(error));
    },

};