'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_ambiente_categoria_tipo', [{
                ambiente_categoria: 'Ambiente Pedagogico',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                ambiente_categoria: 'Ambiente Pedagogico Recreativo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                ambiente_categoria: 'Ambiente no Pedagogico Administrativo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                ambiente_categoria: 'Ambiente no Pedagogico Vivienda',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                ambiente_categoria: 'Ambiente no Pedagogico Internado',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                ambiente_categoria: 'Ambiente no Pedagogico Alimentación',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                ambiente_categoria: 'Ambiente Bateria de baños',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                ambiente_categoria: 'Ambiente Vestuarios',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                ambiente_categoria: 'Servicios',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_ambiente_categoria_tipo', null, {});
    }
};