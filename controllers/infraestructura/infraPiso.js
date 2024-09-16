const InfraPiso = require('../../models/infraestructura').infraPiso ;
const sequelize = InfraPiso.sequelize;

module.exports = {
	list(req, res) {
		return InfraPiso
			.findAll({})
			.then((infraPiso) => res.status(200).send(infraPiso))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraPiso
			.findByPk(req.params.id)
			.then((infraPiso) => {console.log(infraPiso);
				if (!infraPiso) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraPiso);
			})
			.catch((error) => res.status(400).send(error));
	},
	add(req, res) {console.log(req.body);
		return InfraPiso
		  .create({        
			piso: req.body.piso,
			infraBloqueId: req.body.bloqueid	
		  })
		  .then((infraPiso) => res.status(201).send(infraPiso))
		  .catch((error) => res.status(400).send(error));
	  },

	  deletePisos(req, res) {
		var consulta = `delete from infra_piso where infra_bloque_id = ${req.params.idbloque}`;
			return sequelize.query(consulta, {
					type: sequelize.QueryTypes.SELECT
				}, {
					raw: true
				})
        .then((Espacios) => res.status(200).send({
          message: 'borrado con exito !!' }))
				.catch((error) => res.status(400).send(error));
	},
};
