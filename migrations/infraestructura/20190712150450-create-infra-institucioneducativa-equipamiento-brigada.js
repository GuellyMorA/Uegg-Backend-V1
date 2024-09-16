'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_institucioneducativa_equipamiento_brigada', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_equipamiento_brigada_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_equipamiento_brigada_tipo',
         key: 'id'
        }
      },
      infra_institucioneducativa_prevencion_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_institucioneducativa_prevencion',
         key: 'id'
        }
      },
      equipamiento_brigada_otro: {
        type: Sequelize.STRING
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_institucioneducativa_equipamiento_brigada');
  }
};