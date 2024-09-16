'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_evacuacion_tipo', [{
                evacuacion: 'Al ingreso del edificio educativo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                evacuacion: 'En todo el edificio educativo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                evacuacion: 'En ambientes definidos',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_evacuacion_tipo', null, {});
    }
};