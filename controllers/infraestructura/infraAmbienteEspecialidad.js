const InfraAmbienteEspecialidad = require('../../models/infraestructura').infra_ambiente_especialidad ;

module.exports = {
  list(req, res) {
    return InfraAmbienteEspecialidad
      .findAll({ 
      })
      .then((infraAmbienteEspecialidad) => res.status(200).send(infraAmbienteEspecialidad))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return InfraAmbienteEspecialidad
      .findByPk(req.params.id)
      .then((infraAmbienteEspecialidad) => {
        if (!infraAmbienteEspecialidad) {
          return res.status(404).send({
            message: 'infraAmbienteEspecialidad Not Found',
          });
        }
        return res.status(200).send(infraAmbienteEspecialidad);
      })
      .catch((error) => res.status(400).send(error));
  },

};
