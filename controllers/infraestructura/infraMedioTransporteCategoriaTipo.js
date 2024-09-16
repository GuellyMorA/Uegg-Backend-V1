const InfraMedioTransporteCategoriaTipo = require('../../models/infraestructura').infra_medio_transporte_categoria_tipo ;

module.exports = {
	list(req, res) {
		return InfraMedioTransporteCategoriaTipo
			.findAll({})
			.then((infraMedioTransporteCategoriaTipo) => res.status(200).send(infraMedioTransporteCategoriaTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraMedioTransporteCategoriaTipo
			.findByPk(req.params.id)
			.then((infraMedioTransporteCategoriaTipo) => {console.log(infraMedioTransporteCategoriaTipo);
				if (!infraMedioTransporteCategoriaTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraMedioTransporteCategoriaTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};