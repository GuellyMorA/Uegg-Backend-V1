const InfraHurtoDelictivo = require('../../models/infraestructura').infraHurtoDelictivo;
const sequelize = InfraHurtoDelictivo.sequelize;
module.exports = {
    list(req, res) {
        return InfraHurtoDelictivo
            .findAll({})
            .then((infraHurtoDelictivo) => res.status(200).send(infraHurtoDelictivo))
            .catch((error) => { res.status(400).send(error); });
    },
    add(req, res) {
        return InfraHurtoDelictivo
            .create({
                infraPredioId: req.body.idpredio,
                hurtoDelictivo: req.body.hurto_delictivo,
                gestionTipoId: req.body.idgestion,
                turnoTipoId: req.body.idturno,
                ambiente: req.body.ambiente,
                mobiliario: req.body.mobiliario,
                acciones: req.body.acciones,
            })
            .then((infraHurtoDelictivo) => res.status(201).send(infraHurtoDelictivo))
            .catch((error) => res.status(400).send(error));
    },
    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraHurtoDelictivo
            .findByPk(req.params.id)
            .then((infraHurtoDelictivo) => {
                console.log(infraHurtoDelictivo);
                if (!infraHurtoDelictivo) {
                    return res.status(404).send({
                        message: 'infraHurtoDelictivo Not Found',
                    });
                }
                return res.status(200).send(infraHurtoDelictivo);
            })
            .catch((error) => res.status(400).send(error));
    },
    delete(req, res) {
        return InfraHurtoDelictivo
            .findByPk(req.params.id)
            .then(infraHurtoDelictivo => {
                if (!infraHurtoDelictivo) {
                    return res.status(400).send({
                        message: 'infraHurtoDelictivo Not Found',
                    });
                }
                return infraHurtoDelictivo
                    .destroy()
                    .then(() => res.status(204).send())
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },
    getHurto(req, res) {
        var consulta = `select ihd.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as coddificio,ihd.hurto_delictivo,ihd.ambiente,ihd.mobiliario,ihd.acciones,gt.id as idgestion, gt.gestion, tt.id as idturno, tt.turno
    from infra_predio ip
    inner join infra_hurto_delictivo ihd on ihd.infra_predio_id = ip.id
    inner join gestion_tipo gt on gt.id = ihd.gestion_tipo_id
    inner join turno_tipo tt on tt.id = ihd.turno_tipo_id
    where ip.id =` + req.params.predioId;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((Hurto) => res.status(200).send(Hurto))
            .catch((error) => res.status(400).send(error));
    },
};