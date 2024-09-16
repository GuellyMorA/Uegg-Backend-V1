const InfraCaracteristicasEspacio = require('../../models/infraestructura').infraCaracteristicasEspacio ;
const sequelize = InfraCaracteristicasEspacio.sequelize;
module.exports = {
  list(req, res) {
    return InfraCaracteristicasEspacio
      .findAll({ 
      })
      .then((infraCaracteristicasEspacio) => res.status(200).send(infraCaracteristicasEspacio))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraCaracteristicasEspacio
      .findByPk(req.params.id)
      .then((infraCaracteristicasEspacio) => {console.log(infraCaracteristicasEspacio);
        if (!infraCaracteristicasEspacio) {
          return res.status(404).send({
            message: 'infraCaracteristicasEspacio Not Found',
          });
        }
        return res.status(200).send(infraCaracteristicasEspacio);
      })
      .catch((error) => res.status(400).send(error));
  },
  add(req, res) {
    return InfraCaracteristicasEspacio
      .create({        
       infraCaracteristicaTerrenoId: req.body.terrenoid,  
       infraEspacioTipoId: req.body.espacioid, 
      })
      .then((infraCaracteristicasEspacio) => res.status(201).send(infraCaracteristicasEspacio))
      .catch((error) => res.status(400).send(error));
  },
  deleteEspacios(req, res) {
		var consulta = `delete from infra_caracteristicas_espacio where infra_caracteristica_terreno_id = ${req.params.idterreno}`;
			return sequelize.query(consulta, {
					type: sequelize.QueryTypes.SELECT
				}, {
					raw: true
				})
        .then((Espacios) => res.status(200).send({
          message: 'infraCaracteristicasEspacio borrado con exito !!' }))
				.catch((error) => res.status(400).send(error));
	},
  

};
