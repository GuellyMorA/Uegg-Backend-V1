const InfraEquipamientoTipo = require('../../models/infraestructura').infraEquipamientoTipo;

module.exports = {
    list(req, res) {
        return InfraEquipamientoTipo
            .findAll({})
            .then((infraEquipamientoTipo) => res.status(200).send(infraEquipamientoTipo))
            .catch((error) => {
                res.status(400).send(error);
            });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraEquipamientoTipo
            .findByPk(req.params.id)
            .then((infraEquipamientoTipo) => {
                console.log(infraEquipamientoTipo);
                if (!infraEquipamientoTipo) {
                    return res.status(404).send({
                        message: 'infraEquipamientoTipo Not Found',
                    });
                }
                return res.status(200).send(infraEquipamientoTipo);
            })
            .catch((error) => res.status(400).send(error));
    },
    async getEquipamientoTipos(req, res) {
        //console.log(req.params.body);
        try {
            let auxilio = await InfraEquipamientoTipo.findAll({
                where: {
                    infraEquipamientoCategoriaTipoId: 1
                },
                attributes: ['id', 'equipamiento']
            });
            let comunicacion = await InfraEquipamientoTipo.findAll({
                where: {
                    infraEquipamientoCategoriaTipoId: 2
                },
                attributes: ['id', 'equipamiento']
            });
            let seguridad = await InfraEquipamientoTipo.findAll({
                where: {
                    infraEquipamientoCategoriaTipoId: 3
                },
                attributes: ['id', 'equipamiento']
            });
            let simulacro = await InfraEquipamientoTipo.findAll({
                where: {
                    infraEquipamientoCategoriaTipoId: 4
                },
                attributes: ['id', 'equipamiento']
            });
            let instrumento = await InfraEquipamientoTipo.findAll({
                where: {
                    infraEquipamientoCategoriaTipoId: 5
                },
                attributes: ['id', 'equipamiento']
            });
            console.log(auxilio, comunicacion, seguridad, simulacro, instrumento);

            res.status(200).send({
                auxilio: auxilio,
                comunicacion: comunicacion,
                seguridad: seguridad,
                simulacro: simulacro,
                instrumento: instrumento
            });
        } catch (exeption) {

        }
    },

    async EquipamientoTipos(req, res) {
        try {
            let equipamiento = await InfraEquipamientoTipo.findAll({
                where: { infraEquipamientoCategoriaTipoId: req.params.categoriaId },
                attributes: ['id', 'equipamiento']
            });
            let auxilio = InfraEquipamientoTipo.findAll({
                where: {
                    infraEquipamientoCategoriaTipoId: 1
                },
                attributes: ['id', 'equipamiento']
            });
            console.log(equipamiento);
            res.status(200).send({ equipamiento: equipamiento, auxilio: auxilio });
        } catch (exeption) {
            console.log(exeption);
        }
    },


};