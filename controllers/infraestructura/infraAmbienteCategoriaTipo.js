const InfraAmbienteCategoriaTipo = require('../../models/infraestructura').infraAmbienteCategoriaTipo ;

module.exports = {
  list(req, res) {
    return InfraAmbienteCategoriaTipo
      .findAll({ 
      })
      .then((infraAmbienteCategoriaTipo) => res.status(200).send(infraAmbienteCategoriaTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraAmbienteCategoriaTipo
      .findByPk(req.params.id)
      .then((infraAmbienteCategoriaTipo) => {console.log(infraAmbienteCategoriaTipo);
        if (!infraAmbienteCategoriaTipo) {
          return res.status(404).send({
            message: 'infraAmbienteCategoriaTipo Not Found',
          });
        }
        return res.status(200).send(infraAmbienteCategoriaTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
