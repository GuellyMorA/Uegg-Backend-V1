'use strict';

module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('infra_equipamiento_brigada_tipo', [{
                brigada: 'Seguridad',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                brigada: 'Primeros Auxilos',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                brigada: 'Evacuación',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                brigada: 'Protección',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                brigada: 'Otros',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            }

        ], {});
  },

  down: (queryInterface, Sequelize) => {
   return queryInterface.bulkDelete('infra_equipamiento_brigada_tipo', null, {});
  }
};
