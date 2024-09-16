const InfraAmbientePredioInstitucioneducativa = require('../../models/infraestructura').infra_ambiente_predio_institucioneducativa ;

module.exports = {
  list(req, res) {
    return InfraAmbientePredioInstitucioneducativa
      .findAll({ 
      })
      .then((infraAmbientePredioInstitucioneducativa) => res.status(200).send(infraAmbientePredioInstitucioneducativa))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraAmbientePredioInstitucioneducativa
      .findByPk(req.params.id)
      .then((infraAmbientePredioInstitucioneducativa) => {console.log(infraAmbientePredioInstitucioneducativa);
        if (!infraAmbientePredioInstitucioneducativa) {
          return res.status(404).send({
            message: 'infraAmbientePredioInstitucioneducativa Not Found',
          });
        }
        return res.status(200).send(infraAmbientePredioInstitucioneducativa);
      })
      .catch((error) => res.status(400).send(error));
  },

};
