'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_bloque', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_predio_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_predio',
         key: 'id'
        }
      },
      bloque: {
        type: Sequelize.STRING
      },
      area_aprox: {
        type: Sequelize.STRING
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_bloque');
  }
};