const InfraBloque = require('../../models/infraestructura').infraBloque;
const InfraPiso = require('../../models/infraestructura').infraPiso;
const sequelize = InfraBloque.sequelize;
module.exports = {
    list(req, res) {
        return InfraBloque
            .findAll({})
            .then((infraBloque) => res.status(200).send(infraBloque))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraBloque
            .findByPk(req.params.id)
            .then((infraBloque) => {
                console.log(infraBloque);
                if (!infraBloque) {
                    return res.status(404).send({
                        message: 'infraBloque Not Found',
                    });
                }
                return res.status(200).send(infraBloque);
            })
            .catch((error) => res.status(400).send(error));
    },

    add(req, res) {
        console.log(req.body);
        return InfraBloque
            .create({
                infraPredioId: req.body.idpredio,
                bloque: req.body.nombloque,
                areaAprox: req.body.areaaprox
            })
            .then(async(infraBloque) => {
                // console.log("TCL: add -> infraBloque", infraBloque)

                for (let i = 0; i < req.body.cantpisos; i++) {

                    await InfraPiso.create({
                        infraBloqueId: infraBloque.id,
                        piso: i
                    });
                }
                res.status(200).send(infraBloque)
            })
            .catch((error) => res.status(400).send(error));
    },

    async delete(req, res) {
        try {
            await InfraPiso.destroy({
                where: {
                    infraBloqueId: req.params.id
                }
            });
            return InfraBloque
                .findByPk(req.params.id)
                .then(infraBloque => {
                    if (!infraBloque) {
                        return res.status(400).send({
                            message: 'infraBloque Not Found',
                        });
                    }
                    return infraBloque
                        .destroy()
                        .then(() => res.status(204).send())
                        .catch((error) => res.status(400).send(error));
                })
                .catch((error) => res.status(400).send(error));
        } catch (Exception) {
            res.status(200).send({
                mensaje: 'error'
            });
        }

    },

    getBloques(req, res) {
        var consulta = `
    select ib.id,ib.bloque, count(ipi.id) as pisos
    from infra_bloque ib
    inner join infra_predio ip on ip.id = ib.infra_predio_id
    inner join infra_piso ipi on ipi.infra_bloque_id = ib.id
    where ip.id =` + req.params.predioid + `
    group by ib.id,ib.bloque`;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((bloques) => res.status(200).send(bloques))
            .catch((error) => res.status(400).send(error));
    },

    async getBloquesLista(req, res) {
        try {
            let bloques = await InfraBloque.findAll({ where: { infraPredioId: req.params.predioId }, attributes: ['id', 'bloque'] });
            res.status(200).send({ 'bloques': bloques });
        } catch (exeption) {
            res.status(400).send(error);
        }
    },
    async getPisosLista(req, res) {
        try {
            let pisos = await InfraPiso.findAll({ where: { infraBloqueId: req.params.bloqueId }, attributes: ['id', 'piso'] });
            res.status(200).send({ 'pisos': pisos });
        } catch (exeption) {
            res.status(400).send(error);
        }
    }
};