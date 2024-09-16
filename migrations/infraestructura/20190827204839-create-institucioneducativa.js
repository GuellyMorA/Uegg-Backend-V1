'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('institucioneducativa', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      codigo_sie: {
        type: Sequelize.INTEGER
      },
      institucioneducativa: {
        type: Sequelize.STRING
      },
      jurisdiccion_id: {
        type: Sequelize.INTEGER
      },
      codigo_departamento: {
        type: Sequelize.STRING
      },
      departamento: {
        type: Sequelize.STRING
      },
      codigo_provincia: {
        type: Sequelize.STRING
      },
      provincia: {
        type: Sequelize.STRING
      },
      codigo_municipio: {
        type: Sequelize.STRING
      },
      municipio: {
        type: Sequelize.STRING
      },
      codigo_canton: {
        type: Sequelize.STRING
      },
      canton: {
        type: Sequelize.STRING
      },
      codigo_localidad: {
        type: Sequelize.STRING
      },
      localidad: {
        type: Sequelize.STRING
      },
      codigo_distrito: {
        type: Sequelize.INTEGER
      },
      distrito: {
        type: Sequelize.STRING
      },
      zona: {
        type: Sequelize.STRING
      },
      direccion: {
        type: Sequelize.STRING
      },
      bth: {
        type: Sequelize.STRING
      },
      subsistema_id: {
        type: Sequelize.INTEGER
      },
      subsistema: {
        type: Sequelize.STRING
      },
      telefono_director: {
        type: Sequelize.STRING
      },
      nombre_director: {
        type: Sequelize.STRING
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('institucioneducativa');
  }
};