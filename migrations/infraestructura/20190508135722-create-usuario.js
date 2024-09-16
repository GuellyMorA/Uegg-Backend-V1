'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('usuario', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      ci: {
        type: Sequelize.STRING
      },
      nombre: {
        type: Sequelize.STRING
      },
      paterno: {
        type: Sequelize.STRING
      },
      materno: {
        type: Sequelize.STRING
      },
      codigo_sie: {
        type: Sequelize.INTEGER
      },
      jurisdiccion_id: {
        type: Sequelize.INTEGER
      },
      cargo_id: {
        type: Sequelize.INTEGER
      },
      cargo_tipo: {
        type: Sequelize.STRING
      },
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('usuario');
  }
};