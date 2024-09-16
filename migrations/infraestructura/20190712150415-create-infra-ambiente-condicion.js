'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_ambiente_condicion', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_condicion_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_condicion',
         key: 'id'
        }
      },
      infra_ambiente_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_ambiente',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_ambiente_condicion');
  }
};