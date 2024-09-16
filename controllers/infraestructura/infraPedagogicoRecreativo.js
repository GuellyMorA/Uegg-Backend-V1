const InfraPedagogicoRecreativo = require('../../models/infraestructura').infra_pedagogico_recreativo ;

module.exports = {
	list(req, res) {
		return InfraPedagogicoRecreativo
			.findAll()
			.then((infraPedagogicoRecreativo) => res.status(200).send(infraPedagogicoRecreativo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {
		return InfraPedagogicoRecreativo
			.findByPk(req.params.id)
			.then((infraPedagogicoRecreativo) => {
				if (!infraPedagogicoRecreativo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraPedagogicoRecreativo);
			})
			.catch((error) => res.status(400).send(error));
	},

};