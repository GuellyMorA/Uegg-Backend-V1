'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_ambiente_destinado_tipo', [{
            destinado: 'Recreativo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                destinado: 'Cultural',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                destinado: 'Deportivo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_ambiente_destinado_tipo', null, {});
    }
};