const InfraAmbiente = require('../../models/infraestructura').infra_ambiente;
const InfraAmbienteTipo = require('../../models/infraestructura').infra_ambiente_tipo;
const InfraAreaTipo = require('../../models/infraestructura').infra_area_tipo;
const InfraAmbienteEspecialidad = require('../../models/infraestructura').infra_ambiente_especialidad;
const InfraPedagogico = require('../../models/infraestructura').infra_pedagogico;
const InfraAmbientePredioInstitucioneducativa = require('../../models/infraestructura').infra_ambiente_predio_institucioneducativa;
const InfraPredioInstitucioneducativa = require('../../models/infraestructura').infra_predio_institucioneducativa;
const InfraCondicion = require('../../models/infraestructura').infra_condicion;
const InfraAmbienteCondicion = require('../../models/infraestructura').infra_ambiente_condicion;
const InfraAmbienteDestinadoTipo = require('../../models/infraestructura').infra_ambiente_destinado_tipo;
const InfraPedagogicoRecreativo = require('../../models/infraestructura').infra_pedagogico_recreativo;
const InfraResponsableTipo = require('../../models/infraestructura').infra_responsable_tipo;
const InfraServicioOtroCondicion = require('../../models/infraestructura').infra_servicio_otro_condicion;

const InfraNoPedagogicoVivienda = require('../../models/infraestructura').infra_no_pedagogico_vivienda;
const InfraNoPedagogicoInternado = require('../../models/infraestructura').infra_no_pedagogico_internado;

const InfraBateriaArtefactoBanio = require('../../models/infraestructura').infra_bateria_artefacto_banio;

const sequelize = InfraAmbiente.sequelize;

module.exports = {
  list(req, res) {
    return InfraAmbiente
      .findAll()
      .then((infraAmbiente) => res.status(200).send(infraAmbiente))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return InfraAmbiente
      .findByPk(req.params.id)
      .then((infraAmbiente) => {
        if (!infraAmbiente) {
          return res.status(404).send({
            message: 'infraAmbiente Not Found',
          });
        }
        return res.status(200).send(infraAmbiente);
      })
      .catch((error) => res.status(400).send(error));
  },
  
  add(req, res) {
    return InfraAmbiente
      //.create(datos)
      .create({
          infra_predio_id: req.body.predioId,
          cantidad: req.body.cantidad || null,
          capacidad: req.body.capacidad || null,
          area: req.body.area || null,
          largo: req.body.largo || null,
          ancho: req.body.ancho || null,
          es_utilizado: req.body.esUtilizado || null,
          es_universal: req.body.esUniversal || null,
          infra_ambiente_tipo_id: req.body.ambienteId || null,
          
          //es_servicio: req.body.esServicio || null,
          //infra_estado_tipo_id: req.body.esServicio || null,

          servicio_electrico: req.body.esLuz || null,
          servicio_agua: req.body.esAgua || null,
          infra_bloque_id: req.body.bloqueId || null,
          infra_piso_id: req.body.pisoId || null
        })
      .then(async(ambiente) => {
        let pedagogico = null;
         switch (req.body.tipo) {
          case "1": 
            if(req.body.areaId){ 
              pedagogico = await InfraPedagogico.create({
                infra_ambiente_id: ambiente.id,
                infra_area_tipo_id: req.body.areaId,
              });
            }else{
              pedagogico = await InfraPedagogico.create({
                infra_ambiente_id: ambiente.id,
                infra_area_tipo_id: null,
              });
            }
            break;
          case "2": 
            pedagogico = await InfraPedagogicoRecreativo.create({
              infra_ambiente_id: ambiente.id,
              infra_destinado_tipo_id: req.body.destinadoTipoId,
            });
            break;
          case "4":
            pedagogico = await InfraNoPedagogicoVivienda.create({
              infra_ambiente_id: ambiente.id,
              habitante: req.body.habitante,
              banio: req.body.banio,
              ducha: req.body.ducha,
              cocina: req.body.cocina,
            });
            break;
          case "5":
            pedagogico = await InfraNoPedagogicoInternado.create({
              infra_ambiente_id: ambiente.id,
              infra_responsable_tipo_id: req.body.infraResponsableTipoId,
              litera: req.body.litera,
              distancia: req.body.distancia,
              cama: req.body.cama,
            });
            break;
          default:
            break;
        }
        for (const item of req.body.institucionId){ 
          let sie = await InfraPredioInstitucioneducativa.findOne({where:{infra_predio_id: req.body.predioId, id: item }, attributes: ['id']}); 
          await InfraAmbientePredioInstitucioneducativa
         .create({
            infra_ambiente_id: ambiente.id,
            infra_predio_institucioneducativa: sie.id,
            fecha_registro: new Date()
          });
        }
        for (const item of req.body.respuestas){
          await InfraAmbienteCondicion
          .create({
            infra_condicion_id: item.response_id,
            infra_ambiente_id: ambiente.id,
           });
        }
        if (req.body.tipo == "7") {
          for (const item of req.body.artefacto){
            await InfraBateriaArtefactoBanio
            .create({
              infra_ambiente_id: ambiente.id,
              infra_artefacto_banio_tipo_id: item.id,
              cantidad_funciona: item.funciona,
              cantidad_no_funciona: item.nofunciona,
             });
          }
        }
        return pedagogico;
      })
      .then((pedagogico) => {
        switch(req.body.tipo) {
          case "1":
            if(req.body.especialidadBthId){
              return InfraAmbienteEspecialidad
              .create({
                infra_pedagogico_id: pedagogico.id,
                especialidad_tecnico_humanistico_tipo_id: req.body.especialidadBthId,
              });
            }else{
              return InfraAmbienteEspecialidad
              .create({
                infra_pedagogico_id: pedagogico.id,
                especialidad_tecnico_humanistico_tipo_id: null,
              });
            }
            
            break;
          default:
            return 200;
            break;
        }
      })
      .then(() => res.status(201).send({'mensaje':'se guardo'}))
      .catch((error) => res.status(400).send(error));
  },
  
  verificaMobiliario(req, res){
    let cantidad_mobiliario_sql = "";
    switch (req.params.tipoAmbiente){
      case "1":
        cantidad_mobiliario_sql = `SELECT COUNT(*)
        FROM infra_pedagogico a
            INNER JOIN infra_ambiente b on a.infra_ambiente_id = b.id
            INNER JOIN infra_ambiente_mobiliario m on b.id = m.infra_ambiente_id
        WHERE  b.id = `+ req.params.ambienteId;
      break;
      case "2":
        cantidad_mobiliario_sql = `SELECT COUNT(*)
        FROM infra_pedagogico_recreativo a
            INNER JOIN infra_ambiente b on a.infra_ambiente_id = b.id
            INNER JOIN infra_ambiente_mobiliario m on b.id = m.infra_ambiente_id
        WHERE  b.id = `+ req.params.ambienteId;
      break;
      case "3":
       cantidad_mobiliario_sql = `SELECT COUNT(*)
        FROM infra_ambiente b
            INNER JOIN infra_ambiente_mobiliario m on b.id = m.infra_ambiente_id
        WHERE  b.id = `+ req.params.ambienteId;
      break;
      default:
      break;
    }
      return sequelize.query(cantidad_mobiliario_sql,
      { type: sequelize.QueryTypes.SELECT, plain:true},
      {raw: true})
        .then((cantidad_mobiliario) => res.status(200).send(cantidad_mobiliario))
        .catch((error) => res.status(400).send(error));
  },
  async deleteAmbientePedagogico(req, res){
    switch (req.params.tipoAmbiente){
      case"1":
      let pedagogico = await InfraPedagogico.findOne({where:{infra_ambiente_id: req.params.id}, attributes: ['id']});
      if(pedagogico){
        let ambienteEspecialidad = await InfraAmbienteEspecialidad.findOne({where:{infra_pedagogico_id: pedagogico.id}, attributes: ['id']});
        await InfraAmbienteEspecialidad.destroy({ where: {infra_pedagogico_id: pedagogico.id } });
        await pedagogico.destroy();
      }
      break;
      case"2":
      await InfraPedagogicoRecreativo.destroy({ where: {infra_ambiente_id: req.params.id } });
      break;
      case"4":
      await InfraNoPedagogicoVivienda.destroy({ where: {infra_ambiente_id: req.params.id } });
      break;
      case"5":
      await InfraNoPedagogicoInternado.destroy({ where: {infra_ambiente_id: req.params.id } });
      break;
      case"7":
      await InfraBateriaArtefactoBanio .destroy({ where: {infra_ambiente_id: req.params.id } });
      break;
      default:
      break;
    }
    await InfraAmbientePredioInstitucioneducativa.destroy({ where: {infra_ambiente_id: req.params.id } });
    await InfraAmbienteCondicion.destroy({ where: {infra_ambiente_id: req.params.id } });
    return InfraAmbiente
      .findByPk(req.params.id)
      .then(infraAmbiente => {
        if (!infraAmbiente) {
          return res.status(400).send({
            message: 'Ambiente no encontrado',
          });
        }
        return infraAmbiente
          .destroy()
          .then(() => res.status(204).send("eliminadooo"))
          .catch((error) => res.status(400).send(error));
      })
      .catch((error) => res.status(400).send(error));
  },
  async getAmbienteDetalle(req, res){
    try{
      switch (req.params.tipoAmbienteId){
        case "1":
          let ambienteDetalle_sql = `SELECT   ia.id, ia.infra_predio_id,ia.cantidad,ia.capacidad,ia.largo,ia.ancho,ia.area,
          ia.infra_ambiente_tipo_id,it.ambiente,iat.area as areaId,
          ia.es_utilizado,ia.es_universal,ia.servicio_electrico,ia.servicio_agua,
          ib.bloque,ips.piso,epth.especialidad
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_pedagogico ip on ia.id = ip.infra_ambiente_id
          LEFT JOIN infra_area_tipo iat on iat.id = ip.infra_area_tipo_id
          INNER JOIN infra_bloque ib on ia.infra_bloque_id = ib.id
          INNER JOIN infra_piso ips on ips.infra_bloque_id = ib.id AND ia.infra_piso_id = ips.id
          LEFT  JOIN infra_ambiente_especialidad iae on iae.infra_pedagogico_id = ip.id
          LEFT  JOIN especialidad_tecnico_humanistico_tipo epth on iae.especialidad_tecnico_humanistico_tipo_id =  epth.id
          WHERE ia.id = `+ req.params.ambienteId;
          let result_ambienteDetalle = await sequelize.query(ambienteDetalle_sql,
          { type: sequelize.QueryTypes.SELECT, plain:true },
          {raw: true});

          let ambienteUe_sql = `SELECT   ia.id, ia.infra_predio_id
            ,ipie.institucioneducativa_id,ie.institucioneducativa
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_predio_institucioneducativa iapie ON ia.id = iapie.infra_ambiente_id
          INNER JOIN infra_predio_institucioneducativa ipie ON iapie.infra_predio_institucioneducativa =  ipie.id
          INNER JOIN institucioneducativa ie on ie.id = ipie.institucioneducativa_id 
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteUe = await sequelize.query(ambienteUe_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          let ambienteRespuestas_sql = `SELECT   ia.id
          ,ico.id,ipre.pregunta,im.material,ica.caracteristica 
          from infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_condicion ic ON ic.infra_ambiente_id = ia.id
          INNER JOIN infra_condicion ico ON ic.infra_condicion_id = ico.id
          INNER JOIN infra_material_tipo im ON im.id = ico.infra_material_tipo_id   
          INNER JOIN infra_caracteristica_tipo ica ON ica.id = ico.infra_caracteristica_tipo_id   
          INNER JOIN infra_pregunta_tipo ipre ON ipre.id = ico.infra_pregunta_tipo_id   
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteRespuestas = await sequelize.query(ambienteRespuestas_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          res.status(200).send({'ambienteDetalle': result_ambienteDetalle, 'ambienteUe': result_ambienteUe, 'ambienteRespuestas': result_ambienteRespuestas});
        break;
        case "2":
          let ambienteDetalleRecreativo_sql = `SELECT   ia.id, ia.infra_predio_id,ia.cantidad,ia.capacidad,ia.largo,ia.ancho,ia.area,
          ia.infra_ambiente_tipo_id,it.ambiente,iat.destinado as destinado,
          ia.es_utilizado,ia.es_universal,ia.servicio_electrico,ia.servicio_agua,
          ib.bloque,ips.piso
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_pedagogico_recreativo ip on ia.id = ip.infra_ambiente_id
          INNER JOIN infra_ambiente_destinado_tipo iat on iat.id = ip.infra_destinado_tipo_id
          INNER JOIN infra_bloque ib on ia.infra_bloque_id = ib.id
          INNER JOIN infra_piso ips on ips.infra_bloque_id = ib.id AND ia.infra_piso_id = ips.id
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteDetalleRecreativo = await sequelize.query(ambienteDetalleRecreativo_sql,
          { type: sequelize.QueryTypes.SELECT, plain:true },
          {raw: true});

          let ambienteUeRecreativo_sql = `SELECT   ia.id, ia.infra_predio_id
            ,ipie.institucioneducativa_id,ie.institucioneducativa
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_predio_institucioneducativa iapie ON ia.id = iapie.infra_ambiente_id
          INNER JOIN infra_predio_institucioneducativa ipie ON iapie.infra_predio_institucioneducativa =  ipie.id
          INNER JOIN institucioneducativa ie on ie.id = ipie.institucioneducativa_id 
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteUeRecreativo = await sequelize.query(ambienteUeRecreativo_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          let ambienteRespuestasRecreativo_sql = `SELECT   ia.id
          ,ico.id,ipre.pregunta,im.material,ica.caracteristica 
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_condicion ic ON ic.infra_ambiente_id = ia.id
          INNER JOIN infra_condicion ico ON ic.infra_condicion_id = ico.id
          INNER JOIN infra_material_tipo im ON im.id = ico.infra_material_tipo_id   
          INNER JOIN infra_caracteristica_tipo ica ON ica.id = ico.infra_caracteristica_tipo_id   
          INNER JOIN infra_pregunta_tipo ipre ON ipre.id = ico.infra_pregunta_tipo_id   
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteRespuestasRecreativo = await sequelize.query(ambienteRespuestasRecreativo_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          res.status(200).send({'ambienteDetalle': result_ambienteDetalleRecreativo, 'ambienteUe': result_ambienteUeRecreativo, 'ambienteRespuestas': result_ambienteRespuestasRecreativo});
        break;
        case "3":
          let ambienteDetalleAdministrativo_sql = `SELECT   ia.id,ia.infra_ambiente_tipo_id,it.ambiente,
          ia.es_utilizado,ia.es_universal,ia.servicio_electrico,ia.servicio_agua,
          ib.bloque,ips.piso
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_bloque ib on ia.infra_bloque_id = ib.id
          INNER JOIN infra_piso ips on ips.infra_bloque_id = ib.id AND ia.infra_piso_id = ips.id
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteDetalleAdministrativo = await sequelize.query(ambienteDetalleAdministrativo_sql,
          { type: sequelize.QueryTypes.SELECT, plain:true },
          {raw: true});

          let ambienteUeAdministrativo_sql = `SELECT   ia.id, ia.infra_predio_id
            ,ipie.institucioneducativa_id,ie.institucioneducativa
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_predio_institucioneducativa iapie ON ia.id = iapie.infra_ambiente_id
          INNER JOIN infra_predio_institucioneducativa ipie ON iapie.infra_predio_institucioneducativa =  ipie.id
          INNER JOIN institucioneducativa ie on ie.id = ipie.institucioneducativa_id 
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteUeAdministrativo = await sequelize.query(ambienteUeAdministrativo_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          let ambienteRespuestasAdministrativo_sql = `SELECT   ia.id
          ,ico.id,ipre.pregunta,im.material,ica.caracteristica 
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_condicion ic ON ic.infra_ambiente_id = ia.id
          INNER JOIN infra_condicion ico ON ic.infra_condicion_id = ico.id
          INNER JOIN infra_material_tipo im ON im.id = ico.infra_material_tipo_id   
          INNER JOIN infra_caracteristica_tipo ica ON ica.id = ico.infra_caracteristica_tipo_id   
          INNER JOIN infra_pregunta_tipo ipre ON ipre.id = ico.infra_pregunta_tipo_id   
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteRespuestasAdministrativo = await sequelize.query(ambienteRespuestasAdministrativo_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          res.status(200).send({'ambienteDetalle': result_ambienteDetalleAdministrativo, 'ambienteUe': result_ambienteUeAdministrativo, 'ambienteRespuestas': result_ambienteRespuestasAdministrativo});
        break;
        case "4":
          let ambienteDetalleVivienda_sql = `SELECT   ia.id,ib.habitante,ib.banio,ib.ducha,ib.cocina,ibl.bloque,ips.piso
          FROM infra_ambiente ia 
          INNER JOIN infra_no_pedagogico_vivienda ib on ia.id = ib.infra_ambiente_id
          INNER JOIN infra_bloque ibl on ia.infra_bloque_id = ibl.id
          INNER JOIN infra_piso ips on ips.infra_bloque_id = ibl.id AND ia.infra_piso_id = ips.id
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteDetalleVivienda = await sequelize.query(ambienteDetalleVivienda_sql,
          { type: sequelize.QueryTypes.SELECT, plain:true },
          {raw: true});
          let ambienteRespuestasVivienda_sql = `SELECT   ia.id
          ,ico.id,ipre.pregunta,im.material,ica.caracteristica 
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_condicion ic ON ic.infra_ambiente_id = ia.id
          INNER JOIN infra_condicion ico ON ic.infra_condicion_id = ico.id
          INNER JOIN infra_material_tipo im ON im.id = ico.infra_material_tipo_id   
          INNER JOIN infra_caracteristica_tipo ica ON ica.id = ico.infra_caracteristica_tipo_id   
          INNER JOIN infra_pregunta_tipo ipre ON ipre.id = ico.infra_pregunta_tipo_id   
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteRespuestasVivienda = await sequelize.query(ambienteRespuestasVivienda_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          res.status(200).send({'ambienteDetalle': result_ambienteDetalleVivienda, 'ambienteUe': '', 'ambienteRespuestas': result_ambienteRespuestasVivienda});
        break;
        case "5":
          let ambienteDetalleInternado_sql = `SELECT  ia.id,it.ambiente,ia.cantidad,ia.es_universal,ib.litera,ib.cama,infra_responsable_tipo_id,ir.responsable,ib.distancia
          ,ibl.bloque,ips.piso,ia.servicio_electrico,ia.servicio_agua
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_no_pedagogico_internado ib on ia.id = ib.infra_ambiente_id
          INNER JOIN infra_responsable_tipo ir ON ir.id = ib.infra_responsable_tipo_id
          INNER JOIN infra_bloque ibl on ia.infra_bloque_id = ibl.id
          INNER JOIN infra_piso ips on ips.infra_bloque_id = ibl.id AND ia.infra_piso_id = ips.id
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteDetalleInternado = await sequelize.query(ambienteDetalleInternado_sql,
          { type: sequelize.QueryTypes.SELECT, plain:true },
          {raw: true});
          let ambienteRespuestasInternado_sql = `SELECT   ia.id
          ,ico.id,ipre.pregunta,im.material,ica.caracteristica 
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_condicion ic ON ic.infra_ambiente_id = ia.id
          INNER JOIN infra_condicion ico ON ic.infra_condicion_id = ico.id
          INNER JOIN infra_material_tipo im ON im.id = ico.infra_material_tipo_id   
          INNER JOIN infra_caracteristica_tipo ica ON ica.id = ico.infra_caracteristica_tipo_id   
          INNER JOIN infra_pregunta_tipo ipre ON ipre.id = ico.infra_pregunta_tipo_id   
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteRespuestasInternado = await sequelize.query(ambienteRespuestasInternado_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          res.status(200).send({'ambienteDetalle': result_ambienteDetalleInternado, 'ambienteUe': '', 'ambienteRespuestas': result_ambienteRespuestasInternado});
        break;
        case "6":
          let ambienteDetalleServicio_sql = `SELECT   ia.id,ia.infra_ambiente_tipo_id,it.ambiente,ia.es_utilizado,ia.servicio_electrico,ia.servicio_agua,
          ia.es_universal,ib.bloque,ips.piso
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_bloque ib on ia.infra_bloque_id = ib.id
          INNER JOIN infra_piso ips on ips.infra_bloque_id = ib.id AND ia.infra_piso_id = ips.id
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteDetalleServicio = await sequelize.query(ambienteDetalleServicio_sql,
          { type: sequelize.QueryTypes.SELECT, plain:true },
          {raw: true});
          let ambienteUeServicio_sql = `SELECT   ia.id, ia.infra_predio_id
            ,ipie.institucioneducativa_id,ie.institucioneducativa
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_predio_institucioneducativa iapie ON ia.id = iapie.infra_ambiente_id
          INNER JOIN infra_predio_institucioneducativa ipie ON iapie.infra_predio_institucioneducativa =  ipie.id
          INNER JOIN institucioneducativa ie on ie.id = ipie.institucioneducativa_id 
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteUeServicio = await sequelize.query(ambienteUeServicio_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          let ambienteRespuestasServicio_sql = `SELECT   ia.id
          ,ico.id,ipre.pregunta,im.material,ica.caracteristica 
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_condicion ic ON ic.infra_ambiente_id = ia.id
          INNER JOIN infra_condicion ico ON ic.infra_condicion_id = ico.id
          INNER JOIN infra_material_tipo im ON im.id = ico.infra_material_tipo_id   
          INNER JOIN infra_caracteristica_tipo ica ON ica.id = ico.infra_caracteristica_tipo_id   
          INNER JOIN infra_pregunta_tipo ipre ON ipre.id = ico.infra_pregunta_tipo_id   
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteRespuestasServicio = await sequelize.query(ambienteRespuestasServicio_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          res.status(200).send({'ambienteDetalle': result_ambienteDetalleServicio, 'ambienteUe': result_ambienteUeServicio, 'ambienteRespuestas': result_ambienteRespuestasServicio});
        break;
        case "7":
          let ambienteDetalleBateria_sql = `SELECT   ia.id,ia.infra_ambiente_tipo_id,it.ambiente,ib.bloque,ips.piso
          ,ia.servicio_electrico,ia.servicio_agua
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_bloque ib on ia.infra_bloque_id = ib.id
          INNER JOIN infra_piso ips on ips.infra_bloque_id = ib.id AND ia.infra_piso_id = ips.id
          WHERE ia.id =`+ req.params.ambienteId; 
          let result_ambienteDetalleBateria = await sequelize.query(ambienteDetalleBateria_sql,
          { type: sequelize.QueryTypes.SELECT, plain:true },
          {raw: true});
          let ambienteUeBateria_sql = `SELECT ia.id,ia.infra_ambiente_tipo_id,ibt.artefacto_banio,ibn.cantidad_funciona,ibn.cantidad_no_funciona
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
					INNER JOIN infra_bateria_artefacto_banio ibn on ibn.infra_ambiente_id = ia.id 
					INNER JOIN infra_artefacto_banio_tipo ibt on ibt.id = ibn.infra_artefacto_banio_tipo_id
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteUeBateria = await sequelize.query(ambienteUeBateria_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          let ambienteRespuestasBateria_sql = `SELECT   ia.id
          ,ico.id,ipre.pregunta,im.material,ica.caracteristica 
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_condicion ic ON ic.infra_ambiente_id = ia.id
          INNER JOIN infra_condicion ico ON ic.infra_condicion_id = ico.id
          INNER JOIN infra_material_tipo im ON im.id = ico.infra_material_tipo_id   
          INNER JOIN infra_caracteristica_tipo ica ON ica.id = ico.infra_caracteristica_tipo_id   
          INNER JOIN infra_pregunta_tipo ipre ON ipre.id = ico.infra_pregunta_tipo_id   
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteRespuestasBateria = await sequelize.query(ambienteRespuestasBateria_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          res.status(200).send({'ambienteDetalle': result_ambienteDetalleBateria, 'ambienteUe': result_ambienteUeBateria, 'ambienteRespuestas': result_ambienteRespuestasBateria});
        break;
        case "8": console.log("vestuarioooooddddddddddddddddddddddddd");
          let ambienteDetalleVestuario_sql = `SELECT   ia.id,ia.infra_ambiente_tipo_id,it.ambiente,ia.es_utilizado,
          ia.es_universal,ib.bloque,ips.piso,ia.servicio_electrico,ia.servicio_agua
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_bloque ib on ia.infra_bloque_id = ib.id
          INNER JOIN infra_piso ips on ips.infra_bloque_id = ib.id AND ia.infra_piso_id = ips.id
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteDetalleVestuario = await sequelize.query(ambienteDetalleVestuario_sql,
          { type: sequelize.QueryTypes.SELECT, plain:true },
          {raw: true});
          let ambienteUeVestuario_sql = `SELECT   ia.id, ia.infra_predio_id
            ,ipie.institucioneducativa_id,ie.institucioneducativa
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_predio_institucioneducativa iapie ON ia.id = iapie.infra_ambiente_id
          INNER JOIN infra_predio_institucioneducativa ipie ON iapie.infra_predio_institucioneducativa =  ipie.id
          INNER JOIN institucioneducativa ie on ie.id = ipie.institucioneducativa_id 
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteUeVestuario = await sequelize.query(ambienteUeVestuario_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          let ambienteRespuestasVestuario_sql = `SELECT   ia.id
          ,ico.id,ipre.pregunta,im.material,ica.caracteristica 
          FROM infra_ambiente ia INNER JOIN infra_ambiente_tipo it ON ia.infra_ambiente_tipo_id = it.id
          INNER JOIN infra_ambiente_condicion ic ON ic.infra_ambiente_id = ia.id
          INNER JOIN infra_condicion ico ON ic.infra_condicion_id = ico.id
          INNER JOIN infra_material_tipo im ON im.id = ico.infra_material_tipo_id   
          INNER JOIN infra_caracteristica_tipo ica ON ica.id = ico.infra_caracteristica_tipo_id   
          INNER JOIN infra_pregunta_tipo ipre ON ipre.id = ico.infra_pregunta_tipo_id   
          WHERE ia.id =`+ req.params.ambienteId;
          let result_ambienteRespuestasVestuario = await sequelize.query(ambienteRespuestasVestuario_sql,
          { type: sequelize.QueryTypes.SELECT},
          {raw: true});
          res.status(200).send({'ambienteDetalle': result_ambienteDetalleVestuario, 'ambienteUe': result_ambienteUeVestuario, 'ambienteRespuestas': result_ambienteRespuestasVestuario});
        break;

      }
      
     }catch(exeption ){
    }
  },
  
  preguntaPedagogico(req, res) {
    var pregunta_sql = `SELECT ip.id, ip.pregunta
      FROM infra_pregunta_ambiente ia
      INNER JOIN infra_ambiente_categoria_tipo ic on ia.infra_ambiente_categoria_tipo_id = ic.id
      INNER JOIN infra_pregunta_tipo ip on ia.infra_pregunta_tipo_id=ip.id
      WHERE  ic.id=`+ req.params.tipo_ambiente  + `
      ORDER BY 1`;
    return sequelize.query(pregunta_sql,
      { type: sequelize.QueryTypes.SELECT },
      {raw: true})
        .then(async (preguntas) =>{
          let arrayPreguntas = [];
            for (const item of preguntas) { 
              const material_sql = `SELECT distinct ic.infra_material_tipo_id, im.material
              from infra_condicion ic INNER JOIN infra_material_tipo im on ic.infra_material_tipo_id = im.id
              WHERE ic.infra_pregunta_tipo_id =`+item.id;
              let material = await sequelize.query(material_sql, { type: sequelize.QueryTypes.SELECT }, {raw: true});
              let pregunta_material = 1;
              if (material.length>=1 && material[0].infra_material_tipo_id==0) {
                pregunta_material = 0;
              }
              const caracteristica_sql = `SELECT distinct ic.infra_caracteristica_tipo_id, ica.caracteristica
              from infra_condicion ic INNER JOIN infra_caracteristica_tipo ica on ic.infra_caracteristica_tipo_id = ica.id
              WHERE ic.infra_pregunta_tipo_id =`+item.id;
              let caracteristica = await sequelize.query(caracteristica_sql, { type: sequelize.QueryTypes.SELECT }, {raw: true});
              let pregunta_caracteristica = 1;
              if (caracteristica.length==1 && caracteristica[0].infra_caracteristica_tipo_id==0) {
                pregunta_caracteristica = 0;
              }
              item["pregunta_material"]=pregunta_material;
              item["pregunta_caracteristica"]=pregunta_caracteristica;
              item["material"]=material;
              item["caracteristica"]=caracteristica;
              arrayPreguntas.push(item);
            }
           res.status(200).send(arrayPreguntas);
        } )
        .catch((error) => res.status(400).send(error));
  },
  preguntaServicio(req, res) { console.log ("pramentrossdsdsdsdsds",req.params.tipo_ambiente);
    var pregunta_sql = `SELECT ip.id, ip.pregunta
      FROM infra_pregunta_ambiente ia
      INNER JOIN infra_ambiente_categoria_tipo ic on ia.infra_ambiente_categoria_tipo_id = ic.id
      INNER JOIN infra_pregunta_tipo ip on ia.infra_pregunta_tipo_id=ip.id
      WHERE  ic.id=`+ req.params.tipo_ambiente  + `
      ORDER BY 1`;
    return sequelize.query(pregunta_sql,
      { type: sequelize.QueryTypes.SELECT },
      {raw: true})
        .then(async (preguntas) =>{console.log("servicioooooo0000000000000000000000000");
          //var condicion_sql = `SELECT id, ambiente from infra_servicio_otro_condicion WHERE infra_predio_id = `+ req.params.predioid;
          let servicio_otro = await InfraServicioOtroCondicion.findAll({where:{infra_predio_id:req.params.predioid}, attributes:['id','infra_condicion_id']}).map(u => u.get("infra_condicion_id"));
          //const users = await User.findAll({ attributes: ["id"], where: {} // Your filters here }).map(u => u.get("id")) // [1,2,3]
          
          let arrayPreguntas = [];
          let estado = false;
            for (const item of preguntas) { 
              let condicion = await InfraCondicion.findOne({where:{infra_pregunta_tipo_id: item.id,infra_material_tipo_id:0, infra_caracteristica_tipo_id:0}, attributes: ['id']});
              console.log("servicioooooo",condicion.id);
              item["estado"] = (servicio_otro && servicio_otro.includes(condicion.id));
              if(item["estado"] && estado==false) {
                  estado = true;
                }
                arrayPreguntas.push(item);
            }
           res.status(200).send(arrayPreguntas);
        } )
        .catch((error) => res.status(400).send(error));
  },

  async ambientesParametricos(req, res) {
    try{
      let ambientes = await InfraAmbienteTipo.findAll({where:{infra_ambiente_categoria_tipo_id: req.params.ambienteId}, attributes: ['id','ambiente']});
      let areas = await InfraAreaTipo.findAll({attributes:['id','area']});
      let destinados = await InfraAmbienteDestinadoTipo.findAll({attributes:['id','destinado']});
      let responsables = await InfraResponsableTipo.findAll({where:{es_vigente: true}, attributes:['id','responsable']});
      res.status(200).send({'ambientes': ambientes, 'areas': areas, 'destinados': destinados, 'responsables': responsables});
     }catch(exeption ){

    }
  },
  async getIdCondicion(req,res) {
    try{
      let condicionId = await InfraCondicion.findAll({where: {infra_pregunta_tipo_id: req.params.preguntaId, infra_material_tipo_id: req.params.materialId, infra_caracteristica_tipo_id: req.params.caracteristicaId}, attributes: ['id']});
      res.status(200).send({'condicionId': condicionId});
     }catch(exeption ){
       res.status(400).send(error);
    }
  },
  ambientesPedagogicos(req, res) {
    var ambiente_sql = `SELECT id, ambiente from infra_ambiente_tipo WHERE infra_ambiente_categoria_tipo_id = `+ req.params.ambienteCategoriaId;
    return sequelize.query(ambiente_sql,
      { type: sequelize.QueryTypes.SELECT },
      {raw: true})
        .then((ambiente) => res.status(200).send(ambiente))
        .catch((error) => res.status(400).send(error));
  },
  listaAmbientesPedagogicos(req, res) {
    var listaAmbientesPedagogicos_sql = `select ia.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,
      ia.capacidad,ia.area,ia.largo,ia.ancho,ia.es_utilizado,ia.es_universal,ia.es_servicio,iet.id as idestado,iet.estado,ia.servicio_electrico,
      ia.servicio_agua,ib.id as idbloque,ib.bloque,ipi.id as idpiso,ipi.piso
      ,iat.id as idambsubtipo, iat.ambiente as ambsubtipo,iact.id as ambtipo, iact.ambiente_categoria as ambiente
      ,ipe.id as idpedag,iart.id as idarea, iart.area as areatipo
      from infra_predio ip
      inner join infra_ambiente ia on ia.infra_predio_id = ip.id
      inner join infra_ambiente_tipo iat on iat.id =ia.infra_ambiente_tipo_id                            --//iat sirve para el SUB TIPO  de ambiente (mas especifico)
      inner join infra_ambiente_categoria_tipo  iact on iact.id=iat.infra_ambiente_categoria_tipo_id --and iact.id = 1      --// iact sirve para definir el tipo de ambiente
      left join infra_estado_tipo iet on iet.id=ia.infra_estado_tipo_id
      inner join infra_bloque ib on ib.id = ia.infra_bloque_id ---cambiar a Inner
      inner join infra_piso ipi on ipi.id = ia.infra_piso_id
      left join infra_pedagogico ipe on ipe.infra_ambiente_id = ia.id
      left join infra_area_tipo iart on iart.id = ipe.infra_area_tipo_id
      where ip.id = `+ req.params.predioId +'and iact.id = '+ req.params.ambienteId + 'ORDER BY ia.id';
    return sequelize.query(listaAmbientesPedagogicos_sql,
      { type: sequelize.QueryTypes.SELECT },
      {raw: true})
        .then((listaAmbientesPedagogicos) => res.status(200).send(listaAmbientesPedagogicos))
        .catch((error) => res.status(400).send(error));

  },
  getlistaEspecialidadesBth(req, res){ console.log(req.params.jurisdiccionId);
    var listaEspecialidadesBth_sql = `SELECT esth.id,esth.especialidad
    from institucioneducativa_humanistico_tecnico iht
          INNER JOIN institucioneducativa_especialidad_tecnico_humanistico ihtt ON iht.institucioneducativa_id =ihtt.institucioneducativa_id
          INNER JOIN especialidad_tecnico_humanistico_tipo esth ON ihtt.especialidad_tecnico_humanistico_tipo_id =esth.id
      WHERE ihtt.institucioneducativa_id = `+ req.params.jurisdiccionId +' AND iht.gestion_tipo_id =2019'
      return sequelize.query(listaEspecialidadesBth_sql,
      { type: sequelize.QueryTypes.SELECT },
      {raw: true})
        .then((listaEspecialidadesBth) => res.status(200).send(listaEspecialidadesBth))
        .catch((error) => res.status(400).send(error));
  },
  //Ambientes No pedagogicos
  listaAmbientesNoPedagogicos(req, res){
    var listaAmbientesNoPedagogicos_sql = `select ia.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,
      ia.capacidad,ia.area,ia.largo,ia.ancho,ia.es_utilizado,ia.es_universal,ia.es_servicio,iet.id as idestado,iet.estado,ia.servicio_electrico,
      ia.servicio_agua,ib.id as idbloque,ib.bloque,ipi.id as idpiso,ipi.piso
      ,iat.id as idambsubtipo, iat.ambiente as ambsubtipo,iact.id as ambtipo, iact.ambiente_categoria as ambiente
      ,ipe.id as idpedag,iart.id as idarea, iart.area as areatipo
      from infra_predio ip
      inner join infra_ambiente ia on ia.infra_predio_id = ip.id
      inner join infra_ambiente_tipo iat on iat.id =ia.infra_ambiente_tipo_id                            --//iat sirve para el SUB TIPO  de ambiente (mas especifico)
      inner join infra_ambiente_categoria_tipo  iact on iact.id=iat.infra_ambiente_categoria_tipo_id --and iact.id = 1      --// iact sirve para definir el tipo de ambiente
      left join infra_estado_tipo iet on iet.id=ia.infra_estado_tipo_id
      inner join infra_bloque ib on ib.id = ia.infra_bloque_id ---cambiar a Inner
      inner join infra_piso ipi on ipi.id = ia.infra_piso_id
      left join infra_pedagogico ipe on ipe.infra_ambiente_id = ia.id
      left join infra_area_tipo iart on iart.id = ipe.infra_area_tipo_id
      where ip.id = `+ req.params.predioId +'and iact.id = '+ req.params.ambienteId+ 'ORDER BY ia.id';
    return sequelize.query(listaAmbientesNoPedagogicos_sql,
      { type: sequelize.QueryTypes.SELECT },
      {raw: true})
        .then((listaAmbientesNoPedagogicos) => res.status(200).send(listaAmbientesNoPedagogicos))
        .catch((error) => res.status(400).send(error));
  },

};
