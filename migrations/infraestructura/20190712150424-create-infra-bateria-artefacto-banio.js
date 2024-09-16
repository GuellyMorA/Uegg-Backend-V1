'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_bateria_artefacto_banio', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_artefacto_banio_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_artefacto_banio_tipo',
         key: 'id'
        }
      },
      infra_ambiente_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_ambiente',
         key: 'id'
        }
      },
      cantidad_funciona: {
        type: Sequelize.INTEGER
      },
      cantidad_no_funciona: {
        type: Sequelize.INTEGER
      },
      servicio_saneamiento: {
        type: Sequelize.BOOLEAN
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_bateria_artefacto_banio');
  }
};