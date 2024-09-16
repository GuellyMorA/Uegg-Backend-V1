const InfraCondicion = require('../../models/infraestructura').infra_condicion ;

module.exports = {
  list(req, res) {
    return InfraCondicion
      .findAll()
      .then((infraCondicion) => res.status(200).send(infraCondicion))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return InfraCondicion
      .findByPk(req.params.id)
      .then((infraCondicion) => {
        if (!infraCondicion) {
          return res.status(404).send({
            message: 'infraCondicion Not Found',
          });
        }
        return res.status(200).send(infraCondicion);
      })
      .catch((error) => res.status(400).send(error));
  },

};
