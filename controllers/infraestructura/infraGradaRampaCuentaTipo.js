const InfraGradaRampaCuentaTipo = require('../../models/infraestructura').infraGradaRampaCuentaTipo ;

module.exports = {
  list(req, res) {
    return InfraGradaRampaCuentaTipo
      .findAll({ 
      })
      .then((infraGradaRampaCuentaTipo) => res.status(200).send(infraGradaRampaCuentaTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraGradaRampaCuentaTipo
      .findByPk(req.params.id)
      .then((infraGradaRampaCuentaTipo) => {console.log(infraGradaRampaCuentaTipo);
        if (!infraGradaRampaCuentaTipo) {
          return res.status(404).send({
            message: 'infraGradaRampaCuentaTipo Not Found',
          });
        }
        return res.status(200).send(infraGradaRampaCuentaTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
