const InfraMedioSuministroAguaTipo = require('../../models/infraestructura').infraMedioSuministroAguaTipo ;

module.exports = {
	list(req, res) {
		return InfraMedioSuministroAguaTipo
			.findAll({})
			.then((infraMedioSuministroAguaTipo) => res.status(200).send(infraMedioSuministroAguaTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraMedioSuministroAguaTipo
			.findByPk(req.params.id)
			.then((infraMedioSuministroAguaTipo) => {console.log(infraMedioSuministroAguaTipo);
				if (!infraMedioSuministroAguaTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraMedioSuministroAguaTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};
