const InfraMobiliarioTipo = require('../../models/infraestructura').infraMobiliarioTipo ;

module.exports = {
	list(req, res) {
		return InfraMobiliarioTipo
			.findAll({})
			.then((infraMobiliarioTipo) => res.status(200).send(infraMobiliarioTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraMobiliarioTipo
			.findByPk(req.params.id)
			.then((infraMobiliarioTipo) => {console.log(infraMobiliarioTipo);
				if (!infraMobiliarioTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraMobiliarioTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};
