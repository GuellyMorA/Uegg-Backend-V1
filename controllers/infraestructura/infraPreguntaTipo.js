const InfraPreguntaTipo = require('../../models/infraestructura').infraPreguntaTipo ;

module.exports = {
	list(req, res) {
		return InfraPreguntaTipo
			.findAll({})
			.then((infraPreguntaTipo) => res.status(200).send(infraPreguntaTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraPreguntaTipo
			.findByPk(req.params.id)
			.then((infraPreguntaTipo) => {console.log(infraPreguntaTipo);
				if (!infraPreguntaTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraPreguntaTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};