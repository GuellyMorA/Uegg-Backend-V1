const InfraNoPedagogicoInternado = require('../../models/infraestructura').infraNoPedagogicoInternado ;

module.exports = {
	list(req, res) {
		return InfraNoPedagogicoInternado
			.findAll({})
			.then((infraMobiliarioPredioInstitucioneducativa) => res.status(200).send(infraNoPedagogicoInternado))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraNoPedagogicoInternado
			.findByPk(req.params.id)
			.then((infraNoPedagogicoInternado) => {console.log(infraNoPedagogicoInternado);
				if (!infraNoPedagogicoInternado) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraNoPedagogicoInternado);
			})
			.catch((error) => res.status(400).send(error));
	},

};
