const InfraCaracteristicaEdificacion = require('../../models/infraestructura').infraCaracteristicaEdificacion ;

module.exports = {
  list(req, res) {
    return InfraCaracteristicaEdificacion
      .findAll({ 
      })
      .then((infraCaracteristicaEdificacion) => res.status(200).send(infraCaracteristicaEdificacion))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraCaracteristicaEdificacion
      .findByPk(req.params.id)
      .then((infraCaracteristicaEdificacion) => {console.log(infraCaracteristicaEdificacion);
        if (!infraCaracteristicaEdificacion) {
          return res.status(404).send({
            message: 'infraCaracteristicaEdificacion Not Found',
          });
        }
        return res.status(200).send(infraCaracteristicaEdificacion);
      })
      .catch((error) => res.status(400).send(error));
  },

};
