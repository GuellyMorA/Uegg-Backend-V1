const InfraAccesoMedio = require('../../models/infraestructura').infra_acceso_medio;
const InfraAccesoEdificacion = require('../../models/infraestructura').infra_acceso_edificacion;
const sequelize = InfraAccesoMedio.sequelize;

module.exports = {
    /*list(req, res) {
      return InfraAccesoMedio
        .findAll({ 
        })
        .then((infraAccesoMedio) => res.status(200).send(infraAccesoMedio))
        .catch((error) => { res.status(400).send(error); });
    },*/

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraAccesoMedio
            .findByPk(req.params.id)
            .then((infraAccesoMedio) => {
                console.log(infraAccesoMedio);
                if (!infraAccesoMedio) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraAccesoMedio);
            })
            .catch((error) => res.status(400).send(error));
    },


    list(req, res) {
        return InfraAccesoMedio
            .findAll({
                attributes: ['infra_acceso_edificacion_id'],
                include: [{
                    attributes: ['acceso_universal'],
                    model: InfraAccesoEdificacion,
                    as: 'infraAccesoEdificacion',
                }],
            })
            .then((infraAccesoMedio) => res.status(200).send(infraAccesoMedio))
            .catch((error) => { res.status(400).send(error); });
    },

    async getGradaRampaSenial(req, res) {
        // console.log(req.params.idpredio);
        try {
            const acceso_sql = `select ip.id as idpredio,iae.id as idacceso,iae.ascensor,iae.acceso_universal as universal, iae.conoce_normativa as normativa
            from infra_predio ip
                inner join infra_acceso_edificacion iae on iae.infra_predio_id =ip.id
                where ip.id=` + req.params.idpredio;
            let accesoEdificacion = await sequelize.query(acceso_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });

            const grada_sql = `select ip.id as idpredio,iae.id as idacceso, iam.id as idmedio,iam.infra_ubicacion_tipo_id as idubicacion,imat.id as idmediotipo, imat.medio_acceso,
        string_agg(iamgr.id::character varying, ',') as idiamgr,
        string_agg(igrct.id::character varying, ',') as idgradarampa,
        string_agg(igrct.caracteristica_grada, ',') as gradarampa
        from infra_predio ip
        inner join infra_acceso_edificacion iae on iae.infra_predio_id =ip.id
        inner	join infra_acceso_medio iam on iam.infra_acceso_edificacion_id = iae.id
        inner join infra_medio_acceso_tipo imat on imat.id =iam.infra_medio_acceso_tipo_id and imat.id=1		
        inner join infra_acceso_medio_grada_rampa iamgr on iamgr.infra_acceso_medio_id=iam.id
        inner join infra_grada_rampa_cuenta_tipo igrct on igrct.id =iamgr.infra_grada_rampa_id
        where ip.id=` + req.params.idpredio + `group by ip.id,iae.id, iam.id,iam.infra_ubicacion_tipo_id,imat.id, imat.medio_acceso`;
            let grada = await sequelize.query(grada_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });
            //  console.log(grada);
            const rampa_sql = `select ip.id as idpredio,iae.id as idacceso, iam.id as idmedio,iam.infra_ubicacion_tipo_id as idubicacion,imat.id as idmediotipo, imat.medio_acceso,
        string_agg(iamgr.id::character varying, ',') as idiamgr,
        string_agg(igrct.id::character varying, ',') as idgradarampa,
        string_agg(igrct.caracteristica_grada, ',') as gradarampa
        from infra_predio ip
            inner join infra_acceso_edificacion iae on iae.infra_predio_id =ip.id
              inner	join infra_acceso_medio iam on iam.infra_acceso_edificacion_id = iae.id
              inner join infra_medio_acceso_tipo imat on imat.id =iam.infra_medio_acceso_tipo_id and imat.id=2		
              inner join infra_acceso_medio_grada_rampa iamgr on iamgr.infra_acceso_medio_id=iam.id
              inner join infra_grada_rampa_cuenta_tipo igrct on igrct.id =iamgr.infra_grada_rampa_id
        where ip.id=` + req.params.idpredio + ` group by ip.id,iae.id, iam.id,iam.infra_ubicacion_tipo_id,imat.id, imat.medio_acceso`;
            let rampa = await sequelize.query(rampa_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });

            const senial_sql = `select ip.id as idpredio,iae.id as idacceso, iam.id as idmedio,iam.infra_ubicacion_tipo_id as idubicacion,imat.id as idmediotipo, imat.medio_acceso,
                string_agg(iaes.id::character varying, ',') as idiaes,
                string_agg(ist.id::character varying, ',') as idsenial,
                string_agg(ist.senialetica, ',') as senial
        from infra_predio ip
            inner join infra_acceso_edificacion iae on iae.infra_predio_id =ip.id
              inner	join infra_acceso_medio iam on iam.infra_acceso_edificacion_id = iae.id
              inner join infra_medio_acceso_tipo imat on imat.id =iam.infra_medio_acceso_tipo_id and imat.id=3	
                 inner join infra_acceso_edificacion_senialetica iaes on iaes.infra_acceso_medio_id =iam.id
                inner join infra_senialetica_tipo ist on iaes.infra_senialetica_tipo_id = ist.id
          where ip.id=` + req.params.idpredio + ` group by ip.id,iae.id, iam.id ,iam.infra_ubicacion_tipo_id,imat.id, imat.medio_acceso`;
            let senial = await sequelize.query(senial_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });

            console.log(accesoEdificacion, grada, rampa, senial);

            res.status(200).send({
                accesoEdificacion: accesoEdificacion,
                grada: grada,
                rampa: rampa,
                senial: senial
            });
        } catch (exeption) {

        }
    },

};