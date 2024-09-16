const InfraPeriodicidadEliminacionBasuraTipo = require('../../models/infraestructura').infraPeriodicidadEliminacionBasuraTipo ;

module.exports = {
	list(req, res) {
		return InfraPeriodicidadEliminacionBasuraTipo
			.findAll({})
			.then((infraPeriodicidadEliminacionBasuraTipo) => res.status(200).send(infraPeriodicidadEliminacionBasuraTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraPeriodicidadEliminacionBasuraTipo
			.findByPk(req.params.id)
			.then((infraPeriodicidadEliminacionBasuraTipo) => {console.log(infraPeriodicidadEliminacionBasuraTipo);
				if (!infraPeriodicidadEliminacionBasuraTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraPeriodicidadEliminacionBasuraTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};