const InfraServicioOtro = require('../../models/infraestructura').infraServicioOtro ;

module.exports = {
	list(req, res) {
		return InfraServicioOtro
			.findAll({})
			.then((infraServicioOtro) => res.status(200).send(infraServicioOtro))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraServicioOtro
			.findByPk(req.params.id)
			.then((infraServicioOtro) => {console.log(infraServicioOtro);
				if (!infraServicioOtro) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraServicioOtro);
			})
			.catch((error) => res.status(400).send(error));
	},

};