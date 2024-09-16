const InfraCaracteristicaTerreno = require('../../models/infraestructura').infraCaracteristicaTerreno;
const InfraCaracteristicasEspacio = require('../../models/infraestructura').infraCaracteristicasEspacio;
const sequelize = InfraCaracteristicaTerreno.sequelize;
module.exports = {
    list(req, res) {
        return InfraCaracteristicaTerreno
            .findAll({})
            .then((infraCaracteristicaTerreno) => res.status(200).send(infraCaracteristicaTerreno))
            .catch((error) => { res.status(400).send(error); });
    },

    getById(req, res) {
        console.log(req.params.id); //.findOne({id:req.params.id})
        return InfraCaracteristicaTerreno
            .findByPk(req.params.id)
            .then((infraCaracteristicaTerreno) => {
                console.log(infraCaracteristicaTerreno);
                if (!infraCaracteristicaTerreno) {
                    return res.status(404).send({
                        message: 'infraCaracteristicaTerreno Not Found',
                    });
                }
                return res.status(200).send(infraCaracteristicaTerreno);
            })
            .catch((error) => res.status(400).send(error));
    },

    add(req, res) {
        //console.log(req.body);
        return InfraCaracteristicaTerreno
            .create({
                areaTotal: req.body.areatot,
                areaConstruida: req.body.areaconst,
                infraTopografiaTipoId: req.body.idtopografia,
                infraAmuralladoTipoId: req.body.idamurallado,
                infraPredioId: req.body.idpredio,

            })
            .then(async(infraCaracteristicaTerreno) => {
                if (req.body.idespacio) {
                    for (let item of req.body.idespacio) {
                        await InfraCaracteristicasEspacio.create({
                            infraCaracteristicaTerrenoId: infraCaracteristicaTerreno.id,
                            infraEspacioTipoId: item
                        });
                    }
                }
                res.status(200).send(infraCaracteristicaTerreno)
            })
            .catch((error) => res.status(400).send(error));
    },

    update(req, res) {
        return InfraCaracteristicaTerreno
            .findByPk(req.params.id)
            .then(infraCaracteristicaTerreno => {
                if (!infraCaracteristicaTerreno) {
                    return res.status(404).send({
                        message: 'infraCaracteristicaTerreno Not Found',
                    });
                }
                return infraCaracteristicaTerreno
                    .update({
                        areaTotal: req.body.areatot || infraCaracteristicaTerreno.areatot,
                        areaConstruida: req.body.areaconst || infraCaracteristicaTerreno.areaconst,
                        infraTopografiaTipoId: req.body.idtopografia || infraCaracteristicaTerreno.idtopografia,
                        infraAmuralladoTipoId: req.body.idamurallado || infraCaracteristicaTerreno.idamurallado,
                        infraPredioId: req.body.idpredio || infraCaracteristicaTerreno.idpredio,

                    })
                    .then(async(infraCaracteristicaTerreno) => {
                        if (req.body.idespacio) {
                            await InfraCaracteristicasEspacio.destroy({ where: { 'infraCaracteristicaTerrenoId': req.params.id } });
                            for (let item of req.body.idespacio) {

                                await InfraCaracteristicasEspacio.create({
                                    infraCaracteristicaTerrenoId: req.body.id,
                                    infraEspacioTipoId: item
                                });
                            }
                        } else {
                            console.log('no rxiste');
                            await InfraCaracteristicasEspacio.destroy({ where: { infraCaracteristicaTerrenoId: req.params.id } });
                        }
                        res.status(200).send(infraCaracteristicaTerreno)
                    })
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



    getTerreno(req, res) {
        var consulta = `
		select ict.id,ip.id as idpredio,ip.jurisdiccion_geografica_id as codedif, ict.area_total as areatot,ict.area_construida as areaconst,
      --iet.id as idespacio,iet.espacio,
      string_agg(iet.id::character varying, ',') as idespacio,
			string_agg(iet.espacio, ',') as espacio,
			itt.id as idtopografia,itt.topografia,
			iat.id as idamurallado,iat.amurallado
			from infra_predio ip 
			inner join infra_caracteristica_terreno ict on ict.infra_predio_id =ip.id
			left join infra_caracteristicas_espacio ice on ice.infra_caracteristica_terreno_id =ict.id 
			left join infra_espacios_tipo iet on iet.id=ice.infra_espacio_tipo_id
			inner join infra_topografia_tipo itt on itt.id=ict.topografia_tipo_id
			inner join infra_amurallado_tipo iat on iat.id = ict.amurallado_tipo_id
			where  ip.id =  ` + req.params.predioid + `group by ict.id,ip.id,ip.jurisdiccion_geografica_id,ict.area_total,ict.area_construida,itt.id,iat.id`;
        return sequelize.query(consulta, {
                type: sequelize.QueryTypes.SELECT
            }, {
                raw: true
            })
            .then((uEoperan) => res.status(200).send(uEoperan))
            .catch((error) => res.status(400).send(error));

    }
};