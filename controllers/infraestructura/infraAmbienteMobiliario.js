const InfraAmbienteMobiliario = require('../../models/infraestructura').infra_ambiente_mobiliario ;
const InfraAmbiente = require('../../models/infraestructura').infraAmbiente ;
const InfraMobiliarioPredioInstitucioneducativa = require('../../models/infraestructura').infra_mobiliario_predio_institucioneducativa ;
const InfraEstadoTipo = require('../../models/infraestructura').infraEstadoTipo ;
const InfraMobiliarioTipo = require('../../models/infraestructura').infraMobiliarioTipo ;
const InfraPredioInstitucioneducativa = require('../../models/infraestructura').infra_predio_institucioneducativa ;
const sequelize = InfraAmbienteMobiliario.sequelize;

module.exports = {
  list(req, res) {
    return InfraAmbienteMobiliario
      .findAll({ 
      })
      .then((infraAmbienteMobiliario) => res.status(200).send(infraAmbienteMobiliario))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return InfraAmbienteMobiliario
      .findByPk(req.params.id)
      .then((infraAmbienteMobiliario) => {
        if (!infraAmbienteMobiliario) {
          return res.status(404).send({
            message: 'infraAmbienteMobiliario Not Found',
          });
        }
        return res.status(200).send(infraAmbienteMobiliario);
      })
      .catch((error) => res.status(400).send(error));
  },

  add(req, res){
    return InfraAmbienteMobiliario
    .create({
        infra_ambiente_id: req.body.ambienteMobiliarioId,
        infra_mobiliario_tipo_id: req.body.mobiliarioTipo,
        cantidad: req.body.cantidadMobiliario,
        infra_estado_tipo_id:req.body.estadoMobiliario
      })
      .then(async(mobiliario) => {
        for (const item of req.body.institucionMobiliarioId){
          let sie = await InfraPredioInstitucioneducativa.findOne({where:{infra_predio_id: req.body.predioId, id: item },attributes:['id']}); 
          await InfraMobiliarioPredioInstitucioneducativa
         .create({
            infra_ambiente_mobiliario_id: mobiliario.id,
            infra_predio_institucioneducativa: sie.id,
            fecha_registro: new Date()
          });
        }
      })
      .then((infraAmbienteMobiliario) => res.status(201).send({'mensaje':'se guardo'}))
      .catch((error) => res.status(400).send(error));
  },
  update(req, res){ console.log (req.body)
    return InfraAmbienteMobiliario
      .findByPk(req.body.id, {})
      .then(infraAmbienteMobiliario => {
        if (!infraAmbienteMobiliario) {
          return res.status(404).send({
            message: 'infraCaracteristicaConstruccion Not Found',
          });
        }
        return infraAmbienteMobiliario
          .update({            
            infra_ambiente_id: req.body.ambienteMobiliarioId,
            infra_mobiliario_tipo_id: req.body.mobiliarioTipo,
            cantidad: req.body.cantidadMobiliario,
            infra_estado_tipo_id:req.body.estadoMobiliario
          })
          .then(async(mobiliario) => {
            await InfraMobiliarioPredioInstitucioneducativa.destroy({ where: {infra_ambiente_mobiliario_id: req.body.id}});
            //borrra todas las ue pra ese mobiliario
            for (const item of req.body.institucionMobiliarioId){
              let sie = await InfraPredioInstitucioneducativa.findOne({where:{infra_predio_id: req.body.predioId, institucioneducativa_id: item },attributes:['id']}); 
              await InfraMobiliarioPredioInstitucioneducativa
             .create({
                infra_ambiente_mobiliario_id: req.body.id,
                infra_predio_institucioneducativa: sie.id,
                fecha_registro: new Date()
              });
            }
          })
          .then(() => res.status(200).send(infraAmbienteMobiliario))
          .catch((error) => res.status(400).send(error));
      })
      .catch((error) => res.status(400).send(error));
  },
  getByAmbienteId(req, res) {
    var ambienteMobiliario_sql=`SELECT iam.*, imt.mobiliario, iet.estado
      FROM infra_ambiente_mobiliario iam
      INNER JOIN infra_mobiliario_tipo imt on iam.infra_mobiliario_tipo_id = imt.id
      INNER JOIN infra_estado_tipo iet on iam.infra_estado_tipo_id = iet.id
      WHERE iam.infra_ambiente_id = `+ req.params.id + `ORDER BY iam.id`;
    return sequelize.query(ambienteMobiliario_sql, { type: sequelize.QueryTypes.SELECT, raw: true })
      .then((ambienteMobiliarios) => res.status(200).send(ambienteMobiliarios))
      .catch((error) => res.status(400).send(error));
  },

   async delete(req, res) {
    await InfraMobiliarioPredioInstitucioneducativa.destroy({ where: {infra_ambiente_mobiliario_id: req.params.id } })
    return InfraAmbienteMobiliario
      .findByPk(req.params.id)
      .then(infraAmbienteMobiliario => {
        if (!infraAmbienteMobiliario) {
          return res.status(400).send({
            message: 'usuario Not Found',
          });
        }
        return infraAmbienteMobiliario
          .destroy()
          .then(() => res.status(204).send())
          .catch((error) => res.status(400).send(error));
      })
      .catch((error) => res.status(400).send(error));
    
  },
};


