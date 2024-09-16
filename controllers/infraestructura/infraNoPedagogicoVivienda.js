const InfraNoPedagogicoVivienda = require('../../models/infraestructura').infra_no_pedagogico_vivienda ;

module.exports = {
	list(req, res) {
		return InfraNoPedagogicoVivienda
			.findAll()
			.then((infraNoPedagogicoVivienda) => res.status(200).send(infraNoPedagogicoVivienda))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {
		return InfraNoPedagogicoVivienda
			.findByPk(req.params.id)
			.then((infraNoPedagogicoVivienda) => {
				if (!infraNoPedagogicoVivienda) {
					return res.status(404).send({
						message: 'infraNoPedagogicoVivienda Not Found',
					});
				}
				return res.status(200).send(infraNoPedagogicoVivienda);
			})
			.catch((error) => res.status(400).send(error));
	},

};