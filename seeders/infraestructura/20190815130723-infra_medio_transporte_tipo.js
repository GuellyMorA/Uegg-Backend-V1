'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_medio_transporte_tipo', [{
                descripcion_medio_transporte: 'Caminata',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:1
            },
            {
                descripcion_medio_transporte: 'Automovil',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:1
            },
            {
                descripcion_medio_transporte: 'Barcaza',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:2
            },
            {
                descripcion_medio_transporte: 'Avioneta',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:3
            },
            {
                descripcion_medio_transporte: 'Avión',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:3
            },
            {
                descripcion_medio_transporte: 'Transporte Publico',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:1
            },
            {
                descripcion_medio_transporte: 'Motocicleta',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:1
            },
            {
                descripcion_medio_transporte: 'Caballo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:1
            },
            {
                descripcion_medio_transporte: 'Carreta ',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:1
            },
            {
                descripcion_medio_transporte: 'Canoa',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:2
            },
            {
                descripcion_medio_transporte: 'Bote a remo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:2
            },
            {
                descripcion_medio_transporte: 'Peque Peque',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:2
            },
            {
                descripcion_medio_transporte: 'Ponton',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:2
            },
            {
                descripcion_medio_transporte: 'Bicicleta',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_medio_transporte_tipo_id:1
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_medio_transporte_tipo', null, {});
    }
};