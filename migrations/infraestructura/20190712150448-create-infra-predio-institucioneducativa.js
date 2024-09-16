'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_predio_institucioneducativa', {
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
      infra_tenencia_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_tenencia_tipo',
         key: 'id'
        }
      },
      persona_id: {
        type: Sequelize.INTEGER
      },
      bth_especialidad: {
        type: Sequelize.BOOLEAN
      },
      obs: {
        type: Sequelize.STRING
      },
      institucioneducativa_id: {
        type: Sequelize.INTEGER
      },
      representante: {
        type: Sequelize.STRING
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_predio_institucioneducativa');
  }
};
