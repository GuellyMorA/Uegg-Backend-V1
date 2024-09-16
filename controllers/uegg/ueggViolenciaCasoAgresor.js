const UeggViolenciaCasoAgresor = require('../../models/uegg').uegg_violencia_caso_agresor ; 

module.exports = {
    list(req, res) {
        return UeggViolenciaCasoAgresor
            .findAll({})
            .then((UeggViolenciaCasoAgresor) => res.status(200).send(UeggViolenciaCasoAgresor)) 
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id);
        return UeggViolenciaCasoAgresor
            .findByPk(req.params.id)
            .then((UeggViolenciaCasoAgresor) => { 
                console.log(UeggViolenciaCasoAgresor);
                if (!UeggViolenciaCasoAgresor) {
                    return res.status(404).send({
                        message: 'UeggViolenciaCasoAgresor no encontrado',
                    });
                }
                return res.status(200).send(UeggViolenciaCasoAgresor);
            })
            .catch((error) => res.status(400).send(error));
    },



    add(req, res) {
        return UeggViolenciaCasoAgresor.create({
            num_caso: req.body.num_caso,
            fec_agresion: req.body.fec_agresion,
            num_agresores: req.body.num_agresores,           
            estado: 'ACTIVO' ,
            usu_cre: req.body.usu_cre ,
            fec_cre: req.body.fec_cre 
          
        })
          .then(UeggViolenciaCasoAgresor => res.status(201).send(UeggViolenciaCasoAgresor))
          .catch(error => res.status(400).send(error));
      },
    
      update(req, res) {
        console.log(UeggViolenciaCasoAgresor);
        return UeggViolenciaCasoAgresor.findByPk(req.params.Id, {})
          .then(UeggViolenciaCasoAgresor => {
            if (!UeggViolenciaCasoAgresor) {
              return res.status(404).send({
                message: "UeggViolenciaCasoAgresor Not Found"
              });
            }
            return UeggViolenciaCasoAgresor
              .update({
                num_caso: req.body.num_caso || UeggViolenciaCasoAgresor.num_caso,
                fec_agresion: req.body.fec_agresion  || UeggViolenciaCasoAgresor.fec_agresion,
                num_agresores: req.body.num_agresores  || UeggViolenciaCasoAgresor.num_agresores,
                estado: 'MODIFICADO',  
                usu_mod: req.body.usu_mod ,
                fec_mod: req.body.fec_mod
              })
              .then(() =>{  
                 console.log(' *************SI UPDATE OK');
                 res.status(200).send(UeggViolenciaCasoAgresor)   })
              .catch(error => {
                console.log(' *************ERROR UPDATE 1', error);
                res.status(400).send(error)  });
          })
          .catch(error => {
            console.log(' *************ERROR UPDATE 2',  error);
            res.status(400).send(error)  });
      },
    
      delete(req, res) {
        return UeggViolenciaCasoAgresor.findByPk(req.params.Id)
          .then(UeggViolenciaCasoAgresor => {
            if (!UeggViolenciaCasoAgresor) {
              return res.status(400).send({
                message: "UeggViolenciaCasoAgresor Not Found"
              });
            }
            return UeggViolenciaCasoAgresor
              .destroy()
              .then(() =>{
                console.log(' ************SI DELETE OK');
                 res.status(204).send() }  )
              .catch(error => res.status(400).send(error));
          })
          .catch(error => res.status(400).send(error));
      },
    
      getByCaso(req, res) {
        console.log('req', req.params, `select * from public.uegg_violencia_caso_agresor where num_caso = '${req.params.numero}' `);
        return sequelize.query(`select * from public.uegg_violencia_caso_agresor where num_caso = '${req.params.numero}' `, {
            type: sequelize.QueryTypes.SELECT, plain: false, raw: true 
          })
            .then((subcentros) => res.status(200).send(subcentros))
            .catch((error) => { res.status(400).send(error); });
      },



};