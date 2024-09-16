'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_acceso_predio_transporte', {
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
      medio_transporte_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_medio_transporte_tipo',
         key: 'id'
        }
      },
      dias: {
        type: Sequelize.INTEGER
      },
      horas: {
        type: Sequelize.INTEGER
      },
      minutos: {
        type: Sequelize.INTEGER
      },
      costo: {
        type: Sequelize.INTEGER
      },
      infra_acceso_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_acceso_tipo',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_acceso_predio_transporte');
  }
};