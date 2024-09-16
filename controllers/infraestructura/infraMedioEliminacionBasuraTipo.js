const InfraMedioEliminacionBasuraTipo = require('../../models/infraestructura').infraMedioEliminacionBasuraTipo ;

module.exports = {
	list(req, res) {
		return InfraMedioEliminacionBasuraTipo
			.findAll({})
			.then((infraMedioEliminacionBasuraTipo) => res.status(200).send(infraMedioEliminacionBasuraTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraMedioEliminacionBasuraTipo
			.findByPk(req.params.id)
			.then((infraMedioEliminacionBasuraTipo) => {console.log(infraMedioEliminacionBasuraTipo);
				if (!infraMedioEliminacionBasuraTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraMedioEliminacionBasuraTipo);
			})
			.catch((error) => res.status(400).send(error));
	},

};






