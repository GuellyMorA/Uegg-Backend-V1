const InfraTenenciaTipo = require('../../models/infraestructura').infra_tenencia_tipo ;

module.exports = {
	list(req, res) {
		return InfraTenenciaTipo
			.findAll({})
			.then((infraTenenciaTipo) => res.status(200).send(infraTenenciaTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {
		return InfraTenenciaTipo
			.findByPk(req.params.id)
			.then((infraTenenciaTipo) => {
				if (!infraTenenciaTipo) {
					return res.status(404).send({
						message: 'infraTenenciaTipo Not Found',
					});
				}
				return res.status(200).send(infraTenenciaTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};