const InfraSenialeticaTipo = require('../../models/infraestructura').infraSenialeticaTipo ;

module.exports = {
	list(req, res) {
		return InfraSenialeticaTipo
			.findAll({})
			.then((infraSenialeticaTipo) => res.status(200).send(infraSenialeticaTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraSenialeticaTipo
			.findByPk(req.params.id)
			.then((infraSenialeticaTipo) => {console.log(infraSenialeticaTipo);
				if (!infraSenialeticaTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraSenialeticaTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};