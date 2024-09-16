const InfraResponsableTipo = require('../../models/infraestructura').infraResponsableTipo ;

module.exports = {
	list(req, res) {
		return InfraResponsableTipo
			.findAll({})
			.then((infraResponsableTipo) => res.status(200).send(infraResponsableTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraResponsableTipo
			.findByPk(req.params.id)
			.then((infraResponsableTipo) => {console.log(infraResponsableTipo);
				if (!infraResponsableTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraResponsableTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};