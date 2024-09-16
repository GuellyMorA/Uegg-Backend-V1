const InfraAmbienteTipo = require('../../models/infraestructura').infra_ambiente_tipo ;

module.exports = {
  list(req, res) {
    return InfraAmbienteTipo
      .findAll()
      .then((infraAmbienteTipo) => res.status(200).send(infraAmbienteTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return InfraAmbienteTipo
      .findByPk(req.params.id)
      .then((infraAmbienteTipo) => {
        if (!infraAmbienteTipo) {
          return res.status(404).send({
            message: 'infraAmbienteTipo Not Found',
          });
        }
        return res.status(200).send(infraAmbienteTipo);
      })
      .catch((error) => res.status(400).send(error));
  },
};
