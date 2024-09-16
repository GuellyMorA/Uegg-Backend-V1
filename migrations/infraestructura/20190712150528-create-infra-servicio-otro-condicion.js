'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_servicio_otro_condicion', {
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
      infra_condicion_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_condicion',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_servicio_otro_condicion');
  }
};