'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_ambiente_predio_institucioneducativa', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_ambiente_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_ambiente',
         key: 'id'
        }
      },
      infra_predio_institucioneducativa: {
        type: Sequelize.INTEGER
      },
      fecha_registro: {
        type: Sequelize.DATE
      },
      fecha_modificacion: {
        type: Sequelize.DATE
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_ambiente_predio_institucioneducativa');
  }
};