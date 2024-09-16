const InfraMedioAccesoTipo = require('../../models/infraestructura').infraMedioAccesoTipo ;

module.exports = {
	list(req, res) {
		return InfraMedioAccesoTipo
			.findAll({})
			.then((infraMedioAccesoTipo) => res.status(200).send(infraMedioAccesoTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraMedioAccesoTipo
			.findByPk(req.params.id)
			.then((infraMedioAccesoTipo) => {console.log(infraMedioAccesoTipo);
				if (!infraMedioAccesoTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraMedioAccesoTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};


