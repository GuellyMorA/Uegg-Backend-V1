const InfraEvacuacionTipo = require('../../models/infraestructura').infraEvacuacionTipo ;

module.exports = {
  list(req, res) {
    return InfraEvacuacionTipo
      .findAll({ 
      })
      .then((infraEvacuacionTipo) => res.status(200).send(infraEvacuacionTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraEvacuacionTipo
      .findByPk(req.params.id)
      .then((infraEvacuacionTipo) => {console.log(infraEvacuacionTipo);
        if (!infraEvacuacionTipo) {
          return res.status(404).send({
            message: 'infraEvacuacionTipo Not Found',
          });
        }
        return res.status(200).send(infraEvacuacionTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
