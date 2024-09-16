'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_medio_acceso_tipo', [{
                medio_acceso: 'Grada',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                medio_acceso: 'Rampa',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                medio_acceso: 'Señaletica',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_medio_acceso_tipo', null, {});
    }
};