const InfraTiempoSuspendidoTipo = require('../../models/infraestructura').infraTiempoSuspendidoTipo ;

module.exports = {
	list(req, res) {
		return InfraTiempoSuspendidoTipo
			.findAll({})
			.then((infraTiempoSuspendidoTipo) => res.status(200).send(infraTiempoSuspendidoTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraTiempoSuspendidoTipo
			.findByPk(req.params.id)
			.then((infraTiempoSuspendidoTipo) => {console.log(infraTiempoSuspendidoTipo);
				if (!infraTiempoSuspendidoTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraTiempoSuspendidoTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};