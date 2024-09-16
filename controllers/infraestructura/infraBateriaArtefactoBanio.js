const InfraBateriaArtefactoBanio = require('../../models/infraestructura').infra_bateria_artefacto_banio ;

module.exports = {
  list(req, res) {
    return InfraBateriaArtefactoBanio
      .findAll({ 
      })
      .then((infraBateriaArtefactoBanio) => res.status(200).send(infraBateriaArtefactoBanio))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return InfraBateriaArtefactoBanio
      .findByPk(req.params.id)
      .then((infraBateriaArtefactoBanio) => {
        if (!infraBateriaArtefactoBanio) {
          return res.status(404).send({
            message: 'infraBateriaArtefactoBanio Not Found',
          });
        }
        return res.status(200).send(infraBateriaArtefactoBanio);
      })
      .catch((error) => res.status(400).send(error));
  },

};
