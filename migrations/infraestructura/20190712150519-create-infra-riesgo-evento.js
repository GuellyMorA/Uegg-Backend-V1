'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_riesgo_evento', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_riesgo_evento_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_riesgo_evento_tipo',
         key: 'id'
        }
      },
      infra_riesgo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_riesgo',
         key: 'id'
        }
      },
      mes_inicial: {
        type: Sequelize.STRING
      },
      mes_final: {
        type: Sequelize.STRING
      },
      evento_otro: {
        type: Sequelize.STRING
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_riesgo_evento');
  }
};