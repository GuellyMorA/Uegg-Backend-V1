const InfraMedioTransporteTipo = require('../../models/infraestructura').infra_medio_transporte_tipo;
const sequelize = InfraMedioTransporteTipo.sequelize;

module.exports = {
	list(req, res) {
		return InfraMedioTransporteTipo
			.findAll({})
			.then((infraMedioTransporteTipo) => res.status(200).send(infraMedioTransporteTipo))
			.catch((error) => { res.status(400).send(error); });
	},

	getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
		return InfraMedioTransporteTipo
			.findByPk(req.params.id)
			.then((infraMedioTransporteTipo) => {console.log(infraMedioTransporteTipo);
				if (!infraMedioTransporteTipo) {
					return res.status(404).send({
						message: 'usuario Not Found',
					});
				}
				return res.status(200).send(infraMedioTransporteTipo);
			})
			.catch((error) => res.status(400).send(error));
	},
	getMedioTransporte(req, res){
		var medio_transporte_sql =`SELECT id, descripcion_medio_transporte FROM infra_medio_transporte_tipo 
									WHERE infra_medio_transporte_tipo_id =`+ req.params.categoriaId;
		return sequelize.query(medio_transporte_sql,
		  { type: sequelize.QueryTypes.SELECT },
		  {raw: true})
		    .then((MedioTransporte) => res.status(200).send(MedioTransporte))
		    .catch((error) => res.status(400).send(error));
	},
	getViasAccesos(req, res){
		var vias_acceso_sql =`SELECT ia.id,ia.infra_predio_id,ict.medio_transporte_categoria,imt.descripcion_medio_transporte,ia.dias,ia.horas,ia.minutos,ia.costo
							FROM infra_acceso_predio_transporte ia 
							INNER JOIN infra_medio_transporte_tipo imt on ia.medio_transporte_tipo_id = imt.id 
							INNER JOIN infra_medio_transporte_categoria_tipo ict on  imt.infra_medio_transporte_tipo_id = ict.id 
							WHERE ia.infra_predio_id = ` + req.params.predioId + ` and ` + ` ia.infra_acceso_tipo_id = `+ req.params.accesoTipoId;
		return sequelize.query(vias_acceso_sql,
		  { type: sequelize.QueryTypes.SELECT },
		  {raw: true})
		    .then((ViasAcceso) => res.status(200).send(ViasAcceso))
		    .catch((error) => res.status(400).send(error));
	},
	
};