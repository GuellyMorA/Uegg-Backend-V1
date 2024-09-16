'use strict';

module.exports = {
  up: (queryInterface, Sequelize) => {
     return queryInterface.bulkInsert('infra_estado_tipo', [{
                estado: 'Nuevo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                estado: 'Con desgaste',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                estado: 'En desuso',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                estado: 'Bueno',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                estado: 'Regular',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {
                estado: 'Malo',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            }
        ], {});
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('infra_estado_tipo', null, {});
  }
};
