const UeggPcpaConstruccion = require('../../models/uegg').uegg_pcpa_construccion ; 
const sequelize = UeggPcpaConstruccion.sequelize;

module.exports = {                                                                                                                                                                                                                                                                                                                                                                                                                             
    list(req, res) {
        return UeggPcpaConstruccion
            .findAll({})
            .then((ueggPcpaConstruccion) => res.status(200).send(ueggPcpaConstruccion)) 
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); 
        return UeggPcpaConstruccion
            .findByPk(req.params.id)
            .then((ueggPcpaConstruccion) => { 
                console.log(ueggPcpaConstruccion);
                if (!ueggPcpaConstruccion) {
                    return res.status(404).send({
                        message: 'UeggPcpaConstruccion no encontrado',
                    });
                }
                return res.status(200).send(ueggPcpaConstruccion); 
            })
            .catch((error) => res.status(400).send(error));
    },

    
    add(req, res) {
        return UeggPcpaConstruccion.create({
            id_pcpa_unidad_educativa: req.body.id_pcpa_unidad_educativa ,

            fecha_registro: req.body.fecha_registro   ,    
            check_diagnostico_pcpa: req.body.check_diagnostico_pcpa ,
		  
            estado: 'ACTIVO' ,
            usu_cre: req.body.usu_cre ,
            fec_cre: req.body.fec_cre 
          
        })
          .then(ueggPcpaConstruccion => res.status(201).send(ueggPcpaConstruccion))
          .catch(error => res.status(400).send(error));
      },

    // add(req, res) {
    //     return UeggPcpaConstruccion.create({
    //       idPcpaUnidadEductiva: req.body.id_pcpa_unidad_eductiva ,
    //       fechaRegistro: req.body.fecha_registro   ,    
    //       checkDiagnosticoPcpa: req.body.check_diagnostico_pcpa ,		  
    //       estado: 'ACTIVO' ,
    //       usuCre: req.body.usu_cre ,
    //       fecCre: req.body.fec_cre 
        
    //     })
    //       .then(ueggPcpaConstruccion => res.status(201).send(ueggPcpaConstruccion))
    //       .catch(error => res.status(400).send(error));
    // },
    
    update(req, res) {
        console.log(UeggPcpaConstruccion);
        return UeggPcpaConstruccion.findByPk(req.params.Id, {})
          .then(ueggPcpaConstruccion => {
            if (!ueggPcpaConstruccion) {
              return res.status(404).send({
                message: "ueggPcpaConstruccion Not Found"
              });
            }
            return ueggPcpaConstruccion
              .update({
                id_pcpa_unidad_educativa: req.body.id_pcpa_unidad_educativa ||  ueggPcpaConstruccion.id_pcpa_unidad_educativa  ,
                fecha_registro: req.body.fecha_registro  ||  ueggPcpaConstruccion.fecha_registro  ,
                check_diagnostico_pcpa: req.body.check_diagnostico_pcpa  ||  ueggPcpaConstruccion.check_diagnostico_pcpa  ,
		   
                estado: 'MODIFICADO',  
                usu_mod: req.body.usu_mod ,
                fec_mod: req.body.fec_mod
              })
              .then(() =>{  
                 console.log(' *************SI UPDATE OK');
                 res.status(200).send(ueggPcpaConstruccion)   })
              .catch(error => {
                console.log(' *************ERROR UPDATE 1', error);
                res.status(400).send(error)  });
          })
          .catch(error => {
            console.log(' *************ERROR UPDATE 2',  error);
            res.status(400).send(error)  });
      },
    
    delete(req, res) {
        return UeggPcpaConstruccion.findByPk(req.params.Id)
          .then(ueggPcpaConstruccion => {
            if (!ueggPcpaConstruccion) {
              return res.status(400).send({
                message: "ueggPcpaConstruccion Not Found"
              });
            }
            return ueggPcpaConstruccion
              .destroy()
              .then(() =>{
                console.log(' ************SI DELETE OK');
                 res.status(204).send() }  )
              .catch(error => res.status(400).send(error));
          })
          .catch(error => res.status(400).send(error));
      },

    async getByUnidadEducativa(req, res) {
      console.log('req', req.params);
      return sequelize.query(`select upcon.id,  upue.cod_sie,upue.desc_ue, upue.desc_municipio , 
      upue.desc_municipio  , upue.desc_nivel , upue.modalidad  , upue.nombres_director ||'-'|| upue.apellidos_director as nombres_director
        from uegg_pcpa_construccion upcon 
          join uegg_pcpa_unidad_educativa upue   on upcon.id_pcpa_unidad_educativa = upue.id    
        WHERE upue.cod_ue = ${req.params.id} `, {
          type: sequelize.QueryTypes.SELECT, plain: true, raw: true 
        })
          .then((subcentros) => res.status(200).send(subcentros))
          .catch((error) => { res.status(400).send(error); });
    },
    

};