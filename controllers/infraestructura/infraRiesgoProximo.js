const InfraRiesgoProximo = require('../../models/infraestructura').infraRiesgoProximo ;

module.exports = {
	list(req, res) {
		return InfraRiesgoProximo
			.findAll({})
			.then((infraRiesgoProximo) => res.status(200).send(infraRiesgoProximo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraRiesgoProximo
			.findByPk(req.params.id)
			.then((infraRiesgoProximo) => {console.log(infraRiesgoProximo);
				if (!infraRiesgoProximo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraRiesgoProximo);
			})
			.catch((error) => res.status(400).send(error));
	},

};