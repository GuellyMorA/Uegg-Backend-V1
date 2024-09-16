const InfraAccesoEdificacionSenialetica = require('../../models/infraestructura').infraAccesoEdificacionSenialetica ;


module.exports = {
  list(req, res) {
    return InfraAccesoEdificacionSenialetica
      .findAll({ 
      })
      .then((infraAccesoEdificacionSenialetica) => res.status(200).send(infraAccesoEdificacionSenialetica))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraAccesoEdificacionSenialetica
      .findByPk(req.params.id)
      .then((infraAccesoEdificacionSenialetica) => {console.log(infraAccesoEdificacionSenialetica);
        if (!infraAccesoEdificacionSenialetica) {
          return res.status(404).send({
            message: 'infraAccesoEdificacionSenialetica Not Found',
          });
        }
        return res.status(200).send(infraAccesoEdificacionSenialetica);
      })
      .catch((error) => res.status(400).send(error));
  }, 
};
