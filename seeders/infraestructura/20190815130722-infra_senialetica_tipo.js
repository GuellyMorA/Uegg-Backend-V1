'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_senialetica_tipo', [{
                senialetica: 'Orientadoras',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                senialetica: 'Audibles',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                senialetica: 'Visuales',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                senialetica: 'Tactiles',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                senialetica: 'Direccionales',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                senialetica: 'De Ubicación',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                senialetica: 'Informativas',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_senialetica_tipo', null, {});
    }
};