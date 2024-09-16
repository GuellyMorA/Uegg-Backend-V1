const InfraServicioOtroCondicion = require('../../models/infraestructura').infra_servicio_otro_condicion ;


module.exports = {
	list(req, res) {
		return InfraServicioOtroCondicion
			.findAll({})
			.then((infraServicioOtroCondicion) => res.status(200).send(infraServicioOtroCondicion))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraServicioOtroCondicion
			.findByPk(req.params.id)
			.then((infraServicioOtroCondicion) => {console.log(infraServicioOtroCondicion);
				if (!infraServicioOtroCondicion) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraServicioOtroCondicion);
			})
			.catch((error) => res.status(400).send(error));
	},

	/*getRespuestasServicios(req, res){ console.log("dsdsdsdsds",req.params.predio_id);	
	try{
		let condicionId =  InfraServicioOtroCondicion.findAll({where:{infra_predio_id: req.params.predio_id}, attributes: ['infra_condicion_id']});
	*/
	async getRespuestasServicios(req, res){ console.log("dsdsdsdsds",req.params.predio_id);	
	try{
		var condicionId =  await InfraServicioOtroCondicion.findAll({where:{infra_predio_id: req.params.predio_id}, attributes: ['infra_condicion_id']});

		console.log("rererer",condicionId);
		res.status(200).send({'condicionId': condicionId});
		}catch(exeption ){ 
			res.status(400).send(error);
		}
	}
};