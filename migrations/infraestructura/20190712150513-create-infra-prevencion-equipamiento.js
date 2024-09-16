'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_prevencion_equipamiento', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_equipamiento_tipo: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_equipamiento_tipo',
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
      funciona: {
        type: Sequelize.INTEGER
      },
      no_funciona: {
        type: Sequelize.INTEGER
      },
      anio_colaboracion: {
        type: Sequelize.INTEGER
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_prevencion_equipamiento');
  }
};