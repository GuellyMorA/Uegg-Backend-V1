const InfraEntidadEjecutoraTipo = require('../../models/infraestructura').infraEntidadEjecutoraTipo ;

module.exports = {
  list(req, res) {
    return InfraEntidadEjecutoraTipo
      .findAll({ 
      })
      .then((infraEntidadEjecutoraTipo) => res.status(200).send(infraEntidadEjecutoraTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraEntidadEjecutoraTipo
      .findByPk(req.params.id)
      .then((infraEntidadEjecutoraTipo) => {console.log(infraEntidadEjecutoraTipo);
        if (!infraEntidadEjecutoraTipo) {
          return res.status(404).send({
            message: 'infraEntidadEjecutoraTipo Not Found',
          });
        }
        return res.status(200).send(infraEntidadEjecutoraTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
