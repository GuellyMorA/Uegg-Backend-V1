const InfraEquipamientoBrigadaTipo = require('../../models/infraestructura').infraEquipamientoBrigadaTipo ;

module.exports = {
  list(req, res) {
    return InfraEquipamientoBrigadaTipo
      .findAll({ 
      })
      .then((infraEquipamientoBrigadaTipo) => res.status(200).send(infraEquipamientoBrigadaTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraEquipamientoBrigadaTipo
      .findByPk(req.params.id)
      .then((infraEquipamientoBrigadaTipo) => {console.log(infraEquipamientoBrigadaTipo);
        if (!infraEquipamientoBrigadaTipo) {
          return res.status(404).send({
            message: 'infraEquipamientoBrigadaTipo Not Found',
          });
        }
        return res.status(200).send(infraEquipamientoBrigadaTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
