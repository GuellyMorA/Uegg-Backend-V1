'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_caracteristicas_espacio', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_caracteristica_terreno_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_caracteristica_terreno',
         key: 'id'
        }
      },
      infra_espacio_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_espacios_tipo',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_caracteristicas_espacio');
  }
};