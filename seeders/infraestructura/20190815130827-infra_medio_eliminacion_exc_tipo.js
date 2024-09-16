'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_medio_eliminacion_exc_tipo', [{
                medio_eliminacion_exc: 'Red de alcantarillado',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_eliminacion_exc: 'Cámara séptica',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_eliminacion_exc: 'Pozo de absorción',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_eliminacion_exc: 'A cielo abierto',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                medio_eliminacion_exc: 'Otro',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_medio_eliminacion_exc_tipo', null, {});
    }
};