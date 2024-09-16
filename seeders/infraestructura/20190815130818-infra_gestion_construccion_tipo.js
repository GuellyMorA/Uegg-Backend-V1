'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_gestion_construccion_tipo', [{
                gestion_construccion: 'Año de construcción',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                gestion_construccion: 'Año de ultima refacción',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                gestion_construccion: 'Año de última ampliación',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_gestion_construccion_tipo', null, {});
    }
};