const InfraEdificacionTipo = require('../../models/infraestructura').infraEdificacionTipo ;

module.exports = {
  list(req, res) {
    return InfraEdificacionTipo
      .findAll({ 
      })
      .then((infraEdificacionTipo) => res.status(200).send(infraEdificacionTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraEdificacionTipo
      .findByPk(req.params.id)
      .then((infraEdificacionTipo) => {console.log(infraEdificacionTipo);
        if (!infraEdificacionTipo) {
          return res.status(404).send({
            message: 'infraEdificacionTipo Not Found',
          });
        }
        return res.status(200).send(infraEdificacionTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
