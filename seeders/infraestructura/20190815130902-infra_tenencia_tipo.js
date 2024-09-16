'use strict';

module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('infra_tenencia_tipo', [{
                tenencia: 'Ninguna',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                tenencia: 'Propio',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                tenencia: 'Comodato',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                tenencia: 'Anticretico',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                tenencia: 'Usufructo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                tenencia: 'Donación',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                tenencia: 'Compartido',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },

        ], {});
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('infra_tenencia_tipo', null, {});
  }
};
