'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_piso', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      piso: {
        type: Sequelize.INTEGER
      },
      cantidad_ambiente_pedagogico: {
        type: Sequelize.STRING
      },
      cantidad_ambiente_no_pedagogico: {
        type: Sequelize.STRING
      },
      cantidad_banios: {
        type: Sequelize.STRING
      },
      total: {
        type: Sequelize.STRING
      },
      infra_bloque_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_bloque',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_piso');
  }
};