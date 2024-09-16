'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_pregunta_ambiente', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_pregunta_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_pregunta_tipo',
         key: 'id'
        }
      },
      infra_ambiente_categoria_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_ambiente_categoria_tipo',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_pregunta_ambiente');
  }
};