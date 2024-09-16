const usuarios = require('./usuarios');
const infraAccesoMedio = require('./infraestructura/infraAccesoMedio');
const infraAccesoMedioGradaRampa = require('./infraestructura/infraAcccesoMedioGradaRampa');
const infraAccesoEdificacionSenialetica = require('./infraestructura/infraAccesoEdificacionSenialetica');

const infraAccesoPredioTransporte = require('./infraestructura/infraAccesoPredioTransporte');
const infraAccesoTipo = require('./infraestructura/infraAccesoTipo');
const infraAmbiente = require('./infraestructura/infraAmbiente');
const infraAguaUsoTipo = require('./infraestructura/infraAguaUsoTipo');

const infraAmbienteCategoriaTipo = require('./infraestructura/infraAmbienteCategoriaTipo');
const infraAmbienteCondicion = require('./infraestructura/infraAmbienteCondicion');
const infraAmbienteDestinadoTipo = require('./infraestructura/infraAmbienteDestinadoTipo');
const infraAmbienteEspecialidad = require('./infraestructura/infraAmbienteEspecialidad');
const infraAmbienteMobiliario = require('./infraestructura/infraAmbienteMobiliario');
const infraAmbientePredioInstitucioneducativa = require('./infraestructura/infraAmbientePredioInstitucioneducativa');
const infraAmbienteTipo = require('./infraestructura/infraAmbienteTipo');
const infraAmuralladoTipo = require('./infraestructura/infraAmuralladoTipo');
const infraAreaTipo = require('./infraestructura/infraAreaTipo');
const infraArtefactoBanioTipo = require('./infraestructura/infraArtefactoBanioTipo');
const infraBateriaArtefactoBanio = require('./infraestructura/infraBateriaArtefactoBanio');
const infraBloque = require('./infraestructura/infraBloque');
const infraCaracteristicaConstruccion = require('./infraestructura/infraCaracteristicaConstruccion');
const infraCaracteristicaEdificacion = require('./infraestructura/infraCaracteristicaEdificacion');
const infraAccesoEdificacion = require('./infraestructura/infraAccesoEdificacion');
const infraCaracteristicasEspacio = require('./infraestructura/infraCaracteristicasEspacio');
const infraCaracteristicaTerreno = require('./infraestructura/infraCaracteristicaTerreno');
const infraCaracteristicaTipo = require('./infraestructura/infraCaracteristicaTipo');
const infraCondicion = require('./infraestructura/infraCondicion');
const infraConstruccion = require('./infraestructura/infraConstruccion');
const infraDisponibilidadServicioTipo = require('./infraestructura/infraDisponibilidadServicioTipo');
const infraDocumentacionTipo = require('./infraestructura/infraDocumentacionTipo');
const infraEdificacionTipo = require('./infraestructura/infraEdificacionTipo');
const infraEntidadEjecutoraTipo = require('./infraestructura/infraEntidadEjecutoraTipo');
const infraEquipamientoBrigadaTipo = require('./infraestructura/infraEquipamientoBrigadaTipo');
const infraEquipamientoCategoriaTipo = require('./infraestructura/infraEquipamientoCategoriaTipo');
const infraEquipamientoTipo = require('./infraestructura/infraEquipamientoTipo');
const infraEspaciosTipo = require('./infraestructura/infraEspaciosTipo');
const infraEstadoTipo = require('./infraestructura/infraEstadoTipo');
const infraEvacuacionTipo = require('./infraestructura/infraEvacuacionTipo');
const infraFuenteEnergiaTipo = require('./infraestructura/infraFuenteEnergiaTipo');
const infraGestionConstruccionTipo = require('./infraestructura/infraGestionConstruccionTipo');
const infraGradaRampaCuentaTipo = require('./infraestructura/infraGradaRampaCuentaTipo');
const infraHechoDelictivo = require('./infraestructura/infraHechoDelictivo');
const infraHurtoDelictivo = require('./infraestructura/infraHurtoDelictivo');
const infraInstalacionTipo = require('./infraestructura/infraInstalacionTipo');
const infraInstitucioneducativaEquipamientoBrigada = require('./infraestructura/infraInstitucioneducativaEquipamientoBrigada');
const infraInstitucioneducativaPrevencion = require('./infraestructura/infraInstitucioneducativaPrevencion');
const infraMaterialTipo = require('./infraestructura/infraMaterialTipo');
const infraMedioAccesoTipo = require('./infraestructura/infraMedioAccesoTipo');
const infraMedioEliminacionBasuraTipo = require('./infraestructura/infraMedioEliminacionBasuraTipo');
const infraMedioEliminacionExcTipo = require('./infraestructura/infraMedioEliminacionExcTipo');
const infraMedioSuministroAguaTipo = require('./infraestructura/infraMedioSuministroAguaTipo');
const infraMedioTransporteCategoriaTipo = require('./infraestructura/infraMedioTransporteCategoriaTipo');
const infraMedioTransporteTipo = require('./infraestructura/infraMedioTransporteTipo');
const infraMobiliarioPredioInstitucioneducativa = require('./infraestructura/infraMobiliarioPredioInstitucioneducativa');
const infraNoPedagogicoInternado = require('./infraestructura/infraNoPedagogicoInternado');
const infraMobiliarioTipo = require('./infraestructura/infraMobiliarioTipo');
const infraNoPedagogicoVivienda = require('./infraestructura/infraNoPedagogicoVivienda');
const infraPedagogico = require('./infraestructura/infraPedagogico');
const infraPedagogicoRecreativo = require('./infraestructura/infraPedagogicoRecreativo');
const infraPeriodicidadEliminacionBasuraTipo = require('./infraestructura/infraPeriodicidadEliminacionBasuraTipo');
const infraPiso = require('./infraestructura/infraPiso');
const infraPredio = require('./infraestructura/infraPredio');
const infraPredioFoto = require('./infraestructura/infraPredioFoto');
const infraPredioInstitucioneducativa = require('./infraestructura/infraPredioInstitucioneducativa');
const infraPredioTipo = require('./infraestructura/infraPredioTipo');
const infraPreguntaAmbiente = require('./infraestructura/infraPreguntaAmbiente');
const infraPreguntaTipo = require('./infraestructura/infraPreguntaTipo');
const infraPrevencionEquipamiento = require('./infraestructura/infraPrevencionEquipamiento');
const infraPropiedadTipo = require('./infraestructura/infraPropiedadTipo');
const infraProximoTipo = require('./infraestructura/infraProximoTipo');
const infraPurificadorAguaTipo = require('./infraestructura/infraPurificadorAguaTipo');
const infraResponsableTipo = require('./infraestructura/infraResponsableTipo');
const infraRiesgo = require('./infraestructura/infraRiesgo');
const infraRiesgoEvento = require('./infraestructura/infraRiesgoEvento');
const infraRiesgoEventoTipo = require('./infraestructura/infraRiesgoEventoTipo');
const infraRiesgoProximo = require('./infraestructura/infraRiesgoProximo');
const infraSenialeticaTipo = require('./infraestructura/infraSenialeticaTipo');
const infraServicioAgua = require('./infraestructura/infraServicioAgua');
const infraServicioElectrico = require('./infraestructura/infraServicioElectrico');
const infraServicioOtro = require('./infraestructura/infraServicioOtro');
const infraServicioOtroCategoriaTipo = require('./infraestructura/infraServicioOtroCategoriaTipo');
const infraServicioOtroCondicion = require('./infraestructura/infraServicioOtroCondicion');
const infraServicioOtroCuenta = require('./infraestructura/infraServicioOtroCuenta');
const infraServicioOtroTipo = require('./infraestructura/infraServicioOtroTipo');
const infraServicioSaneamiento = require('./infraestructura/infraServicioSaneamiento');
const infraServicioSaneamientoMedioEliminacionExc = require('./infraestructura/infraServicioSaneamientoMedioEliminacionExc');
const infraTenenciaTipo = require('./infraestructura/infraTenenciaTipo');
const infraTiempoSuspendidoTipo = require('./infraestructura/infraTiempoSuspendidoTipo');
const infraTopografiaTipo = require('./infraestructura/infraTopografiaTipo');
const infraUbicacionTipo = require('./infraestructura/infraUbicacionTipo');
const institucioneducativa = require('./institucioneducativa');
const jurisdiccionGeografica = require('./jurisdiccionGeografica');
const lugarTipo = require('./lugarTipo');
const medioTransporteTipo = require('./medioTransporteTipo');
const gestionTipo = require('./gestionTipo');
const generoTipo = require('./generoTipo');
const estadoCivilTipo = require('./estadoCivilTipo');
const turnoTipo = require('./turnoTipo');
const mesTipo = require('./mesTipo');
const infraReportes = require('./infraestructura/infraReportes');
const paisTipo = require('./paisTipo');
const departamentoTipo = require('./departamentoTipo');
const generalCctp = require('./cctp/generalCctp');
module.exports = {
    usuarios,
    infraAccesoMedio,
    infraAccesoMedioGradaRampa,
    infraAccesoEdificacionSenialetica,
    infraAccesoEdificacion,
    infraAccesoPredioTransporte,
    infraAccesoTipo,
    infraAguaUsoTipo,
    infraAmbiente,
    infraAmbienteCategoriaTipo,
    infraAmbienteCondicion,
    infraAmbienteDestinadoTipo,
    infraAmbienteEspecialidad,
    infraAmbienteMobiliario,
    infraAmbientePredioInstitucioneducativa,
    infraAmbienteTipo,
    infraAmuralladoTipo,
    infraAreaTipo,
    infraArtefactoBanioTipo,
    infraBateriaArtefactoBanio,
    infraBloque,
    infraCaracteristicaConstruccion,
    infraCaracteristicaEdificacion,
    infraCaracteristicasEspacio,
    infraCaracteristicaTerreno,
    infraCaracteristicaTipo,
    infraCondicion,
    infraConstruccion,
    infraDisponibilidadServicioTipo,
    infraDocumentacionTipo,
    infraEdificacionTipo,
    infraEntidadEjecutoraTipo,
    infraEquipamientoBrigadaTipo,
    infraEquipamientoCategoriaTipo,
    infraEquipamientoTipo,
    infraEspaciosTipo,
    infraEstadoTipo,
    infraEvacuacionTipo,
    infraFuenteEnergiaTipo,
    infraGestionConstruccionTipo,
    infraGradaRampaCuentaTipo,
    infraHechoDelictivo,
    infraHurtoDelictivo,
    infraInstalacionTipo,
    infraInstitucioneducativaEquipamientoBrigada,
    infraInstitucioneducativaPrevencion,
    infraMaterialTipo,
    infraMedioAccesoTipo,
    infraMedioEliminacionBasuraTipo,
    infraMedioEliminacionExcTipo,
    infraPredio,
    infraMedioSuministroAguaTipo,
    infraMedioTransporteCategoriaTipo,
    infraMedioTransporteTipo,
    infraMobiliarioPredioInstitucioneducativa,
    infraMobiliarioTipo,
    infraNoPedagogicoInternado,
    infraNoPedagogicoVivienda,
    infraPedagogico,
    infraPedagogicoRecreativo,
    infraPeriodicidadEliminacionBasuraTipo,
    infraPiso,
    infraPredioFoto,
    infraPredioInstitucioneducativa,
    infraPredioTipo,
    infraPreguntaAmbiente,
    infraPreguntaTipo,
    infraPrevencionEquipamiento,
    infraPropiedadTipo,
    infraProximoTipo,
    infraPurificadorAguaTipo,
    infraResponsableTipo,
    infraRiesgo,
    infraRiesgoEvento,
    infraRiesgoEventoTipo,
    infraRiesgoProximo,
    infraSenialeticaTipo,
    infraServicioAgua,
    infraServicioElectrico,
    infraServicioOtro,
    infraServicioOtroCategoriaTipo,
    infraServicioOtroCondicion,
    infraServicioOtroCuenta,
    infraServicioOtroTipo,
    infraServicioSaneamiento,
    infraServicioSaneamientoMedioEliminacionExc,
    infraTenenciaTipo,
    infraTiempoSuspendidoTipo,
    infraTopografiaTipo,
    infraUbicacionTipo,
    institucioneducativa,
    jurisdiccionGeografica,
    lugarTipo,
    medioTransporteTipo,
    gestionTipo,
    generoTipo,
    estadoCivilTipo,
    turnoTipo,
    mesTipo,
    infraReportes,
    paisTipo,
    departamentoTipo,
    generalCctp
};