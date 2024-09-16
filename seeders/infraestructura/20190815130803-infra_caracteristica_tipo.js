'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_caracteristica_tipo', [{
                id: 0,
                caracteristica: 'Ninguna',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 1,
                caracteristica: 'Completo',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 2,
                caracteristica: 'Incompleto',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 3,
                caracteristica: 'Completo con desgaste',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 4,
                caracteristica: 'Completo sin desgaste',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 5,
                caracteristica: 'Incompleto con desgaste',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 6,
                caracteristica: 'Incompleto sin desgaste',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 7,
                caracteristica: 'Con vidrios',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 8,
                caracteristica: 'Sin vidrio',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 9,
                caracteristica: 'Con seguro abre por dentro',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 10,
                caracteristica: 'Con seguro abre por fuera',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 11,
                caracteristica: 'Sin seguro abre por dentro',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 12,
                caracteristica: 'Sin seguro abre por fuera',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 13,
                caracteristica: 'Con desgaste',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            },
            {
                id: 14,
                caracteristica: 'Sin desgaste',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true,
            }
        ], {});

    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_caracteristica_tipo', null, {});
    }
};