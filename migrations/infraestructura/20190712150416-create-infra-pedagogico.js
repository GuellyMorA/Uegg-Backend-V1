'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_pedagogico', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_area_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_area_tipo',
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
    return queryInterface.dropTable('infra_pedagogico');
  }
};