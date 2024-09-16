const InfraEstadoTipo = require('../../models/infraestructura').infraEstadoTipo ;

module.exports = {
  list(req, res) {
    return InfraEstadoTipo
      .findAll({ 
      })
      .then((infraEstadoTipo) => res.status(200).send(infraEstadoTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraEstadoTipo
      .findByPk(req.params.id)
      .then((infraEstadoTipo) => {console.log(infraEstadoTipo);
        if (!infraEstadoTipo) {
          return res.status(404).send({
            message: 'infraEstadoTipo Not Found',
          });
        }
        return res.status(200).send(infraEstadoTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
