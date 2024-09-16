const InfraPredioFoto = require("../../models/infraestructura").infraPredioFoto;
const sequelize = InfraPredioFoto.sequelize;

module.exports = {
    list(req, res) {
        return InfraPredioFoto.findAll({})
            .then(infraPredioFoto => res.status(200).send(infraPredioFoto))
            .catch(error => {
                res.status(400).send(error);
            });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraPredioFoto.findByPk(req.params.id)
            .then(infraPredioFoto => {
                console.log(infraPredioFoto);
                if (!infraPredioFoto) {
                    return res.status(404).send({
                        message: "usuario Not Found"
                    });
                }
                return res.status(200).send(infraPredioFoto);
            })
            .catch(error => res.status(400).send(error));
    },

    getByPredio(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraPredioFoto.findAll({
                where: {
                    infraPredioId: req.params.infraPredioId
                },
            })
            .then(infraPredioFoto => res.status(200).send(infraPredioFoto))
            .catch(error => res.status(400).send(error));
    },
    getCantidadByPredio(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraPredioFoto.findAll({
                attributes: [
                    [sequelize.fn('COUNT', sequelize.col('*')), 'cantidad']
                ],
                where: {
                    infraPredioId: req.params.infraPredioId
                },
            })
            .then(infraPredioFoto => res.status(200).send(infraPredioFoto))
            .catch(error => res.status(400).send(error));
    },
    add(req, res) {
        return InfraPredioFoto
            .create({
                infraPredioId: req.body.infraPredioId,
                imagen: req.file.filename,
                descripcion: req.body.descripcion
            })
            .then((infraPredioFoto) => res.status(201).send(infraPredioFoto))
            .catch((error) => res.status(400).send(error));
    },
    update(req, res) {
        console.log(req.params.id);
        return InfraPredioFoto
            .findByPk(req.params.id)
            .then(infraPredioFoto => {
                if (!infraPredioFoto) {
                    return res.status(404).send({
                        message: 'infraPredioFoto Not Found',
                    });
                }
                return infraPredioFoto
                    .update({
                        imagen: req.body.imagen || infraPredio.imagen,
                        descripcion: req.body.descripcion || infraPredio.descripcion,
                    })
                    .then(() => res.status(200).send(infraPredioFoto))
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },
    delete(req, res) {
        return InfraPredioFoto
            .findByPk(req.params.id)
            .then(infraPredioFoto => {
                if (!infraPredioFoto) {
                    return res.status(400).send({
                        message: 'infraPredioFoto Not Found',
                    });
                }
                return infraPredioFoto
                    .destroy()
                    .then(() => res.status(204).send())
                    .catch((error) => res.status(400).send(error));
            })
            .catch((error) => res.status(400).send(error));
    },

};