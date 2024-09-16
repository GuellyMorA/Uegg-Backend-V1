const InfraMaterialTipo = require('../../models/infraestructura').infra_material_tipo;

module.exports = {
	list(req, res) {
		return InfraMaterialTipo
			.findAll()
			.then((infraMaterialTipo) => res.status(200).send(infraMaterialTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {
		return InfraMaterialTipo
			.findByPk(req.params.id)
			.then((infraMaterialTipo) => {
			if (!infraMaterialTipo) {
				return res.status(404).send({
					message: 'infraMaterialTipo Not Found',
				});
			}
			return res.status(200).send(infraMaterialTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};
