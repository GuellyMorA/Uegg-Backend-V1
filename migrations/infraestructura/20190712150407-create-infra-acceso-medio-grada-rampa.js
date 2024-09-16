'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_acceso_medio_grada_rampa', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_acceso_medio_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_acceso_medio',
         key: 'id'
        }
      },
      infra_grada_rampa_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_grada_rampa_cuenta_tipo',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_acceso_medio_grada_rampa');
  }
};