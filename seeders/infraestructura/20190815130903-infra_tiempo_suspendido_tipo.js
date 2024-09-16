'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_tiempo_suspendido_tipo', [{
                id: '0',
                tiempo_suspendido: 'Ninguno',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                id: '1',
                tiempo_suspendido: '1 a 3 dias',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                id: '2',
                tiempo_suspendido: '1 Semana',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                id: '3',
                tiempo_suspendido: '2 Semanas',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                id: '4',
                tiempo_suspendido: 'Mas de 2 semanas',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_tiempo_suspendido_tipo', null, {});
    }
};