'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_ambiente_especialidad', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_pedagogico_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_pedagogico',
         key: 'id'
        }
      },
      especialidad_tecnico_humanistico_tipo_id: {
        type: Sequelize.INTEGER
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_ambiente_especialidad');
  }
};