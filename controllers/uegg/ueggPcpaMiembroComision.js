const UeggPcpaMiembroComision = require('../../models/uegg').uegg_pcpa_miembro_comision ; 
const sequelize = UeggPcpaMiembroComision.sequelize;

module.exports = {                                                                                                                                                                                                                                                                                                                                                                                                                             
    list(req, res) {
        return UeggPcpaMiembroComision
            .findAll({})
            .then((ueggPcpaMiembroComision) => res.status(200).send(ueggPcpaMiembroComision)) 
            .catch((error) => { res.status(400).send(error); });
    },


    async listMiembrosComision(req, res) {
      console.log('req', req.params);
      let ie_tipo = null; //await GeneralService.getInstitucioneducativaTipo();
      return sequelize.query(`select upue.id as id_pcpa_unidad_educativa,  upue.cod_sie,upue.desc_ue, upue.desc_municipio , 
      upue.desc_municipio  , upue.desc_nivel , upue.modalidad  , upue.nombres_director ||'-'|| upue.apellidos_director as nombres_director
      , upcon.id, upcon.fecha_registro  , upcon.check_diagnostico_pcpa 
      , upct.id as id_comision_tipo, upct.desc_comision_tipo 
      , upmt.id as id_miembro_tipo, upmt.desc_miembro_tipo
      , upmc.id as id_miembro, upmc.nombres_miembro || ' ' || upmc.apellidos_miembro  as nombres_miembro
        from uegg_pcpa_construccion upcon 
          join uegg_pcpa_unidad_educativa upue   on upcon.id_pcpa_unidad_educativa = upue.id 
          join uegg_pcpa_miembro_comision upmc  on upmc.id_pcpa_construccion = upcon.id
          join uegg_pcpa_miembro_tipo upmt      on upmt.id = upmc.id_pcpa_miembro_tipo 
          join uegg_pcpa_comision_tipo upct     on upct.id = upmc.id_pcpa_comision_tipo      
        WHERE upue.cod_ue = ${req.params.id} `, {
          type: sequelize.QueryTypes.SELECT, plain: false, raw: true 
        })
          .then((subcentros) => res.status(200).send(subcentros))
          .catch((error) => { res.status(400).send(error); });
    },



    getById(req, res) {
        console.log(req.params.id); 
        return UeggPcpaMiembroComision
            .findByPk(req.params.id)
            .then((ueggPcpaMiembroComision) => { 
                console.log(ueggPcpaMiembroComision);
                if (!ueggPcpaMiembroComision) {
                    return res.status(404).send({
                        message: 'UeggPcpaMiembroComision no encontrado',
                    });
                }
                return res.status(200).send(ueggPcpaMiembroComision); 
            })
            .catch((error) => res.status(400).send(error));
    },

    add(req, res) {
        return UeggPcpaMiembroComision.create({
            id_pcpa_construccion: req.body.id_pcpa_construccion,
            id_pcpa_comision_tipo: req.body.id_pcpa_comision_tipo,
            id_pcpa_miembro_tipo: req.body.id_pcpa_miembro_tipo,
            orden: req.body.orden,
            nombres_miembro: req.body.nombres_miembro,
            apellidos_miembro: req.body.apellidos_miembro,
            check_miembro_comision: req.body.check_miembro_comision,
                      
            estado: 'ACTIVO' ,
            usu_cre: req.body.usu_cre ,
            fec_cre: req.body.fec_cre 
          
        })
          .then(ueggPcpaMiembroComision => res.status(201).send(ueggPcpaMiembroComision))
          .catch(error => res.status(400).send(error));
      },
    
    update(req, res) {
        console.log(UeggPcpaMiembroComision);
        return UeggPcpaMiembroComision.findByPk(req.params.Id, {})
          .then(ueggPcpaMiembroComision => {
            if (!ueggPcpaMiembroComision) {
              return res.status(404).send({
                message: "ueggPcpaMiembroComision Not Found"
              });
            }
            return ueggPcpaMiembroComision
              .update({
                id_pcpa_construccion: req.body.id_pcpa_construccion || ueggPcpaMiembroComision.id_pcpa_construccion,
                id_pcpa_comision_tipo: req.body.id_pcpa_comision_tipo || ueggPcpaMiembroComision.id_pcpa_comision_tipo,
                id_pcpa_miembro_tipo: req.body.id_pcpa_miembro_tipo || ueggPcpaMiembroComision.id_pcpa_miembro_tipo,
                orden: req.body.orden || ueggPcpaMiembroComision.orden,
                nombres_miembro: req.body.nombres_miembro || ueggPcpaMiembroComision.nombres_miembro,
                apellidos_miembro: req.body.apellidos_miembro || ueggPcpaMiembroComision.apellidos_miembro,
                check_miembro_comision: req.body.check_miembro_comision || ueggPcpaMiembroComision.check_miembro_comision,
                
                estado: 'MODIFICADO',  
                usu_mod: req.body.usu_mod ,
                fec_mod: req.body.fec_mod
              })
              .then(() =>{  
                 console.log(' *************SI UPDATE OK');
                 res.status(200).send(ueggPcpaMiembroComision)   })
              .catch(error => {
                console.log(' *************ERROR UPDATE 1', error);
                res.status(400).send(error)  });
          })
          .catch(error => {
            console.log(' *************ERROR UPDATE 2',  error);
            res.status(400).send(error)  });
      },
    
      delete(req, res) {
        return UeggPcpaMiembroComision.findByPk(req.params.Id)
          .then(ueggPcpaMiembroComision => {
            if (!ueggPcpaMiembroComision) {
              return res.status(400).send({
                message: "ueggPcpaMiembroComision Not Found"
              });
            }
            return ueggPcpaMiembroComision
              .destroy()
              .then(() =>{
                console.log(' ************SI DELETE OK');
                 res.status(204).send() }  )
              .catch(error => res.status(400).send(error));
          })
          .catch(error => res.status(400).send(error));
      }



};