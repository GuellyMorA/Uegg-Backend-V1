'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_ambiente_mobiliario', {
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
      infra_mobiliario_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_mobiliario_tipo',
         key: 'id'
        }
      },
      cantidad: {
        type: Sequelize.INTEGER
      },
      infra_estado_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_estado_tipo',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_ambiente_mobiliario');
  }
};