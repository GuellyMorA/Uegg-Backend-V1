'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_acceso_edificacion_senialetica', {
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
      infra_senialetica_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_senialetica_tipo',
         key: 'id'
        }
      },
      idioma_tipo_id: {
        type: Sequelize.INTEGER
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_acceso_edificacion_senialetica');
  }
};