'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_medio_eliminacion_basura_tipo', [{
                medio_eliminacion_basura: 'Recolección pública',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_eliminacion_basura: 'Incineración',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_eliminacion_basura: 'Enterramiento',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_eliminacion_basura: 'Cielo abierto y similares',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_eliminacion_basura: 'Reciclaje',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_medio_eliminacion_basura_tipo', null, {});
    }
};