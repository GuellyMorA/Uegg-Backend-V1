const InfraPrevencionEquipamiento = require('../../models/infraestructura').infraPrevencionEquipamiento;
const InfraInstitucioneducativaPrevencion = require('../../models/infraestructura').infraInstitucioneducativaPrevencion;
const sequelize = InfraPrevencionEquipamiento.sequelize;

module.exports = {
    list(req, res) {
        return InfraPrevencionEquipamiento
            .findAll({})
            .then((infraPrevencionEquipamiento) => res.status(200).send(infraPrevencionEquipamiento))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraPrevencionEquipamiento
            .findByPk(req.params.id)
            .then((infraPrevencionEquipamiento) => {
                console.log(infraPrevencionEquipamiento);
                if (!infraPrevencionEquipamiento) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraPrevencionEquipamiento);
            })
            .catch((error) => res.status(400).send(error));
    },
    async add(req, res) {
        const verificaEquipamiento_sql = `select count(*) as cantidad from infra_prevencion_equipamiento where infra_institucioneducativa_prevencion_id = ` + req.body.infraInstitucioneducativaPrevencionId + `and infra_equipamiento_tipo =` + req.body.infraEquipamientoTipo;
        //let validate = await verificaCaracteristica(req.body.infra_gestion_construccion, req.body.infra_caracteristica_construccion);//sequelize.query(verificaCaracteristica_sql, { type: sequelize.QueryTypes.SELECT, raw: true });
        let validate = await sequelize.query(verificaEquipamiento_sql, { type: sequelize.QueryTypes.SELECT, raw: true });
        if (validate[0].cantidad == 0) {
            return InfraPrevencionEquipamiento
                .create({
                    infraEquipamientoTipo: req.body.infraEquipamientoTipo,
                    infraInstitucioneducativaPrevencionId: req.body.infraInstitucioneducativaPrevencionId,
                    funciona: req.body.funciona,
                    noFunciona: req.body.noFunciona,
                    anioColaboracion: req.body.anioColaboracion,
                })
                .then((infraPrevencionEquipamiento) => res.status(201).send(infraPrevencionEquipamiento))
                .catch((error) => res.status(400).send(error));
        } else {
            res.status(200).send({ msg: 'exist' })
        }
        //Verificar si existe , attributes : [id]
        /*const resulInstitucioneducativaPrevencion = await InfraInstitucioneducativaPrevencion
        .findOne({where: {'infraPredioInstitucioneducativaId': req.body.infraInstitucioneducativaId}, attributes: ['id']});
        let InfraInstitucioneducativaPrevencionId = 0;
        if (resulInstitucioneducativaPrevencion) {
            InfraInstitucioneducativaPrevencionId = resulInstitucioneducativaPrevencion.id;
        } else {
            let resulInstitucioneducativaPrevencion = await InfraInstitucioneducativaPrevencion
            .create({
                infraPredioInstitucioneducativaId: `${ req.body.infraInstitucioneducativaId }`,
                disponibleFormulario: false,
                personalCapacitado: false,
                formularioEdanE: false
            });
            InfraInstitucioneducativaPrevencionId = resulInstitucioneducativaPrevencion.id;
        }*/

    },
    delete(req, res) {
        return InfraPrevencionEquipamiento
            .findByPk(req.params.id)
            .then(infraPrevencionEquipamiento => {
                if (!infraPrevencionEquipamiento) {
                    return res.status(400).send({
                        message: 'infraPrevencionEquipamiento Not Found',
                    });
                }
                return infraPrevencionEquipamiento
                    .destroy()
                    .then(() => res.status(204).send())
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },
    async getPrevencionEquipamiento(req, res) {
        //console.log(req.params.body);
        try {
            const auxilio_sql = `select ipe.id,iet.id as idequipamiento,iet.equipamiento,iect.id as idcategoria, iect.equipamiento_categoria as categoria,ipe.funciona,ipe.no_funciona,ipe.anio_colaboracion
			from infra_prevencion_equipamiento ipe 
			inner join infra_equipamiento_tipo iet on iet.id = ipe.infra_equipamiento_tipo
			inner join infra_equipamiento_categoria_tipo iect on iect.id = iet.infra_equipamiento_categoria_tipo
			where ipe.infra_institucioneducativa_prevencion_id=` + req.params.idprevencion + ` and iet.infra_equipamiento_categoria_tipo =1`;
            let datoAuxilio = await sequelize.query(auxilio_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });

            const comunicacion_sql = `select ipe.id,iet.id as idequipamiento,iet.equipamiento,iect.id as idcategoria, iect.equipamiento_categoria as categoria,ipe.funciona,ipe.no_funciona,ipe.anio_colaboracion
			from infra_prevencion_equipamiento ipe 
			inner join infra_equipamiento_tipo iet on iet.id = ipe.infra_equipamiento_tipo
			inner join infra_equipamiento_categoria_tipo iect on iect.id = iet.infra_equipamiento_categoria_tipo
			where ipe.infra_institucioneducativa_prevencion_id=` + req.params.idprevencion + ` and iet.infra_equipamiento_categoria_tipo =2`;
            let datoComunicacion = await sequelize.query(comunicacion_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });

            const seguridad_sql = `select ipe.id,iet.id as idequipamiento,iet.equipamiento,iect.id as idcategoria, iect.equipamiento_categoria as categoria,ipe.funciona,ipe.no_funciona,ipe.anio_colaboracion
			from infra_prevencion_equipamiento ipe 
			inner join infra_equipamiento_tipo iet on iet.id = ipe.infra_equipamiento_tipo
			inner join infra_equipamiento_categoria_tipo iect on iect.id = iet.infra_equipamiento_categoria_tipo
			where ipe.infra_institucioneducativa_prevencion_id=` + req.params.idprevencion + ` and iet.infra_equipamiento_categoria_tipo =3`;
            let datoSeguridad = await sequelize.query(seguridad_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });

            const simulacro_sql = `select ipe.id,iet.id as idequipamiento,iet.equipamiento,iect.id as idcategoria, iect.equipamiento_categoria as categoria,ipe.funciona,ipe.no_funciona,ipe.anio_colaboracion
			from infra_prevencion_equipamiento ipe 
			inner join infra_equipamiento_tipo iet on iet.id = ipe.infra_equipamiento_tipo
			inner join infra_equipamiento_categoria_tipo iect on iect.id = iet.infra_equipamiento_categoria_tipo
			where ipe.infra_institucioneducativa_prevencion_id=` + req.params.idprevencion + ` and iet.infra_equipamiento_categoria_tipo =4`;
            let datoSimulacro = await sequelize.query(simulacro_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });

            const instrumento_sql = `select ipe.id,iet.id as idequipamiento,iet.equipamiento,iect.id as idcategoria, iect.equipamiento_categoria as categoria,ipe.funciona,ipe.no_funciona,ipe.anio_colaboracion
			from infra_prevencion_equipamiento ipe 
			inner join infra_equipamiento_tipo iet on iet.id = ipe.infra_equipamiento_tipo
			inner join infra_equipamiento_categoria_tipo iect on iect.id = iet.infra_equipamiento_categoria_tipo
			where ipe.infra_institucioneducativa_prevencion_id=` + req.params.idprevencion + ` and iet.infra_equipamiento_categoria_tipo =5`;
            let datoInstrumento = await sequelize.query(instrumento_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });


            console.log(datoAuxilio, datoComunicacion, datoSeguridad, datoSimulacro, datoInstrumento);

            res.status(200).send({
                datoAuxilio: datoAuxilio,
                datoComunicacion: datoComunicacion,
                datoSeguridad: datoSeguridad,
                datoSimulacro: datoSimulacro,
                datoInstrumento: datoInstrumento
            });
        } catch (exeption) {

        }
    },

};