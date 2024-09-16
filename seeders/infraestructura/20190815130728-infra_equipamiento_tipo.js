'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_equipamiento_tipo', [{
                equipamiento: 'Ferula',
                infra_equipamiento_categoria_tipo:1,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Chaleco',
                infra_equipamiento_categoria_tipo:1,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Camilla',
                infra_equipamiento_categoria_tipo:1,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Botiquin primeros Auxilios',
                infra_equipamiento_categoria_tipo:1,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Radio',
                infra_equipamiento_categoria_tipo:2,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Celular',
                infra_equipamiento_categoria_tipo:2,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Telefono',
                infra_equipamiento_categoria_tipo:2,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Internet',
                infra_equipamiento_categoria_tipo:2,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Megafono',
                infra_equipamiento_categoria_tipo:3,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Camara de Seguridad',
                infra_equipamiento_categoria_tipo:3,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Avisado',
                infra_equipamiento_categoria_tipo:4,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'No avisado',
                infra_equipamiento_categoria_tipo:4,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Con pre aviso',
                infra_equipamiento_categoria_tipo:4,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Sin pre aviso',
                infra_equipamiento_categoria_tipo:4,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Gabinete',
                infra_equipamiento_categoria_tipo:4,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Operativo',
                infra_equipamiento_categoria_tipo:4,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Parcial',
                infra_equipamiento_categoria_tipo:4,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Completo',
                infra_equipamiento_categoria_tipo:4,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Plan de Seguridad Escolar',
                infra_equipamiento_categoria_tipo:5,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                equipamiento: 'Mapa de Riesgos',
                infra_equipamiento_categoria_tipo:5,
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_equipamiento_tipo', null, {});
    }
};