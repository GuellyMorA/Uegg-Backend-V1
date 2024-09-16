const InfraPurificadorAguaTipo = require('../../models/infraestructura').infraPurificadorAguaTipo ;

module.exports = {
	list(req, res) {
		return InfraPurificadorAguaTipo
			.findAll({})
			.then((infraPurificadorAguaTipo) => res.status(200).send(infraPurificadorAguaTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraPurificadorAguaTipo
			.findByPk(req.params.id)
			.then((infraPurificadorAguaTipo) => {console.log(infraPurificadorAguaTipo);
				if (!infraPurificadorAguaTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraPurificadorAguaTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};

