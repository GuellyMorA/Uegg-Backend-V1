'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_instalacion_tipo', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      instalacion: {
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
    return queryInterface.dropTable('infra_instalacion_tipo');
  }
};