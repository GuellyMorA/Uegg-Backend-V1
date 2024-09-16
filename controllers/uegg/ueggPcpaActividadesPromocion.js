const UeggPcpaActividadesPromocion = require('../../models/uegg').uegg_pcpa_actividades_promocion ; 

module.exports = {                                                                                                                                                                                                                                                                                                                                                                                                                             
    list(req, res) {
        return UeggPcpaActividadesPromocion
            .findAll({})
            .then((ueggPcpaActividadesPromocion) => res.status(200).send(ueggPcpaActividadesPromocion)) 
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); 
        return UeggPcpaActividadesPromocion
            .findByPk(req.params.id)
            .then((ueggPcpaActividadesPromocion) => { 
                console.log(ueggPcpaActividadesPromocion);
                if (!ueggPcpaActividadesPromocion) {
                    return res.status(404).send({
                        message: 'UeggPcpaActividadesPromocion no encontrado',
                    });
                }
                return res.status(200).send(ueggPcpaActividadesPromocion); 
            })
            .catch((error) => res.status(400).send(error));
    },

    add(req, res) {
        return UeggPcpaActividadesPromocion.create({
            id_pcpa_construccion: req.body.id_pcpa_construccion,
            id_pcpa_actividades_tipo: req.body.id_pcpa_actividades_tipo,
             
            nivel: req.body.nivel,
            fec_aprobacion: req.body.fec_aprobacion,
            tiempo_vigencia: req.body.tiempo_vigencia,
            declaracion_jurada: req.body.declaracion_jurada,
            
            estado: 'ACTIVO' ,
            usu_cre: req.body.usu_cre ,
            fec_cre: req.body.fec_cre 
          
        })
          .then(ueggPcpaActividadesPromocion => res.status(201).send(ueggPcpaActividadesPromocion))
          .catch(error => res.status(400).send(error));
      },
    
      update(req, res) {
        console.log(UeggPcpaActividadesPromocion);
        return UeggPcpaActividadesPromocion.findByPk(req.params.Id, {})
          .then(ueggPcpaActividadesPromocion => {
            if (!ueggPcpaActividadesPromocion) {
              return res.status(404).send({
                message: "ueggPcpaActividadesPromocion Not Found"
              });
            }
            return ueggPcpaActividadesPromocion
              .update({
                id_pcpa_construccion: req.body.id_pcpa_construccion || ueggPcpaActividadesPromocion.id_pcpa_construccion,
                id_pcpa_actividades_tipo: req.body.id_pcpa_actividades_tipo || ueggPcpaActividadesPromocion.id_pcpa_actividades_tipo,
             
                nivel: req.body.nivel || ueggPcpaActividadesPromocion.nivel,
                fec_aprobacion: req.body.fec_aprobacion || ueggPcpaActividadesPromocion.fec_aprobacion,
                tiempo_vigencia: req.body.tiempo_vigencia || ueggPcpaActividadesPromocion.tiempo_vigencia,
                declaracion_jurada: req.body.declaracion_jurada || ueggPcpaActividadesPromocion.declaracion_jurada,

                estado: 'MODIFICADO',  
                usu_mod: req.body.usu_mod ,
                fec_mod: req.body.fec_mod
              })
              .then(() =>{  
                 console.log(' *************SI UPDATE OK');
                 res.status(200).send(ueggPcpaActividadesPromocion)   })
              .catch(error => {
                console.log(' *************ERROR UPDATE 1', error);
                res.status(400).send(error)  });
          })
          .catch(error => {
            console.log(' *************ERROR UPDATE 2',  error);
            res.status(400).send(error)  });
      },
    
      delete(req, res) {
        return UeggPcpaActividadesPromocion.findByPk(req.params.Id)
          .then(ueggPcpaActividadesPromocion => {
            if (!ueggPcpaActividadesPromocion) {
              return res.status(400).send({
                message: "ueggPcpaActividadesPromocion Not Found"
              });
            }
            return ueggPcpaActividadesPromocion
              .destroy()
              .then(() =>{
                console.log(' ************SI DELETE OK');
                 res.status(204).send() }  )
              .catch(error => res.status(400).send(error));
          })
          .catch(error => res.status(400).send(error));
      }



};