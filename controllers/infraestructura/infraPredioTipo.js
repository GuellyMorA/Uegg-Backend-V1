const InfraPredioTipo = require('../../models/infraestructura').infraPredioTipo ;

module.exports = {
	list(req, res) {
		return InfraPredioTipo
			.findAll({})
			.then((infraPredioTipo) => res.status(200).send(infraPredioTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraPredioTipo
			.findByPk(req.params.id)
			.then((infraPredioTipo) => {console.log(infraPredioTipo);
				if (!infraPredioTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraPredioTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};