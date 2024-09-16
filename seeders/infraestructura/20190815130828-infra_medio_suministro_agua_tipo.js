'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_medio_suministro_agua_tipo', [{
                medio_suministro_agua: 'Red Pública dentro la edificación',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_suministro_agua: 'Red Pública fuera de la edificación',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_suministro_agua: 'Pozo bomba',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_suministro_agua: 'Pozo sin bomba',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_suministro_agua: 'Cisterna',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_suministro_agua: 'Rio/acequia/vertiente no protegida',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_suministro_agua: 'Recoleccion de agua de lluvia',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_medio_suministro_agua_tipo', null, {});
    }
};