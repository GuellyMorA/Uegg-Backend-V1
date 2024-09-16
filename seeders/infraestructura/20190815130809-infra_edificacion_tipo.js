'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_edificacion_tipo', [{
                edificacion: 'Unidad Educativa Regular',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                edificacion: 'Centro de Educación Alternativa',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                edificacion: 'Centro de Educacion Especial',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                edificacion: 'Institutos tecnicos de Educacion Superior',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                edificacion: 'Escuela Superios de Formacion de Maestros',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },

            {
                edificacion: 'Universidad',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                edificacion: 'No fue construido para ser Edificio Educativo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_edificacion_tipo', null, {});
    }
};