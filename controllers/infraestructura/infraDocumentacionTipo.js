const InfraDocumentacionTipo = require('../../models/infraestructura').infraDocumentacionTipo ;

module.exports = {
  list(req, res) {
    return InfraDocumentacionTipo
      .findAll({ 
      })
      .then((infraDocumentacionTipo) => res.status(200).send(infraDocumentacionTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraDocumentacionTipo
      .findByPk(req.params.id)
      .then((infraDocumentacionTipo) => {console.log(infraDocumentacionTipo);
        if (!infraDocumentacionTipo) {
          return res.status(404).send({
            message: 'infraDocumentacionTipo Not Found',
          });
        }
        return res.status(200).send(infraDocumentacionTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
