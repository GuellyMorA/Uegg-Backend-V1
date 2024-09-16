const InfraPedagogico = require('../../models/infraestructura').infra_pedagogico ;

module.exports = {
	list(req, res) {
		return InfraPedagogico
			.findAll({})
			.then((infraPedagogico) => res.status(200).send(infraPedagogico))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {
		return InfraPedagogico
			.findByPk(req.params.id)
			.then((infraPedagogico) => {
				if (!infraPedagogico) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraPedagogico);
			})
			.catch((error) => res.status(400).send(error));
	},
	add(req, res) {
	    return InfraPedagogico
	      .create({
	        infra_ambiente_id: req.body.ambienteId,
	        infra_area_tipo_id: req.body.areaId,
	      })
	      .then((infraPedagogico) => res.status(201).send(infraPedagogico))
	      .catch((error) => res.status(400).send(error));
  	},
};