const InfraAmbienteCondicion = require('../../models/infraestructura').infra_ambiente_condicion ;

module.exports = {
  list(req, res) {
    return InfraAmbienteCondicion
      .findAll({ 
      })
      .then((infraAmbienteCondicion) => res.status(200).send(infraAmbienteCondicion))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return InfraAmbienteCondicion
      .findByPk(req.params.id)
      .then((infraAmbienteCondicion) => {
        if (!infraAmbienteCondicion) {
          return res.status(404).send({
            message: 'infraAmbienteCondicion Not Found',
          });
        }
        return res.status(200).send(infraAmbienteCondicion);
      })
      .catch((error) => res.status(400).send(error));
  },

};
