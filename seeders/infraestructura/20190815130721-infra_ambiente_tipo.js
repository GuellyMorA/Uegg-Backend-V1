cd 'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_ambiente_tipo', [{
                ambiente: 'Aula',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 1
            },
            {
                ambiente: 'Biblioteca',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 1
            },
            {
                ambiente: 'Laboratorio',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 1
            },
            {
                ambiente: 'Sala de Computacion',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 1
            },
            {
                ambiente: 'Sala audiovisual',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 1
            },
            {
                ambiente: 'Taller',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 1
            },
            {
                ambiente: 'Sala de Psicomotricidad',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 1
            },
            {
                ambiente: 'Sala de atencion temprana',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 1
            },
            {
                ambiente: 'Sala de actividades de la vida diaria',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 1
            },
            {
                ambiente: 'Sala de baja vision',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 1
            },
            {
                ambiente: 'Sala de braile',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 1
            },
            {
                ambiente: 'Patio',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 2
            },
            {
                ambiente: 'Parque',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 2
            },
            {
                ambiente: 'Cancha',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 2
            },
            {
                ambiente: 'Gimnasio',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 2
            },
            {
                ambiente: 'Coliseo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 2
            },
            {
                ambiente: 'Piscina',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 2
            },
            {
                ambiente: 'Teatro / Salón',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 2
            },
            {
                ambiente: 'Dirección',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 3
            },
            {
                ambiente: 'Secretaria',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 3
            },
            {
                ambiente: 'Sala de reuniones',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 3
            },
            {
                ambiente: 'Sala de Profesores',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 3
            },
            {
                ambiente: 'Femenino',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 5
            },
            {
                ambiente: 'Masculino',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 5
            },
            {
                ambiente: 'Cafeteria ',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 6
            },
            {
                ambiente: 'Cocina',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 6
            },
            {
                ambiente: 'Comedor',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 6
            },
            {
                ambiente: 'Viviendas',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 4
            },
            {
                ambiente: 'Para personal mujeres',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 7
            },
            {
                ambiente: 'Para niñas de inicial',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 8
            },
            {
                ambiente: 'Para estudiantes varones',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 7
            },
            {
                ambiente: 'Para estudiantes mujeres',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 7
            },
            {
                ambiente: 'Para estudiantes discapacitados varones',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 7
            },
            {
                ambiente: 'Para estudiantes descapacitadas mujeres',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 7
            },
            {
                ambiente: 'Mixto para estudiantes',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 7
            },
            {
                ambiente: 'Mixto para estudiantes cons discapacidad',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 7
            },
            {
                ambiente: 'Para niños de inicial',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 7
            },
            {
                ambiente: 'Para niñas de inicial',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 7
            },
            {
                ambiente: 'Para personal varones',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 7
            },
            {
                ambiente: 'Para estudiantes varones',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 8
            },
            {
                ambiente: 'Para estudiantes mujeres',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 8
            },
            {
                ambiente: 'Para estudiantes discapacitados varones',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 8
            },
            {
                ambiente: 'Para estudiantes discapacitados mujeres ',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 8
            },
            {
                ambiente: 'Mixto para estudiantes',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 8
            },
            {
                ambiente: 'Mixto para estudiantes discapacitados',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 8
            },
            {
                ambiente: 'Para niños de inicial',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_ambiente_categoria_tipo_id: 8
            }

        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_ambiente_tipo', null, {});
    }
};