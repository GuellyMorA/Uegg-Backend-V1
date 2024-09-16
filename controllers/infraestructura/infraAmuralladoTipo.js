const InfraAmuralladoTipo = require('../../models/infraestructura').infraAmuralladoTipo ;

module.exports = {
  list(req, res) {
    return InfraAmuralladoTipo
      .findAll({ 
      })
      .then((infraAmuralladoTipo) => res.status(200).send(infraAmuralladoTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraAmuralladoTipo
      .findByPk(req.params.id)
      .then((infraAmuralladoTipo) => {console.log(infraAmuralladoTipo);
        if (!infraAmuralladoTipo) {
          return res.status(404).send({
            message: 'infraAmuralladoTipo Not Found',
          });
        }
        return res.status(200).send(infraAmuralladoTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
