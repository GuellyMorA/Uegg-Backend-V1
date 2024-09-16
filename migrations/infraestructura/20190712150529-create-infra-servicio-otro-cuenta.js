'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_servicio_otro_cuenta', {
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
      infra_servicio_otro_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_servicio_otro_tipo',
         key: 'id'
        }
      },
      infra_predio_institucioneducativa_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_predio_institucioneducativa',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_servicio_otro_cuenta');
  }
};