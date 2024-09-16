'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_no_pedagogico_vivienda', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_ambiente_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_ambiente',
         key: 'id'
        }
      },
      habitante: {
        type: Sequelize.STRING
      },
      banio: {
        type: Sequelize.STRING
      },
      ducha: {
        type: Sequelize.STRING
      },
      cocina: {
        type: Sequelize.STRING
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_no_pedagogico_vivienda');
  }
};