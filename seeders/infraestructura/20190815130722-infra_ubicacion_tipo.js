'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_ubicacion_tipo', [{
                ubicacion: 'Todo el edificio',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                ubicacion: 'Al ingreso del edificio',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                ubicacion: 'Algunos Bloques del edificio',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                ubicacion: 'Todos los bloques del edificio',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                ubicacion: 'Ambientes pedagogicos del edificio',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                ubicacion: 'Todos los ambientes del edificio',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_ubicacion_tipo', null, {});
    }
};