const InfraServicioOtroTipo = require('../../models/infraestructura').infra_servicio_otro_tipo;
const InfraServicioOtroCondicion = require('../../models/infraestructura').infra_servicio_otro_condicion;
const InfraCondicion = require('../../models/infraestructura').infra_condicion;
const InfraServicioOtroCuenta = require('../../models/infraestructura').infra_servicio_otro_cuenta;
const InfraInternetServicio = require('../../models/infraestructura').infra_internet_servicio;

const InfraInternetConexionTipo = require('../../models/infraestructura').infra_internet_conexion_tipo;
const InfraInternetDisponibilidadTipo = require('../../models/infraestructura').infra_internet_disponibilidad_tipo;
const InfraInternetEmpresasTipo = require('../../models/infraestructura').infra_internet_empresa_servicio_tipo;
const InfraInternetPersonasTipo = require('../../models/infraestructura').infra_internet_personas_tipo;
const InfraInternetDisponibilidadServicioTipo = require('../../models/infraestructura').infra_internet_disponibilidad_servicio_tipo;


const sequelize = InfraServicioOtroTipo.sequelize;

module.exports = {
    list(req, res) {
        return InfraServicioOtroTipo
            .findAll({})
            .then((infraServicioOtroTipo) => res.status(200).send(infraServicioOtroTipo))
            .catch((error) => { res.status(400).send(error); });
    },
    getById(req, res) {
        return InfraServicioOtroTipo
            .findByPk(req.params.id)
            .then((infraServicioOtroTipo) => {
                console.log(infraServicioOtroTipo);
                if (!infraServicioOtroTipo) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraServicioOtroTipo);
            })
            .catch((error) => res.status(400).send(error));
    },
    async add(req, res) {
        let existeServicio = await InfraServicioOtroCondicion.findAll({ where: { infra_predio_id: req.body.predioId }, attributes: ['id'] });
        if (existeServicio) {
            await InfraServicioOtroCondicion.destroy({ where: { infra_predio_id: req.body.predioId } });
        }
        for (const item of req.body.preguntas) {
            if (item.estado == true) {
                let condicion = await InfraCondicion.findOne({ where: { infra_pregunta_tipo_id: item.id, infra_material_tipo_id: 0, infra_caracteristica_tipo_id: 0 }, attributes: ['id'] });
                await InfraServicioOtroCondicion
                    .create({
                        infra_predio_id: req.body.predioId,
                        infra_condicion_id: condicion.id
                    });
            }
        }
        res.status(200).send({ 'mensaje': 'se guardo' });
          //  .catch((error) => res.status(400).send(error));
        // .then(() => res.status(201).send({'mensaje':'se guardo'}));
        //     	.catch((error) => res.status(400).send(error));
    },

    async getserviciosOfreceCuenta(req, res) {
        try {
            let ofrece = await InfraServicioOtroTipo.findAll({ where: { infra_servicio_otro_categoria_tipo_id: 2 }, attributes: ['id', 'servicio'] });
            let cuenta = await InfraServicioOtroTipo.findAll({ where: { infra_servicio_otro_categoria_tipo_id: 1 }, attributes: ['id', 'servicio'] });
            var cuenta_sql = `SELECT string_agg( b.id::character varying, ',') as id
			FROM infra_servicio_otro_cuenta a 
			INNER JOIN infra_servicio_otro_tipo b on a.infra_servicio_otro_tipo_id = b.id
			WHERE a.infra_predio_id = ` + req.params.predioId + ` and ` + `b.infra_servicio_otro_categoria_tipo_id = 1 and a.infra_predio_institucioneducativa_id = ` + req.params.ueId;
            let cuenta_result = await sequelize.query(cuenta_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });
            var ofrece_sql = `SELECT string_agg( b.id::character varying, ',') as id
			FROM infra_servicio_otro_cuenta a 
			INNER JOIN infra_servicio_otro_tipo b on a.infra_servicio_otro_tipo_id = b.id
			WHERE a.infra_predio_id = ` + req.params.predioId + ` and ` + `b.infra_servicio_otro_categoria_tipo_id = 2 and a.infra_predio_institucioneducativa_id = ` + req.params.ueId;
            let ofrece_result = await sequelize.query(ofrece_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });
            console.log(ofrece_result);
        // servicio internet gma
        let conexion = await InfraInternetConexionTipo.findAll( {attributes: ['id', 'conexion_tipo'] });
        let disponibilidad = await InfraInternetDisponibilidadTipo.findAll({  attributes: ['id', 'disponibilidad_tipo'] });
        let empresa = await InfraInternetEmpresasTipo.findAll({  attributes: ['id', 'empresa_tipo'] });
        let persona = await InfraInternetPersonasTipo.findAll({  attributes: ['id', 'persona_tipo'] }); // array Quienes acceden al servicio ?
             
        var conexion_sql = `     SELECT c.infra_internet_conexion_tipo_id as id
        FROM infra_servicio_otro_cuenta a
        INNER JOIN infra_servicio_otro_tipo b on a.infra_servicio_otro_tipo_id = b.id
        INNER JOIN infra_internet_disponibilidad_servicio_tipo c on c.infra_servicio_otro_cuenta_id = a.id 
        WHERE a.infra_predio_id =  ` + req.params.predioId + ` and ` + `b.infra_servicio_otro_categoria_tipo_id = 1 and a.infra_predio_institucioneducativa_id = ` + req.params.ueId +` LIMIT 1` ;
        let conexion_result = await sequelize.query(conexion_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });
      
        var disponibilidad_sql = `     SELECT c.infra_internet_disponibilidad_tipo_id as id
        FROM infra_servicio_otro_cuenta a
        INNER JOIN infra_servicio_otro_tipo b on a.infra_servicio_otro_tipo_id = b.id
        INNER JOIN infra_internet_disponibilidad_servicio_tipo c on c.infra_servicio_otro_cuenta_id = a.id 
        WHERE a.infra_predio_id =  ` + req.params.predioId + ` and ` + `b.infra_servicio_otro_categoria_tipo_id = 1 and a.infra_predio_institucioneducativa_id = ` + req.params.ueId +` LIMIT 1`  ;
        let disponibilidad_result = await sequelize.query(disponibilidad_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });
      
        var empresa_sql = `     SELECT c.infra_internet_empresa_servicio_tipo_id as id
        FROM infra_servicio_otro_cuenta a
        INNER JOIN infra_servicio_otro_tipo b on a.infra_servicio_otro_tipo_id = b.id
        INNER JOIN infra_internet_disponibilidad_servicio_tipo c on c.infra_servicio_otro_cuenta_id = a.id 
        WHERE a.infra_predio_id =  ` + req.params.predioId + ` and ` + `b.infra_servicio_otro_categoria_tipo_id = 1 and a.infra_predio_institucioneducativa_id = ` + req.params.ueId +` LIMIT 1`  ;
        let empresa_result = await sequelize.query(empresa_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });
            
        var persona_sql = `     SELECT string_agg( c.infra_internet_personas_tipo_id::character varying, ',') as id
        FROM infra_servicio_otro_cuenta a
        INNER JOIN infra_servicio_otro_tipo b on a.infra_servicio_otro_tipo_id = b.id
        INNER JOIN infra_internet_disponibilidad_servicio_tipo c on c.infra_servicio_otro_cuenta_id = a.id 
        WHERE a.infra_predio_id =  ` + req.params.predioId + ` and ` + `b.infra_servicio_otro_categoria_tipo_id = 1 and a.infra_predio_institucioneducativa_id = ` + req.params.ueId +` LIMIT 1` ;
        let persona_result = await sequelize.query(persona_sql, { type: sequelize.QueryTypes.SELECT }, { raw: true });
      
        let servcioId = await InfraServicioOtroCuenta.findAll( {where: { 'infra_predio_id': req.params.predioId, 'infra_servicio_otro_tipo_id': 11 ,'infra_predio_institucioneducativa_id': req.params.ueId }});
        console.log('conexion_result[0]   : ', conexion_result[0]  );
        res.status(200).send({ 'ofrece': ofrece, 'cuenta': cuenta, 'cuenta_result': cuenta_result, 'ofrece_result': ofrece_result , 'conexion':conexion ,'conexion_result':conexion_result[0] ,
           'disponibilidad':disponibilidad ,'disponibilidad_result':disponibilidad_result[0],'empresa':empresa,'empresa_result':empresa_result[0],'persona':persona ,'persona_result':persona_result , 'servcioId' :servcioId});
        } catch (error) {
            console.log('getserviciosOfreceCuenta error.message  : ', error.message );
            res.status(400).send(error.message);
        }
    },
    async getIdCondicionServicio(req, res) {
        try {
            let condicionId = await InfraCondicion.findOne({ where: { infra_pregunta_tipo_id: req.params.preguntaId }, attributes: ['id'] });
            res.status(200).send({ 'condicionId': condicionId });
        } catch (exeption) {
            res.status(400).send(error);
        }
    },
    async updateServicioOfreceCuenta(req, res) {
      
        var serviciosI = `SELECT count(*) FROM infra_internet_servicio WHERE
        institucioneducativa_id = ` + req.body.infra_predio_institucioneducativa_id;
        let siIntet = await sequelize.query(serviciosI, { type: sequelize.QueryTypes.SELECT }, { raw: true });

        if (siIntet[0].count != 0) {
            console.log('Update');
        } else {
            console.log(':-o', req.body); //   console.log(JSON.stringify(req.body)); gma
            let servC = req.body.cuenta;
            let servI = req.body.servicioInternet;
          //  console.log(servI);
            /* if (servC.includes(11)) {
                await InfraInternetServicio.create({
                    institucioneducativa_id: req.body.infra_predio_institucioneducativa_id,
                    tipo: servI.tipo,
                    empi: servI.empi,
                    peri: servI.peri,
                    disp: servI.disp

                })
            } else {
                console.log('no guarda internet');
            } */
        }

        console.log('si hay servicios', siIntet);

        try {
            let idIncremento =0; 
            // borrar los datos de la tabla hijo, para que no de error al borrar datos en la tabla padre ,  'infra_servicio_otro_tipo_id': 11,
            let conexion = await InfraServicioOtroCuenta.findAll({ where: { 'infra_predio_id': req.body.infra_predio_id, 'infra_predio_institucioneducativa_id': req.body.infra_predio_institucioneducativa_id }, attributes: ['id']  }, { raw: true });
            if (conexion.length > 0) {    // {attributes: ['id', 'conexion_tipo'] });
                conexion = conexion.map( (item) => item.id);
                await InfraInternetDisponibilidadServicioTipo.destroy({ where: {  'infra_servicio_otro_cuenta_id':conexion  } });// {in: [conexion]}   , conexion[0].id  req.body.infra_servicio_otro_cuenta_id

                console.log('*-*-*-*', conexion ); //gma  'infra_predio_id': req.body.infra_predio_id,
                await InfraServicioOtroCuenta.destroy({ where: { 'infra_predio_id': req.body.infra_predio_id, 'infra_predio_institucioneducativa_id': req.body.infra_predio_institucioneducativa_id } });

                for (const item of req.body.cuenta) {
                    await InfraServicioOtroCuenta
                        .create({
                            infra_predio_id: req.body.infra_predio_id,
                            infra_servicio_otro_tipo_id: item,
                            infra_predio_institucioneducativa_id: req.body.infra_predio_institucioneducativa_id
                        })
                        .then(result => { console.log('InfraServicioOtroCuenta id.-' , result.id);
                        idIncremento = result.id ;}  
                    );
                }
                for (const item of req.body.ofrece) {
                    await InfraServicioOtroCuenta
                        .create({
                            infra_predio_id: req.body.infra_predio_id,
                            infra_servicio_otro_tipo_id: item,
                            infra_predio_institucioneducativa_id: req.body.infra_predio_institucioneducativa_id
                        })                    
                }
                
                console.log('*-*-*-* nuevo insert.- ', ' infraInternetDisponibilidadServicioTipo'); //gma
                // await InfraInternetDisponibilidadServicioTipo.destroy({ where: {  'infra_servicio_otro_cuenta_id': req.body.infra_servicio_otro_cuenta_id } });
                console.log(' typeof( : ',  typeof(req.body.servicioInternet.tipo) ); 
                for (const item of req.body.servicioInternet.perI) {     // servicioInternet gma
                    await InfraInternetDisponibilidadServicioTipo
                        .create({
                            infraServicioOtroCuentaId: idIncremento , //req.body.infra_servicio_otro_cuenta_id,
                           // infraServicioOtroTipoId: 11, //req.body.infra_servicio_otro_tipo_id,  // borrar esta col en la  tabla bd brc
                            infraInternetConexionTipoId:  typeof(req.body.servicioInternet.tipo) === 'object' ? req.body.servicioInternet.tipo.id : req.body.servicioInternet.tipo,
                            infraInternetDisponibilidadTipoId:   typeof(req.body.servicioInternet.disp) === 'object' ? req.body.servicioInternet.disp.id : req.body.servicioInternet.disp,
                            infraInternetEmpresaServicioTipoId:  typeof(req.body.servicioInternet.empI) === 'object' ? req.body.servicioInternet.empI.id : req.body.servicioInternet.empI,
                            infraInternetPersonasTipoId: item // req.body.servicioInternet.perI
                        })
                }
            }
            return res.status(200).send({ 'msg': 'exito' });
        } catch (error) {
            console.log('updateServicioOfreceCuenta error.message  : ', error.message );
            return res.status(200).send({ 'msg': error.message });
        }
    },
    async addServicioOfreceCuenta(req, res) {
        try {
            let idIncremento =0; // gma
            for (const item of req.body.cuenta) {
                await InfraServicioOtroCuenta
                    .create({
                        infra_predio_id: req.body.infra_predio_id,
                        infra_servicio_otro_tipo_id: item,
                        infra_predio_institucioneducativa_id: req.body.infra_predio_institucioneducativa_id
                    })
                    .then(result => { console.log('InfraServicioOtroCuenta id.-' , result.id);
                    idIncremento = result.id ;} ) 
            }
            for (const item of req.body.ofrece) {
                await InfraServicioOtroCuenta
                    .create({
                        infra_predio_id: req.body.infra_predio_id,
                        infra_servicio_otro_tipo_id: item,
                        infra_predio_institucioneducativa_id: req.body.infra_predio_institucioneducativa_id
                    })
            }
            if(req.body.cuenta.includes(11)) {
                for (const item of req.body.servicioInternet.perI) {     // servicioInternet gma
                    await InfraInternetDisponibilidadServicioTipo
                        .create({
                            infraServicioOtroCuentaId: idIncremento , //req.body.infra_servicio_otro_cuenta_id,
                        //   infraServicioOtroTipoId: 11, //req.body.infra_servicio_otro_tipo_id,  // borrar esta col en la  tabla bd brc
                            infraInternetConexionTipoId: req.body.servicioInternet.tipo,
                            infraInternetDisponibilidadTipoId: req.body.servicioInternet.disp,
                            infraInternetEmpresaServicioTipoId: req.body.servicioInternet.empI,
                            infraInternetPersonasTipoId: item // req.body.servicioInternet.perI
                        })
                }
            }

            return res.status(200).send({ 'msg': 'exito' });
        } catch (error) {
            console.log('addServicioOfreceCuenta error.message  : ', error.message );
            return res.status(200).send({ 'msg': 'error' });
        }
    },


};