const InfraGestionConstruccionTipo = require('../../models/infraestructura').infraGestionConstruccionTipo ;

module.exports = {
  list(req, res) {
    return InfraGestionConstruccionTipo
      .findAll({ 
      })
      .then((infraGestionConstruccionTipo) => res.status(200).send(infraGestionConstruccionTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraGestionConstruccionTipo
      .findByPk(req.params.id)
      .then((infraGestionConstruccionTipo) => {console.log(infraGestionConstruccionTipo);
        if (!infraGestionConstruccionTipo) {
          return res.status(404).send({
            message: 'infraGestionConstruccionTipo Not Found',
          });
        }
        return res.status(200).send(infraGestionConstruccionTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
