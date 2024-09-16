'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_tiempo_suspendido_tipo', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      tiempo_suspendido: {
        type: Sequelize.STRING
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
    return queryInterface.dropTable('infra_tiempo_suspendido_tipo');
  }
};