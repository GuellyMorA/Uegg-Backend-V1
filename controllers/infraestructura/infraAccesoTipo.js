const InfraAccesoTipo = require('../../models/infraestructura').infraAccesoTipo ;

module.exports = {
  list(req, res) {
    return InfraAccesoTipo
      .findAll({ 
      })
      .then((infraAccesoTipo) => res.status(200).send(infraAccesoTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraAccesoTipo
      .findByPk(req.params.id)
      .then((infraAccesoTipo) => {console.log(infraAccesoTipo);
        if (!infraAccesoTipo) {
          return res.status(404).send({
            message: 'infraAccesoTipo Not Found',
          });
        }
        return res.status(200).send(infraAccesoTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
