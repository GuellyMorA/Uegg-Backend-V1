'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_condicion', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_material_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_material_tipo',
         key: 'id'
        }
      },
      infra_caracteristica_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_caracteristica_tipo',
         key: 'id'
        }
      },
      infra_pregunta_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_pregunta_tipo',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_condicion');
  }
};