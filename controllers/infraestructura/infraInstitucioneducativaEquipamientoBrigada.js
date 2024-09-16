const InfraInstitucioneducativaEquipamientoBrigada = require('../../models/infraestructura').infraInstitucioneducativaEquipamientoBrigada ;

module.exports = {
  list(req, res) {
    return InfraInstitucioneducativaEquipamientoBrigada
      .findAll()
      .then((infraInstitucioneducativaEquipamientoBrigada) => res.status(200).send(infraInstitucioneducativaEquipamientoBrigada))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraInstitucioneducativaEquipamientoBrigada
      .findByPk(req.params.id)
      .then((infraInstitucioneducativaEquipamientoBrigada) => {console.log(infraInstitucioneducativaEquipamientoBrigada);
        if (!infraInstitucioneducativaEquipamientoBrigada) {
          return res.status(404).send({
            message: 'infraInstitucioneducativaEquipamientoBrigada Not Found',
          });
        }
        return res.status(200).send(infraInstitucioneducativaEquipamientoBrigada);
      })
      .catch((error) => res.status(400).send(error));
  },
 
};
