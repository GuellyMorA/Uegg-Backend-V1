const InfraArtefactoBanioTipo = require('../../models/infraestructura').infra_artefacto_banio_tipo ;

module.exports = {
  // Verificar si solo se lista los activos
  list(req, res) {
    return InfraArtefactoBanioTipo
      .findAll({ 
      })
      .then((infraArtefactoBanioTipo) => res.status(200).send(infraArtefactoBanioTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return InfraArtefactoBanioTipo
      .findByPk(req.params.id)
      .then((infraArtefactoBanioTipo) => {
        if (!infraArtefactoBanioTipo) {
          return res.status(404).send({
            message: 'infraArtefactoBanioTipo Not Found',
          });
        }
        return res.status(200).send(infraArtefactoBanioTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
