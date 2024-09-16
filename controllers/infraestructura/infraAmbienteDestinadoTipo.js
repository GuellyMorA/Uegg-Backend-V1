const InfraAmbienteDestinadoTipo = require('../../models/infraestructura').infra_ambiente_destinado_tipo ;

module.exports = {
  list(req, res) {
    return InfraAmbienteDestinadoTipo
      .findAll({ 
      })
      .then((infraAmbienteDestinadoTipo) => res.status(200).send(infraAmbienteDestinadoTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return InfraAmbienteDestinadoTipo
      .findByPk(req.params.id)
      .then((infraAmbienteDestinadoTipo) => {
        if (!infraAmbienteDestinadoTipo) {
          return res.status(404).send({
            message: 'infraAmbienteDestinadoTipo Not Found',
          });
        }
        return res.status(200).send(infraAmbienteDestinadoTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
