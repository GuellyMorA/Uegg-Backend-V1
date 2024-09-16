'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_servicio_saneamiento_medio_eliminacion_exc', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_servicio_saneamiento_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_servicio_saneamiento',
         key: 'id'
        }
      },
      infra_medio_eliminacion_exc_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_medio_eliminacion_exc_tipo',
         key: 'id'
        }
      },
      otros: {
        type: Sequelize.STRING
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_servicio_saneamiento_medio_eliminacion_exc');
  }
};