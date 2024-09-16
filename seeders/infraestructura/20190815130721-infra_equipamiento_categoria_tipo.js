'use strict';

module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('infra_equipamiento_categoria_tipo', [{
                equipamiento_categoria: 'Equipos de Primeros Auxilios',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                equipamiento_categoria: 'Medios de Comunicación',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                equipamiento_categoria: 'Equipos de Seguridad',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                equipamiento_categoria: 'Simulacro',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                equipamiento_categoria: 'Instrumentos de Seguridad',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },

        ], {});
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('infra_equipamiento_categoria_tipo', null, {});
  }
};
