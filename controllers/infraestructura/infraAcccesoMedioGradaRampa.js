const InfraAccesoMedioGradaRampa = require('../../models/infraestructura').infraAccesoMedioGradaRampa;


module.exports = {
  list(req, res) {
    return InfraAccesoMedioGradaRampa
      .findAll({ 
      })
      .then((infraAccesoMedioGradaRampa) => res.status(200).send(infraAccesoMedioGradaRampa))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraAccesoMedioGradaRampa
      .findByPk(req.params.id)
      .then((infraAccesoMedioGradaRampa) => {console.log(infraAccesoMedioGradaRampa);
        if (!infraAccesoMedioGradaRampa) {
          return res.status(404).send({
            message: 'infraAccesoMedioGradaRampa Not Found',
          });
        }
        return res.status(200).send(infraAccesoMedioGradaRampa);
      })
      .catch((error) => res.status(400).send(error));
  }, 
};
