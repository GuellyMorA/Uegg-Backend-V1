const InfraTopografiaTipo = require('../../models/infraestructura').infraTopografiaTipo ;

module.exports = {
	list(req, res) {
		return InfraTopografiaTipo
			.findAll({})
			.then((infraTopografiaTipo) => res.status(200).send(infraTopografiaTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraTopografiaTipo
			.findByPk(req.params.id)
			.then((infraTopografiaTipo) => {console.log(infraTopografiaTipo);
				if (!infraTopografiaTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraTopografiaTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};