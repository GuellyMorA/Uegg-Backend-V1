const InfraServicioOtroCategoriaTipo = require('../../models/infraestructura').infraServicioOtroCategoriaTipo ;

module.exports = {
	list(req, res) {
		return InfraServicioOtroCategoriaTipo
			.findAll({})
			.then((infraServicioOtroCategoriaTipo) => res.status(200).send(infraServicioOtroCategoriaTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraServicioOtroCategoriaTipo
			.findByPk(req.params.id)
			.then((infraServicioOtroCategoriaTipo) => {console.log(infraServicioOtroCategoriaTipo);
				if (!infraServicioOtroCategoriaTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraServicioOtroCategoriaTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};