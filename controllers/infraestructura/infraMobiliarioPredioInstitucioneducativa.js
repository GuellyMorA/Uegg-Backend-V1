const InfraMobiliarioPredioInstitucioneducativa = require('../../models/infraestructura').infraMobiliarioPredioInstitucioneducativa ;

module.exports = {
	list(req, res) {
		return InfraMobiliarioPredioInstitucioneducativa
			.findAll({})
			.then((infraMobiliarioPredioInstitucioneducativa) => res.status(200).send(infraMobiliarioPredioInstitucioneducativa))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraMobiliarioPredioInstitucioneducativa
			.findByPk(req.params.id)
			.then((infraMobiliarioPredioInstitucioneducativa) => {console.log(infraMobiliarioPredioInstitucioneducativa);
				if (!infraMobiliarioPredioInstitucioneducativa) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraMobiliarioPredioInstitucioneducativa);
			})
			.catch((error) => res.status(400).send(error));
	},

};
