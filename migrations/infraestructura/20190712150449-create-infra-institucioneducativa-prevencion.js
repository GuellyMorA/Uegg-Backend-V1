'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_institucioneducativa_prevencion', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_predio_institucioneducativa_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_predio_institucioneducativa',
         key: 'id'
        }
      },
      disponible_formulario: {
        type: Sequelize.BOOLEAN
      },
      personal_capacitado: {
        type: Sequelize.BOOLEAN
      },
      formulario_edan_e: {
        type: Sequelize.BOOLEAN
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_institucioneducativa_prevencion');
  }
};