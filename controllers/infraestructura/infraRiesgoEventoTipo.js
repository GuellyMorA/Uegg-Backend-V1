const InfraRiesgoEventoTipo = require('../../models/infraestructura').infraRiesgoEventoTipo ;

module.exports = {
	list(req, res) {
		return InfraRiesgoEventoTipo
			.findAll({})
			.then((infraRiesgoEventoTipo) => res.status(200).send(infraRiesgoEventoTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraRiesgoEventoTipo
			.findByPk(req.params.id)
			.then((infraRiesgoEventoTipo) => {console.log(infraRiesgoEventoTipo);
				if (!infraRiesgoEventoTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraRiesgoEventoTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};