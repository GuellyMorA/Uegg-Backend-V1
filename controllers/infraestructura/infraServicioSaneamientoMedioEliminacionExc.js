const InfraServicioSaneamientoMedioEliminacionExc = require('../../models/infraestructura').infraServicioSaneamientoMedioEliminacionExc;
const sequelize = InfraServicioSaneamientoMedioEliminacionExc.sequelize;

module.exports = {
    list(req, res) {
        return InfraServicioSaneamientoMedioEliminacionExc
            .findAll({})
            .then((infraServicioSaneamientoMedioEliminacionExc) => res.status(200).send(infraServicioSaneamientoMedioEliminacionExc))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraServicioSaneamientoMedioEliminacionExc
            .findByPk(req.params.id)
            .then((infraServicioSaneamientoMedioEliminacionExc) => {
                console.log(infraServicioSaneamientoMedioEliminacionExc);
                if (!infraServicioSaneamientoMedioEliminacionExc) {
                    return res.status(404).send({
                        message: 'usuario Not Found',
                    });
                }
                return res.status(200).send(infraServicioSaneamientoMedioEliminacionExc);
            })
            .catch((error) => res.status(400).send(error));
    },
    listOtro(req, res) {
        return InfraServicioSaneamientoMedioEliminacionExc
            .findAll({
                where: {
                    infraServicioSaneamientoId: req.params.idsaneamiento,
                    infraMedioEliminacionExcTipoId: req.params.idtipo,
                }
            })
            .then((turnoTipo) => res.status(200).send(turnoTipo))
            .catch((error) => { res.status(400).send(error); });
    },
    add(req, res) {
        return InfraServicioSaneamientoMedioEliminacionExc
            .create({
                infraServicioSaneamientoId: req.body.idsaneamiento,
                infraMedioEliminacionExcTipoId: req.body.idmedioeli,
                otros: req.body.otros,
            })
            .then((infraServicioSaneamientoMedioEliminacionExc) => res.status(201).send(infraServicioSaneamientoMedioEliminacionExc))
            .catch((error) => res.status(400).send(error));
    },
    deleteAll(req, res) {
        var consulta = `delete from infra_servicio_saneamiento_medio_eliminacion_exc where infra_servicio_saneamiento_medio_eliminacion_exc.infra_servicio_saneamiento_id = ${req.params.idsaneamiento}`;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((infraServicioSaneamientoMedioEliminacionExc) => res.status(200).send({
                message: 'borrado con exito !!'
            }))
            .catch((error) => res.status(400).send(error));
    },

};