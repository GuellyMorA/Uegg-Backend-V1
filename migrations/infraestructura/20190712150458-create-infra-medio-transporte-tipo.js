'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_medio_transporte_tipo', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      descripcion_medio_transporte: {
        type: Sequelize.STRING
      },
      es_vigente: {
        type: Sequelize.BOOLEAN
      },
      fecha_registro: {
        type: Sequelize.DATE
      },
      fecha_modificacion: {
        type: Sequelize.DATE
      },
      infra_medio_transporte_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_medio_transporte_categoria_tipo',
         key: 'id'
        }

      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_medio_transporte_tipo');
  }
};