'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_equipamiento_tipo', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      equipamiento: {
        type: Sequelize.STRING
      },
      infra_equipamiento_categoria_tipo: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_equipamiento_categoria_tipo',
         key: 'id'
        }
      },
      es_vigente: {
        type: Sequelize.BOOLEAN
      },
      fecha_registro: {
        type: Sequelize.DATE
      },
      fecha_modificacion: {
        type: Sequelize.DATE
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_equipamiento_tipo');
  }
};