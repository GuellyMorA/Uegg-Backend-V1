'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_periodicidad_eliminacion_basura_tipo', [{
                periodicidad_eliminacion_basura: 'Diaria',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                periodicidad_eliminacion_basura: 'Una vez por semana',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                periodicidad_eliminacion_basura: 'Dos o tres veces por semana',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                periodicidad_eliminacion_basura: 'Solo cuando es necesario',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_periodicidad_eliminacion_basura_tipo', null, {});
    }
};