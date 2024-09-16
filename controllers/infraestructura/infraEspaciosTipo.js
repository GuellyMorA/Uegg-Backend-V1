const InfraEspaciosTipo = require('../../models/infraestructura').infraEspaciosTipo ;

module.exports = {
  list(req, res) {
    return InfraEspaciosTipo
      .findAll({ 
      })
      .then((infraEspaciosTipo) => res.status(200).send(infraEspaciosTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraEspaciosTipo
      .findByPk(req.params.id)
      .then((infraEspaciosTipo) => {console.log(infraEspaciosTipo);
        if (!infraEspaciosTipo) {
          return res.status(404).send({
            message: 'infraEspaciosTipo Not Found',
          });
        }
        return res.status(200).send(infraEspaciosTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
