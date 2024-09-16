'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_riesgo_proximo', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_riesgo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_riesgo',
         key: 'id'
        }
      },
      infra_proximo_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_proximo_tipo',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_riesgo_proximo');
  }
};