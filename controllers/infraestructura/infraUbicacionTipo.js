const InfraUbicacionTipo = require('../../models/infraestructura').infraUbicacionTipo ;

module.exports = {
	list(req, res) {
		return InfraUbicacionTipo
			.findAll({})
			.then((infraUbicacionTipo) => res.status(200).send(infraUbicacionTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraUbicacionTipo
			.findByPk(req.params.id)
			.then((infraUbicacionTipo) => {console.log(infraUbicacionTipo);
				if (!infraUbicacionTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraUbicacionTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};