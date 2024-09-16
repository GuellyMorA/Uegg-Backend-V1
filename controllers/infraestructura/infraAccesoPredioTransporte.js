const InfraAccesoPredioTransporte = require('../../models/infraestructura').infra_acceso_predio_transporte ;

module.exports = {
  list(req, res) {
    return InfraAccesoPredioTransporte
      .findAll({ 
      })
      .then((infraAccesoPredioTransporte) => res.status(200).send(infraAccesoPredioTransporte))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraAccesoPredioTransporte
      .findByPk(req.params.id)
      .then((infraAccesoPredioTransporte) => {console.log(infraAccesoPredioTransporte);
        if (!infraAccesoPredioTransporte) {
          return res.status(404).send({
            message: 'infraAccesoPredioTransporte Not Found',
          });
        }
        return res.status(200).send(infraAccesoPredioTransporte);
      })
      .catch((error) => res.status(400).send(error));
  },
  async add(req, res) {
    let resultValidacion = await InfraAccesoPredioTransporte.findOne({where:{infra_predio_id: req.body.infra_predio_id,medio_transporte_tipo_id:req.body.medio_transporte_tipo_id,infra_acceso_tipo_id:req.body.infra_acceso_tipo_id}});
    if(resultValidacion){
      res.status(200).send({msg:"existe"});
    } res.status(200).send({msg:"no existe"});
    return InfraAccesoPredioTransporte
      .create({
        infra_predio_id: req.body.infra_predio_id,
        infra_acceso_tipo_id: req.body.infra_acceso_tipo_id,
        dias: req.body.dias,
        horas: req.body.horas,
        minutos: req.body.minutos,
        costo: req.body.costo,
        medio_transporte_tipo_id: req.body.medio_transporte_tipo_id,
      })
      .then((infraAccesoPredioTransporte) => res.status(201).send(infraAccesoPredioTransporte))
      .catch((error) => res.status(400).send(error));
  },
  delete(req, res) {
    return InfraAccesoPredioTransporte
      .findByPk(req.params.accesoId)
      .then(infraAccesoPredioTransporte => {
        if (!infraAccesoPredioTransporte) {
          return res.status(400).send({
            message: 'InfraAccesoPredioTransporte Not Found',
          });
        }
        return infraAccesoPredioTransporte
          .destroy()
          .then(() => res.status(204).send())
          .catch((error) => res.status(400).send(error));
      })
      .catch((error) => res.status(400).send(error));
  },

};
