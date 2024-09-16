'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_proximo_tipo', [{
                proximo: 'Barrancos',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Bosques',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Rios/lagos',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Quebradas',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Basureros',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Botadero Municipal',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Centros Mineros',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Fábrica de material contaminante',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Paso de frontera',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Bares o centros nocturnos',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Estaciones eléctricas',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Estaciones gasolineras',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Zona de riesgos delictivos',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            },
            {
                proximo: 'Cerro con pendiente pronunciada',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date()
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_proximo_tipo', null, {});
    }
};