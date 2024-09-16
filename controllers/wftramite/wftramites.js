const Tramite = require('../../models').tramite;
const FlujoProceso = require('../../models').flujo_proceso;
const FlujoTipo = require('../../models').flujo_tipo;
const LugarTipo = require('../../models').lugar_tipo;
const WfUsuarioFlujoProceso = require('../../models').wf_usuario_flujo_proceso;
const WfTareaCompuerta = require('../../models').wf_tarea_compuerta;
const Usuario = require('../../models').usuario;
const Persona = require('../../models').persona;
const Institucioneducativa = require('../../models').institucioneducativa;
const TramiteDetalle = require('../../models').tramite_detalle;
const WfTramiteService = require('../../services/wftramite');
const WfFlujoInstitucioneducativaTipo = require('../../models').wf_flujo_institucioneducativa_tipo;

const sequelize = Tramite.sequelize;
/***/

module.exports = {
    async index(req, res) {
        const usuario = req.body.userId;
        const rol = req.body.roluser;
        const pathSystem = req.body.pathSystem;
        const tipo = req.body.tipo*1;
        let data = null;
        if (!usuario) {
            res.status(200).send({ tipo: 0, msg: 'logout' });
        }
        if (tipo == 2) {
            data = await listaRecibidos(rol, usuario);
        } else if(tipo == 3) {
            data = await listaEnviados(rol, usuario);
        } else {
            data = await listaNuevos(pathSystem);
        }
        res.status(200).send({'ruta': 'index', 'data': data});
    },

    async lista(req, res) {
        const usuario = req.body.userId;
        const rol = req.body.roluser;
        const roluserlugarid = req.body.roluserlugarid;
        const pathSystem = req.body.pathSystem;
        const tipo = req.body.tipo*1;
        const ie_id = (req.body.ie_id=='')?0:req.body.ie_id;
        let data = null;
        //validation if the user is logged
        if (!usuario) {
            res.status(200).send({ 'tipo': 0, 'msg': 'logout' });
        }
        switch (tipo) {
            case 1:
                data = await listaNuevos(pathSystem);
                break;
            case 2:
                data = await listaRecibidos(rol, usuario);
                break;
            case 3:
                data = await listaEnviados(rol, usuario);
                break;
            case 4:
                data = await listaConcluidos(rol, roluserlugarid, ie_id);
                break;
            /* case 5:
                data = listaReactivadosBth(roluserlugarid);
                break; */
            default:
                data = await listaNuevos(pathSystem);
                break;
        }
        //return $this -> render('SieProcesosBundle:WfTramite:contenido.html.twig', $data);
        res.status(200).send(data);
    },

    /**
     * Redireccion al formulario de inicio de tramite segun el flujo
     */
    async nuevo(req,res) {
        const usuario = req.body.userId;
        const rol = req.body.roluser;
        const roluserlugarid = req.body.roluserlugarid;
        const ie = req.body.ie;
        const id = req.body.id;

        if (!usuario) {
            res.status(200).send({ tipo: 0, msg: 'logout' });
        }
        
        let flujoproceso = await FlujoProceso.findOne({where: {flujo_tipo_id: id,orden: 1},
            include:[
                {
                    model: FlujoTipo,
                    attributes: ['flujo'],
                    required: true
                }
            ]
        });
        //console.log(flujoproceso.flujo_tipo.flujo);
        if(flujoproceso.rol_tipo_id != 9){  //si no es director
            let wfusuario = await WfUsuarioFlujoProceso.findAll({
                where: {
                    usuario_id: usuario,
                    esactivo: true,
                    lugar_tipo_id:roluserlugarid
                },
                attributes:['id'],
                include:[
                    {
                        model: FlujoProceso,
                        attributes: ['id'],
                        where:{
                            orden: 1,
                            flujo_tipo_id: id,
                            rol_tipo_id: rol
                        },
                        required: true
                    }
                ]
            });
            //console.log(wfusuario)
            if(wfusuario.lenght == 0){
                res.status(200).send({ruta:flujoproceso.ruta_formulario,param:{id:id,tipo:'idflujo'}});
            }else{
                res.status(200).send({ ruta:'wf_tramite_index', msg: 'No tiene tuición para iniciar un nuevo tramite: ' +  flujoproceso.flujo_tipo.flujo,param:{tipo:1}});
            }    
        }else{
            let aTuicion;
            if(rol == flujoproceso.rol_tipo_id){
                aTuicion = await sequelize.query("SELECT get_ue_tuicion ("+ usuario +", "+ ie +", "+ rol +")");
                if (aTuicion[0][0].get_ue_tuicion) {
                    res.status(200).send({ruta:flujoproceso.ruta_formulario,param:{id:id,tipo:'idflujo'}});
                }else{
                    res.status(200).send({ ruta:'wf_tramite_index', msg: 'No tiene tuición para iniciar un nuevo tramite: ' +  flujoproceso.flujo_tipo.flujo,param:{tipo:1}});
                }        
            }else{
                res.status(200).send({ ruta:'wf_tramite_index', msg: 'No tiene tuición para iniciar un nuevo tramite: ' +  flujoproceso.flujo_tipo.flujo,param:{tipo:1}});
            }
        }
    },

    // Registro del tramite como recibido
    async recibidosGuardar(req, res) {
        const idusuario = req.body.userId;
        const rol = req.body.roluser;
        const idtramite = req.body.id;
        let mensaje;
        
        let tramite = await Tramite.findByPk(idtramite);
        let tramiteDetalle = await TramiteDetalle.findOne({where: {id: Number(tramite.tramite)},
            include:[
                {
                    model: FlujoProceso,
                    required: true
                }
            ]
        });

        if(tramiteDetalle.tramite_estado_id == 15 || tramiteDetalle.tramite_estado_id == 4){ //enviado o devuelto
            let tarea;
            if(tramiteDetalle.flujo_proceso.es_evaluacion == true){
                let t = await WfTareaCompuerta.findOne({
                    where:{
                        flujo_proceso_id: tramiteDetalle.flujo_proceso.id,
                        condicion: tramiteDetalle.valor_evaluacion
                    }
                });
                tarea = t.condicion_tarea_siguiente;
            }else{
                tarea = tramiteDetalle.flujo_proceso.tarea_sig_id;
            }
            mensaje = await WfTramiteService.guardarTramiteRecibido(idusuario, tarea, idtramite);
        }        
        res.status(200).send(mensaje);
        //return $this->redirectToRoute('wf_tramite_index',array('tipo'=>2));
    },

    /**
     * Redireccion del tramite a su formularios correspondiente
     */
    async recibidosEnviar(req, res) {
        const usuario = req.body.userId;
        const rol = req.body.roluser;
        const id = req.body.id;

        //validation if the user is logged
        if (!usuario) {
            res.status(200).send({ tipo: 0, msg: 'logout' });
        }
        
        let tramite = await Tramite.findByPk(id);
        let tramiteDetalle = await TramiteDetalle.findByPk(Number(tramite.tramite));
        let flujoproceso = await FlujoProceso.findByPk(tramiteDetalle.flujo_proceso_id);
        
        //Verificamos si tiene competencia
        if(rol == flujoproceso.rol_tipo_id){
            res.status(200).send({ruta:flujoproceso.ruta_formulario,param:{id:id,tipo:'idtramite'}});
        }else{
            res.status(200).send({ruta:'wf_tramite_index',msg:'No tiene tuición para este tramite',param:{tipo:2}});
        }  
    },

    /**
     * Impresion de formularios como comprobantes
     */
    async reporteFormulario(req, res) {
        const usuario = req.body.userId;
        const rol = req.body.roluser;
        const pathSystem = req.body.pathSystem;
        const idtramite =  req.body.idtramite;
        const id_td =  req.body.id_td;
        //validation if the user is logged
        if (!usuario) {
            res.status(200).send({ tipo: 0, msg: 'logout' });
        }
        
        let tramite = await Tramite.findByPk(idtramite);
        let tramiteDetalle = await TramiteDetalle.findOne({
            where:{id: id_td},
            include: [{
                    model: FlujoProceso,
                    required: true
                }
            ]
        });
        /**
         * Verificamos si cuenta con una ruta de reporte
         **/
        if(tramiteDetalle.flujo_proceso.ruta_reporte){
            res.status(200).send({ruta:tramiteDetalle.flujoproceso.ruta_formulario,param:{idtramite:idtramite,id_td:id_td}});
        }else{
            res.status(200).send({ ruta:'wf_tramite_index', msg: "La tarea: "+ flujoproceso.proceso_tipo.proceso + " correspondiente al tramite Nro. "+ idtramite + "no cuenta con un reporte.",param:{tipo:3}});
        }
    },

    /**
     * lista el detalle d estado de cada tramite
     */
    async recibidosDetalle(req, res) {

        const usuario = req.body.userId;
        const pathSystem = req.body.pathSystem;
        const idtramite = req.body.id;
        const flujotipo = req.body.flujo;
        
        //validation if the user is logged
        if (!usuario) {
            res.status(200).send({ tipo: 0, msg: 'logout' });
        }
        
        let detalle = await detalle(flujotipo,idtramite); 
        res.status(200).send({ruta:detalle,data:{detalle:detalle['detalle'],fecha_fin:detalle['fecha_fin'],idtramite:idtramite}});
    },

    // muestra formulario para la derivacion del tramite a otro usuario si es que la tarea cuanta con mas de un usuario
    async recibidosDerivarUsuario(req, res) {
        const idusuario = req.body.userId;
        const lugarTipoUsuario = req.body.roluserlugarid;
        const idtramite = req.body.id;
        let tarea = '';
    
        let tramite = await Tramite.findByPk(idtramite);
        let tramiteDetalle = await TramiteDetalle.findOne({
            where: {id: tramite.tramite},
            include:[
                {
                    model: FlujoProceso,
                    required: true
                }
            ]
        });
        
        if(tramiteDetalle.flujo_proceso.es_evaluacion == true) {
            let t = await WfTareaCompuerta.findOne({
                where: {
                    flujo_proceso_id: tramiteDetalle.flujo_proceso.id,
                    condicion: tramiteDetalle.valor_evaluacion
                }
            });
            tarea = t.condicion_tarea_siguiente;
        } else {
            tarea = tramiteDetalle.flujo_proceso.tarea_sig_id;
        }

        let wfUsuarioFlujoProceso = await WfUsuarioFlujoProceso.findAll({
            where: {
                flujo_proceso_id: tarea,
                lugar_tipo_id: lugarTipoUsuario
            },
            attributes: ['id', 'usuario_id'],
            include:[
                {
                    model: Usuario,
                    required: true,
                    attributes: ['persona_id'],
                    include:[
                        {
                            model: Persona,
                            required: true,
                            attributes: ['nombre', 'paterno', 'materno'],
                        }
                    ]
                }
            ]
        });

        let usuario = [];
    	wfUsuarioFlujoProceso.forEach(function(u) {
            usuario.push({id: u.usuario_id, nombre: u.usuario.persona.nombre + " " + u.usuario.persona.paterno + " " + u.usuario.persona.materno});
        });
        res.status(200).send({'usuarios': usuario});//, 'td_id': tramiteDetalle.id
    },

    // guarda la rerivacion del tramite
    async recibidosDerivarGuardar(req, res) {
        const usuario_id = req.body.userId;
        const tramite_id = req.body.id;
        const usuario_destinatario = req.body.usuario_destinatario;
        
        //validation if the user is logged
        if (!usuario_id) {
            res.status(200).send({'estado': 500, 'msg': 'Usuario no autenticado'});
        }

        let usuario = await Usuario.findOne({
            where: {id: usuario_destinatario},
            include:[
                {
                    model: Persona,
                    required: true,
                    attributes: ['nombre', 'paterno', 'materno'],
                }
            ]
        });

        let tramite = await Tramite.findByPk(tramite_id);
        if (tramite) {
            await TramiteDetalle.update({
              usuario_destinatario: usuario_destinatario
            }, {where: { id: tramite.tramite } });
        }
        res.status(200).send({'estado': 200, 'msg': 'El Trámite '+ tramite_id +' fué derivado a '+usuario.persona.nombre+' '+usuario.persona.paterno+' '+usuario.persona.materno});
    }

    /**
     * modulos de seguimiento de un tramite
     */
    /* public function seguimientoTramiteAction(Request $request)
    {
        $this->session = $request->getSession();
        //dump($this->session);die;
        $id_usuario = $this->session->get('userId');
        $pathSystem = $this->session->get('pathSystem');
        //validation if the user is logged
        if (!isset($id_usuario)) {
            return $this->redirect($this->generateUrl('login'));
        }
       
        $flujoSeguimientoForm = $this->createFlujoSeguimientoForm(); 
        return $this->render('SieProcesosBundle:WfTramite:flujoSeguimiento.html.twig', array(
            'form' => $flujoSeguimientoForm->createView(),
        ));
        
    }

    public function createFlujoSeguimientoForm()
    {
        $form = $this->createFormBuilder()
            //->setAction($this->generateUrl('flujoproceso_guardar'))
            ->add('proceso','entity',array('label'=>'Trámite','required'=>true,'attr' => array('class' => 'form-control'),'class'=>'SieAppWebBundle:FlujoTipo','query_builder'=>function(EntityRepository $ft){
                return $ft->createQueryBuilder('ft')->where('ft.id > 5')->andWhere("ft.obs like '%ACTIVO%'")->orderBy('ft.flujo','ASC');},'property'=>'flujo','empty_value' => 'Seleccione trámite'))
            ->add('tramite','text',array('label'=>'Nro. de Trámite','required'=>true,'attr' => array('placeholder'=>'Nro. de trámite','class'=>'form-control validar')))
            ->getForm();
        return $form;
    }

    public function verFlujoAction(Request $request )
    {
        //dump($request);die;
        $form = $request->get('form');
        $id_usuario = $this->session->get('userId');
        $pathSystem = $this->session->get('pathSystem');
        //validation if the user is logged
        if (!isset($id_usuario)) {
            return $this->redirect($this->generateUrl('login'));
        }
        
        $em = $this->getDoctrine()->getManager();
        
        $tramite = $em->getRepository('SieAppWebBundle:Tramite')->findOneBy(array('id'=>$form['tramite'],'flujoTipo'=>$form['proceso']));
        //dump($tramite);die;
        $data=array();
        if (!$tramite){
            //dump($data['nombre']);die;
            $mensaje = 'Número de tramite es incorrecto';
            $request->getSession()
                ->getFlashBag()
                ->add('error', $mensaje);
            
        }else{
            $data = $this->listarF($form['proceso'],$form['tramite']);
        }
        return $this->render('SieProcesosBundle:WfTramite:flujo.html.twig',$data);
        
    } */

};

async function listaNuevos(pathSystem) {
    let iet = 0, data = new Object();
    switch (pathSystem) {
        case 'SieRegularBundle':
        case 'SieHerramientaBundle':
            iet = 1;
            break;
        case 'SieHerramientaAlternativaBundle':
            iet = 2;
            break;
        case 'SiePermanenteBundle':
            iet = 5;
            break;
        case 'SieEspecialBundle':
            iet = 4;
            break;
        case 'SieDgesttlaBundle':
            iet = 1;
            break;
        case 'SiePnpBundle':
            iet = 10;
            break;
        case 'SieRieBundle':
            iet = 9;
            break;
        case 'SieCctpBundle':
            iet = 11;
            break;
        default:
            break;
    }
    let flujotipo = await WfFlujoInstitucioneducativaTipo
        .findAll({
            where: { institucioneducativa_tipo_id: iet },
            include: [{
                model: FlujoTipo,
                where: { 'obs': 'ACTIVO' },
            }],
        });
    data.entities = flujotipo;
    data.titulo = "Nuevo trámite";
    data.tipo = 1;
    return data;
};

async function listaRecibidos(rol, usuario) {
    let data = new Object();
    const queryRecibidos = `select distinct t.id,case when (ie.id is not null) then 'SIE:'||ie.id when (ie.id is null and ft.id=6) then 'SIE:' when ei.id is not null then 'RUDE: '|| e.codigo_rude when mi.id is not null then 'CI: '||pm.carnet when ai.id is not null then 'CI: '||pa.carnet end as codigo_tabla ,case when ie.id is not null then 'Institucion Educativa: '||ie.institucioneducativa when (ie.id is null and ft.id=6) then 'Institucion Educativa: ' when ei.id is not null then 'Estudiante: '||e.nombre||' '||e.paterno||' '||e.materno when mi.id is not null then 'Maestro: '||pm.nombre||' '||pm.paterno||' '||pm.materno when ai.id is not null then 'Apoderado: '||pa.nombre||' '||pa.paterno||' '||pa.materno end as nombre_tabla,ft.flujo,ft.id as idflujo,case when te.id=3 then pt.proceso_tipo when (te.id=15 or te.id=4)  and (fp.es_evaluacion is false) then ptsig.proceso_tipo when (te.id=15 or te.id=4) and (fp.es_evaluacion is true) then ptc.proceso_tipo  end as proceso_tipo,pt.proceso_tipo as tarea_actual,tt.tramite_tipo,te.tramite_estado,case when te.id = 3 then td.fecha_recepcion else td.fecha_envio end as fecha_estado,te.id as id_estado,td.obs,fp.plazo,case when te.id = 3 then td.fecha_recepcion + fp.plazo else null end as fecha_vencimiento,p.nombre||' '||p.paterno||' '||p.materno as nombre,fp.ruta_formulario
    from tramite t
    join tramite_detalle td on cast(t.tramite as int)=td.id
    left join institucioneducativa ie on t.institucioneducativa_id=ie.id
    left join estudiante_inscripcion ei on t.estudiante_inscripcion_id=ei.id
    left join estudiante e on ei.estudiante_id=e.id
    left join maestro_inscripcion mi on t.maestro_inscripcion_id=mi.id
    left join persona pm on mi.persona_id=pm.id
    left join apoderado_inscripcion ai on t.apoderado_inscripcion_id=ai.id
    left join persona pa on ai.persona_id=pa.id
    join flujo_proceso fp on td.flujo_proceso_id=fp.id
    left join flujo_proceso fpsig on fp.tarea_sig_id=fpsig.id
    left join flujo_proceso fpant on fp.tarea_ant_id=fpant.id
    left join proceso_tipo ptsig on fpsig.proceso_id=ptsig.id
    join proceso_tipo pt on fp.proceso_id=pt.id
    left join wf_tarea_compuerta wftc on fp.id=wftc.flujo_proceso_id
    left join flujo_proceso fpc on fpc.id=wftc.condicion_tarea_siguiente
    left join proceso_tipo ptc on fpc.proceso_id=ptc.id
    join tramite_tipo tt on t.tramite_tipo=tt.id
    join tramite_estado te on td.tramite_estado_id=te.id
    join flujo_tipo ft on t.flujo_tipo_id = ft.id
    join usuario u on td.usuario_remitente_id=u.id
    join persona p on p.id=u.persona_id
    where ft.id>5 and t.fecha_fin is null and
    ((fpsig.rol_tipo_id=`+rol+` and (te.id=15 or te.id=4) and fp.es_evaluacion is false) or 
    (fp.rol_tipo_id=`+rol+` and te.id=3) or 
    ((select rol_tipo_id from flujo_proceso where id= wftc.condicion_tarea_siguiente)=`+rol+` and (te.id=15 or te.id=4) and fp.es_evaluacion is true and td.valor_evaluacion=wftc.condicion) ) and td.usuario_destinatario_id=`+usuario+` 
    order by t.id,ft.flujo,te.tramite_estado,fecha_estado,proceso_tipo,tt.tramite_tipo,id_estado,td.obs,nombre`;
    let result = await sequelize.query(queryRecibidos, { type: sequelize.QueryTypes.SELECT }, { raw: true });
    data.entities = result;
    data.titulo = "Listado de trámites recibidos";
    data.tipo = 2;
    return data;
};

async function listaEnviados(rol, usuario) {
    let data = new Object();
    const queryEnviados = `select t.id as idt,td.id as id_td,case when (ie.id is not null) then 'SIE:'||ie.id when (ie.id is null and ft.id=6) then 'SIE:' when ei.id is not null then 'RUDE: '|| e.codigo_rude when mi.id is not null then 'CI: '||pm.carnet when ai.id is not null then 'CI: '||pa.carnet end as codigo_tabla ,case when (ie.id is not null) then 'Institucion Educativa: '||ie.institucioneducativa when (ie.id is null and ft.id=6) then 'Institucion Educativa:' when ei.id is not null then 'Estudiante: '||e.nombre||' '||e.paterno||' '||e.materno when mi.id is not null then 'Maestro: '||pm.nombre||' '||pm.paterno||' '||pm.materno when ai.id is not null then 'Apoderado: '||pa.nombre||' '||pa.paterno||' '||pa.materno end as nombre_tabla,fp.ruta_reporte,ft.flujo,ft.id as flujo_tipo_id,tt.tramite_tipo,pt.proceso_tipo,te.tramite_estado,td.fecha_envio,td.fecha_recepcion,td.obs,fp.plazo,case when fp.plazo is not null then td.fecha_recepcion + fp.plazo else null end as fecha_vencimiento,p.nombre||' '||p.paterno||' '||p.materno as nombre
        from tramite t
        join tramite_detalle td on t.id =td.tramite_id
        left join institucioneducativa ie on t.institucioneducativa_id=ie.id
        left join wf_solicitud_tramite wft on td.id=wft.tramite_detalle_id
        left join tramite_detalle td1 on td1.id = wft.tramite_detalle_id
        left join flujo_proceso fp1 on td1.flujo_proceso_id =fp1.id
        left join estudiante_inscripcion ei on t.estudiante_inscripcion_id=ei.id
        left join estudiante e on ei.estudiante_id=e.id
        left join maestro_inscripcion mi on t.maestro_inscripcion_id=mi.id
        left join persona pm on mi.persona_id=pm.id
        left join apoderado_inscripcion ai on t.apoderado_inscripcion_id=ai.id
        left join persona pa on ai.persona_id=pa.id
        join flujo_proceso fp on td.flujo_proceso_id=fp.id
        join proceso_tipo pt on fp.proceso_id=pt.id
        join tramite_tipo tt on t.tramite_tipo=tt.id
        join tramite_estado te on td.tramite_estado_id=te.id
        join flujo_tipo ft on t.flujo_tipo_id = ft.id
        join usuario u on td.usuario_remitente_id=u.id
        join persona p on p.id=u.persona_id
        where ft.id>5 and fp.rol_tipo_id=`+rol+` and (te.id=15 or te.id=4)
        and wft.es_valido is true
        and td.usuario_remitente_id=`+usuario+` order by fecha_envio DESC`;
    let result = await sequelize.query(queryEnviados, { type: sequelize.QueryTypes.SELECT }, { raw: true });
    data.entities = result;
    data.titulo = "Listado de trámites enviados";
    data.tipo = 3;
    return data;
};

async function listaConcluidos(rol, roluserlugarid, ie_id) {
    let data = new Object();
    const resultLugarTipo = await LugarTipo.findByPk(roluserlugarid);
    let lugarNivelid = resultLugarTipo.lugar_nivel_id;
    //$lugarNivelid = $em->getRepository('SieAppWebBundle:LugarTipo')->find($roluserlugarid)->getLugarNivel()->getId();
    //dump($roluserlugarid,$lugarNivelid);die;
    
    /* $query = $em->getConnection()->prepare("select t.id,ft.id as idflujo,ft.flujo,tt.id as tramite_tipo_id,tt.tramite_tipo,t.fecha_fin,t.fecha_registro,t.fecha_fin-t.fecha_registro as duracion,case when (ie.id is not null) then 'SIE:'||ie.id when (ie.id is null and ft.id=6) then 'SIE:' when ei.id is not null then 'RUDE: '|| e.codigo_rude when mi.id is not null then 'CI: '||p.carnet when ai.id is not null then 'CI: '||pa.carnet end as codigo_tabla,case when ie.id is not null then 'Institucion Educativa: '||ie.institucioneducativa when ei.id is not null then 'Estudiante: '||e.nombre||' '||e.paterno||' '||e.materno when mi.id is not null then 'Maestro: '||p.nombre||' '||p.paterno||' '||p.materno when ai.id is not null then 'Apoderado: '||pa.nombre||' '||pa.paterno||' '||pa.materno end as nombre,'CONCLUIDO' as estado
    from tramite t
    join tramite_tipo tt on t.tramite_tipo=tt.id and t.flujo_tipo_id > 5 and t.fecha_fin is not null
    join flujo_tipo ft on t.flujo_tipo_id = ft.id
    left join institucioneducativa ie on t.institucioneducativa_id=ie.id
    left join estudiante_inscripcion ei on t.estudiante_inscripcion_id=ei.id
    left join estudiante e on ei.estudiante_id=e.id
    left join maestro_inscripcion mi on t.maestro_inscripcion_id=mi.id
    left join persona p on mi.persona_id=p.id
    left join apoderado_inscripcion ai on t.apoderado_inscripcion_id=ai.id
    left join persona pa on ai.persona_id=pa.id
    order by ft.flujo,t.id,t.fecha_fin"); */

    //$id_usuario = $this->session->get('userId');
    const queryConcluidos = `select t.id,ft.id as idflujo,ft.flujo,tt.id as tramite_tipo_id,tt.tramite_tipo,t.fecha_fin,t.fecha_registro,t.fecha_fin-t.fecha_registro as duracion,'SIE:'||ie.id as codigo_tabla,
    'Institucion Educativa: '||ie.institucioneducativa as nombre,
    'CONCLUIDO' as estado
    from tramite t
    join tramite_tipo tt on t.tramite_tipo=tt.id and t.flujo_tipo_id >5 and t.fecha_fin is not null
    join flujo_tipo ft on t.flujo_tipo_id = ft.id
    join institucioneducativa ie on t.institucioneducativa_id=ie.id
    join jurisdiccion_geografica le on (ie.le_juridicciongeografica_id=le.id)
    join lugar_tipo lt on lt.id=le.lugar_tipo_id_distrito
    where case when `+rol+`=9 then ie.id=`+ie_id+` when `+lugarNivelid+` in (1,6,8) then lt.lugar_tipo_id=`+roluserlugarid+` when `+lugarNivelid+`= 7 then lt.id=`+roluserlugarid+` when `+lugarNivelid+`=0 then 1=1 end 
    
    union all
    select t.id,ft.id as idflujo,ft.flujo,tt.id as tramite_tipo_id,tt.tramite_tipo,t.fecha_fin,t.fecha_registro,t.fecha_fin-t.fecha_registro as duracion,'RUDE: '|| e.codigo_rude as codigo_tabla,
    'Estudiante: '||e.nombre||' '||e.paterno||' '||e.materno as nombre,
    'CONCLUIDO' as estado
    from tramite t
    join tramite_tipo tt on t.tramite_tipo=tt.id and t.flujo_tipo_id >5 and t.fecha_fin is not null
    join flujo_tipo ft on t.flujo_tipo_id = ft.id
    join estudiante_inscripcion ei on t.estudiante_inscripcion_id=ei.id
    join estudiante e on ei.estudiante_id=e.id
    join institucioneducativa_curso iec on iec.id=ei.institucioneducativa_curso_id
    join institucioneducativa ie on iec.institucioneducativa_id=ie.id
    join jurisdiccion_geografica le on (ie.le_juridicciongeografica_id=le.id)
    join lugar_tipo lt on lt.id=le.lugar_tipo_id_distrito
    where case when `+rol+`=9 then ie.id=`+ie_id+` when `+lugarNivelid+` in (1,6,8) then lt.lugar_tipo_id=`+roluserlugarid+` when `+lugarNivelid+`= 7 then lt.id=`+roluserlugarid+` when `+lugarNivelid+`=0 then 1=1 end 
    
    union all
    select t.id,ft.id as idflujo,ft.flujo,tt.id as tramite_tipo_id,tt.tramite_tipo,t.fecha_fin,t.fecha_registro,t.fecha_fin-t.fecha_registro as duracion,'CI: '||p.carnet as codigo_tabla,
    'Maestro: '||p.nombre||' '||p.paterno||' '||p.materno as nombre,
    'CONCLUIDO' as estado
    from tramite t
    join tramite_tipo tt on t.tramite_tipo=tt.id and t.flujo_tipo_id >5 and t.fecha_fin is not null
    join flujo_tipo ft on t.flujo_tipo_id = ft.id
    join maestro_inscripcion mi on t.maestro_inscripcion_id=mi.id
    join persona p on mi.persona_id=p.id
    join institucioneducativa ie on mi.institucioneducativa_id=ie.id
    join jurisdiccion_geografica le on (ie.le_juridicciongeografica_id=le.id)
    join lugar_tipo lt on lt.id=le.lugar_tipo_id_distrito
    where case when `+rol+`=9 then ie.id= `+ie_id+` when `+lugarNivelid+` in (1,6,8) then lt.lugar_tipo_id=`+roluserlugarid+` when `+lugarNivelid+` = 7 then lt.id=`+roluserlugarid+` when `+lugarNivelid+`=0 then 1=1 end 
    
    union all
    select t.id,ft.id as idflujo,ft.flujo,tt.id as tramite_tipo_id,tt.tramite_tipo,t.fecha_fin,t.fecha_registro,t.fecha_fin-t.fecha_registro as duracion,'CI: '||pa.carnet as codigo_tabla,
    'Apoderado: '||pa.nombre||' '||pa.paterno||' '||pa.materno as nombre,
    'CONCLUIDO' as estado
    from tramite t
    join tramite_tipo tt on t.tramite_tipo=tt.id and t.flujo_tipo_id >5 and t.fecha_fin is not null
    join flujo_tipo ft on t.flujo_tipo_id = ft.id
    join apoderado_inscripcion ai on t.apoderado_inscripcion_id=ai.id
    join persona pa on ai.persona_id=pa.id
    join estudiante_inscripcion ei on ai.estudiante_inscripcion_id=ei.id
    join institucioneducativa_curso iec on iec.id=ei.institucioneducativa_curso_id
    join institucioneducativa ie on iec.institucioneducativa_id=ie.id
    join jurisdiccion_geografica le on (ie.le_juridicciongeografica_id=le.id)
    join lugar_tipo lt on lt.id=le.lugar_tipo_id_distrito
    where case when `+rol+`=9 then ie.id= `+ie_id+` when `+lugarNivelid+` in (1,6,8) then lt.lugar_tipo_id=`+roluserlugarid+` when `+lugarNivelid+` = 7 then lt.id=`+roluserlugarid+` when `+lugarNivelid+`=0 then 1=1 end 

    union all
    select t.id,ft.id as idflujo,ft.flujo,tt.id as tramite_tipo_id,tt.tramite_tipo,t.fecha_fin,t.fecha_registro,t.fecha_fin-t.fecha_registro as duracion,'SIE:' as codigo_tabla,
    'Institucion Educativa: '||(wf.datos::json->>'institucionEducativa')::VARCHAR as nombre,
    'CONCLUIDO' as estado
    from tramite t
    join tramite_tipo tt on t.tramite_tipo=tt.id and t.flujo_tipo_id >5 and t.fecha_fin is not null
    join flujo_tipo ft on t.flujo_tipo_id = ft.id
    join tramite_detalle td on td.tramite_id=t.id
    join flujo_proceso fp on fp.id=td.flujo_proceso_id and fp.orden=1
    join wf_solicitud_tramite wf on wf.tramite_detalle_id=td.id and wf.es_valido is true
    join lugar_tipo lt on lt.id=wf.lugar_tipo_distrito_id
    where case when `+rol+`=9 then t.institucioneducativa_id NOTNULL when `+lugarNivelid+` in (1,6,8) then lt.lugar_tipo_id=`+roluserlugarid+` when `+lugarNivelid+` = 7 then lt.id=`+roluserlugarid+` when `+lugarNivelid+`=0 then 1=1 end 
    and t.estudiante_inscripcion_id ISNULL and t.maestro_inscripcion_id ISNULL and t.apoderado_inscripcion_id ISNULL and t.institucioneducativa_id ISNULL
    ;`;
    let result = await sequelize.query(queryConcluidos, { type: sequelize.QueryTypes.SELECT }, { raw: true });
    data.entities = result;
    data.titulo = "Listado de trámites concluidos";
    data.tipo = 4;
    return data;
};

async function detalle(flujotipo, idtramite) {
    let queryDetail = `select p.id, p.flujo,d.institucioneducativa, p.proceso_tipo, p.orden, p.es_evaluacion,p.variable_evaluacion,d.valor_evaluacion, p.plazo, p.tarea_ant_id, p.tarea_sig_id, p.rol_tipo_id,d.id as td_id,d.tramite_id, d.flujo_proceso_id,d.fecha_recepcion,d.fecha_envio,d.usuario_remitente,d.usuario_destinatario,d.obs,d.tramite_estado,d.tramite_estado_id,d.fecha_envio-d.fecha_recepcion as duracion,case when p.plazo is not null then d.fecha_recepcion + p.plazo else null end as fecha_vencimiento,d.fecha_fin
    from
    (SELECT 
      fp.id, f.flujo, p.proceso_tipo, fp.orden, fp.es_evaluacion,fp.variable_evaluacion,fp.plazo, fp.tarea_ant_id, fp.tarea_sig_id, fp.rol_tipo_id
    FROM 
      flujo_tipo f join flujo_proceso fp on f.id = fp.flujo_tipo_id
      join proceso_tipo p on p.id = fp.proceso_id
    WHERE 
       f.id=`+ flujotipo +` order by fp.orden)p
    LEFT JOIN
    (SELECT 
      t1.id,t1.tramite_id, t1.flujo_proceso_id,t.fecha_fin,te.tramite_estado,te.id as tramite_estado_id,t1.fecha_recepcion,t1.fecha_envio,pr.nombre||' '||pr.paterno||' '||pr.materno as usuario_remitente,pd.nombre||' '||pd.paterno||' '||pd.materno as usuario_destinatario,i.institucioneducativa,t1.valor_evaluacion,t1.obs
    FROM 
      tramite_detalle t1 join tramite t on t1.tramite_id=t.id
      join tramite_estado te on t1.tramite_estado_id=te.id
      left join usuario ur on t1.usuario_remitente_id=ur.id
      left join persona pr on ur.persona_id=pr.id
      left join usuario ud on t1.usuario_destinatario_id=ud.id
      left join persona pd on ud.persona_id=pd.id
      left join institucioneducativa i on t.institucioneducativa_id=i.id
    where t1.tramite_id=`+ idtramite +` order by t1.id)d
    ON p.id=d.flujo_proceso_id order by d.id,p.id`;
    let detail = await sequelize.query(queryDetail, { type: sequelize.QueryTypes.SELECT }, { raw: true });
    var detalle = [];
    detalle['detalle'] = detail;
    detalle['fecha_fin'] = detail[0].fecha_fin;
    return detalle;
}