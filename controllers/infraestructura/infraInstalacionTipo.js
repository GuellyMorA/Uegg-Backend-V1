const InfraInstalacionTipo = require('../../models/infraestructura').infraInstalacionTipo ;

module.exports = {
  list(req, res) {
    return InfraInstalacionTipo
      .findAll({ 
      })
      .then((infraInstalacionTipo) => res.status(200).send(infraInstalacionTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraInstalacionTipo
      .findByPk(req.params.id)
      .then((infraInstalacionTipo) => {console.log(infraInstalacionTipo);
        if (!infraInstalacionTipo) {
          return res.status(404).send({
            message: 'infraInstalacionTipo Not Found',
          });
        }
        return res.status(200).send(infraInstalacionTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
