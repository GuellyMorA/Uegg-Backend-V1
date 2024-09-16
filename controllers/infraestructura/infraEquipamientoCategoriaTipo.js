const InfraEquipamientoCategoriaTipo = require('../../models/infraestructura').infraEquipamientoCategoriaTipo ;

module.exports = {
  list(req, res) {
    return InfraEquipamientoCategoriaTipo
      .findAll({ 
      })
      .then((infraEquipamientoCategoriaTipo) => res.status(200).send(infraEquipamientoCategoriaTipo))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraEquipamientoCategoriaTipo
      .findByPk(req.params.id)
      .then((infraEquipamientoCategoriaTipo) => {console.log(infraEquipamientoCategoriaTipo);
        if (!infraEquipamientoCategoriaTipo) {
          return res.status(404).send({
            message: 'infraEquipamientoCategoriaTipo Not Found',
          });
        }
        return res.status(200).send(infraEquipamientoCategoriaTipo);
      })
      .catch((error) => res.status(400).send(error));
  },

};
