const InfraCaracteristicaTipo = require('../../models/infraestructura').infra_caracteristica_tipo ;

module.exports = {
  list(req, res) {
    return InfraCaracteristicaTipo
      .findAll()
      .then((infraCaracteristicaTipo) => res.status(200).send(infraCaracteristicaTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return InfraCaracteristicaTipo
      .findByPk(req.params.id)
      .then((infraCaracteristicaTipo) => {
        if (!infraCaracteristicaTipo) {
          return res.status(404).send({
            message: 'infraCaracteristicaTipo Not Found',
          });
        }
        return res.status(200).send(infraCaracteristicaTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
