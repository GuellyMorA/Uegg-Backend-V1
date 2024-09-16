const InfraPropiedadTipo = require('../../models/infraestructura').infraPropiedadTipo ;

module.exports = {
	list(req, res) {
		return InfraPropiedadTipo
			.findAll({})
			.then((infraPropiedadTipo) => res.status(200).send(infraPropiedadTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraPropiedadTipo
			.findByPk(req.params.id)
			.then((infraPropiedadTipo) => {console.log(infraPropiedadTipo);
				if (!infraPropiedadTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraPropiedadTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};

