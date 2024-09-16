'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_riesgo_evento_tipo', [{
                evento: 'Inundación',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                evento: 'Incendios',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                evento: 'Sequia',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                evento: 'Helada',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                evento: 'Riada',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                evento: 'Granizada',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                evento: 'Vientos huracanados',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                evento: 'Sismo / terremoto',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                evento: 'Deslizamientos',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                evento: 'Hundimientos o sifonamientos',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                evento: 'Otro',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_riesgo_evento_tipo', null, {});
    }
};