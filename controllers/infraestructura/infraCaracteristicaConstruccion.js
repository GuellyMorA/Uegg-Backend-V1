const InfraCaracteristicaConstruccion = require('../../models/infraestructura').infra_caracteristica_construccion ;
const sequelize = InfraCaracteristicaConstruccion.sequelize;

module.exports = {
  list(req, res) {
    return InfraCaracteristicaConstruccion
      .findAll({ 
      })
      .then((infraCaracteristicaConstruccion) => res.status(200).send(infraCaracteristicaConstruccion))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {console.log(req.params.id);//.findOne({id:req.params.id})
    return InfraCaracteristicaConstruccion
      .findByPk(req.params.id)
      .then((infraCaracteristicaConstruccion) => {console.log(infraCaracteristicaConstruccion);
        if (!infraCaracteristicaConstruccion) {
          return res.status(404).send({
            message: 'infraCaracteristicaConstruccion Not Found',
          });
        }
        return res.status(200).send(infraCaracteristicaConstruccion);
      })
      .catch((error) => res.status(400).send(error));
  },
  addCaracteristica(req, res) {console.log(req.body.infra_predio_id);
    return InfraCaracteristicaConstruccion
      .create({
        infra_predio_id: req.body.infra_predio_id,
        infra_propiedad_tipo_id: req.body.infra_propiedad_tipo_id,
        razon_social: req.body.razon_social,
        otro_documentacion: req.body.otro_documentacion,
        infra_documentacion_tipo_id: req.body.infra_documentacion_tipo_id,
        folio: req.body.folio,
        partida: req.body.partida,
        plano_aprobado: req.body.plano_aprobado,
        infra_edificacion_tipo_id: req.body.infra_edificacion_tipo_id,
      })
      .then((infraCaracteristicaConstruccion) => res.status(200).send(infraCaracteristicaConstruccion))
      .catch((error) => res.status(400).send(error));
  },
  update(req, res) {
    return InfraCaracteristicaConstruccion
      .findByPk(req.params.id, {})
      .then(infraCaracteristicaConstruccion => {
        if (!infraCaracteristicaConstruccion) {
          return res.status(404).send({
            message: 'infraCaracteristicaConstruccion Not Found',
          });
        }
        return infraCaracteristicaConstruccion
          .update({            
            infra_predio_id: req.body.infra_predio_id || infraCaracteristicaConstruccion.infra_predio_id,
            infra_propiedad_tipo_id: req.body.infra_propiedad_tipo_id || infraCaracteristicaConstruccion.infra_propiedad_tipo_id,
            razon_social: req.body.razon_social || infraCaracteristicaConstruccion.razon_social,
            otro_documentacion: req.body.otro_documentacion || infraCaracteristicaConstruccion.otro_documentacion,
            infra_documentacion_tipo_id: req.body.infra_documentacion_tipo_id || infraCaracteristicaConstruccion.infra_documentacion_tipo_id,
            folio: req.body.folio || infraCaracteristicaConstruccion.folio,
            partida: req.body.partida || infraCaracteristicaConstruccion.partida,
            plano_aprobado: req.body.plano_aprobado || infraCaracteristicaConstruccion.plano_aprobado            
          })
          .then(() => res.status(200).send(infraCaracteristicaConstruccion))
          .catch((error) => res.status(400).send(error));
      })
      .catch((error) => res.status(400).send(error));
  },  
  listaCaracteristica(req, res){
  var datosCaracteristica_sql=`SELECT ic.id,ie.id as edificacion_id, ie.edificacion,ip.id as propiedad_id,ip.propiedad,ic.folio,ic.razon_social,ic.partida,idt.id as documentacion_id,ic.otro_documentacion,idt.documentacion,ic.plano_aprobado
    FROM infra_caracteristica_construccion ic
    INNER JOIN infra_edificacion_tipo ie  on ic.infra_edificacion_tipo_id = ie.id
    INNER JOIN infra_propiedad_tipo ip on ic.infra_propiedad_tipo_id = ip.id
    INNER JOIN infra_documentacion_tipo idt on ic.infra_documentacion_tipo_id = idt.id 
    WHERE ic.infra_predio_id = `+ req.params.predioId ;
    return sequelize.query(datosCaracteristica_sql, 
    { type: sequelize.QueryTypes.SELECT,raw: true }
    )
      .then((datosCaracteristica) => res.status(200).send(datosCaracteristica))
      .catch((error) => res.status(400).send(error));
    },  
};
