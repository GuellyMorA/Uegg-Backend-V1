const InfraDisponibilidadServicioTipo = require('../../models/infraestructura').infraDisponibilidadServicioTipo ;

module.exports = {
  list(req, res) {
    return InfraDisponibilidadServicioTipo
      .findAll({ 
      })
      .then((infraDisponibilidadServicioTipo) => res.status(200).send(infraDisponibilidadServicioTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraDisponibilidadServicioTipo
      .findByPk(req.params.id)
      .then((infraDisponibilidadServicioTipo) => {console.log(infraDisponibilidadServicioTipo);
        if (!infraDisponibilidadServicioTipo) {
          return res.status(404).send({
            message: 'infraDisponibilidadServicioTipo Not Found',
          });
        }
        return res.status(200).send(infraDisponibilidadServicioTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
