const InfraServicioOtroCuenta = require('../../models/infraestructura').infraServicioOtroCuenta ;

module.exports = {
	list(req, res) {
		return InfraServicioOtroCuenta
			.findAll({})
			.then((infraServicioOtroCuenta) => res.status(200).send(infraServicioOtroCuenta))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraServicioOtroCuenta
			.findByPk(req.params.id)
			.then((infraServicioOtroCuenta) => {console.log(infraServicioOtroCuenta);
				if (!infraServicioOtroCuenta) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraServicioOtroCuenta);
			})
			.catch((error) => res.status(400).send(error));
	},

};