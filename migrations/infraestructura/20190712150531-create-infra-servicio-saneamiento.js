'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_servicio_saneamiento', {
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
      infra_medio_eliminacion_basura_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_medio_eliminacion_basura_tipo',
         key: 'id'
        }
      },
      infra_periodicidad_eliminacion_basura_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_periodicidad_eliminacion_basura_tipo',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_servicio_saneamiento');
  }
};