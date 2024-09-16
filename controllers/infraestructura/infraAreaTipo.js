const InfraAreaTipo = require('../../models/infraestructura').infra_area_tipo;

module.exports = {
  list(req, res) {
    return InfraAreaTipo
      .findAll({ 
      })
      .then((infraAreaTipo) => res.status(200).send(infraAreaTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return InfraAreaTipo
      .findByPk(req.params.id)
      .then((infraAreaTipo) => {
        if (!infraAreaTipo) {
          return res.status(404).send({
            message: 'infraAreaTipo Not Found',
          });
        }
        return res.status(200).send(infraAreaTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
