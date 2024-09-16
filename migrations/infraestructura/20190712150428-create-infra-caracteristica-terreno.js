'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_caracteristica_terreno', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      area_total: {
        type: Sequelize.INTEGER
      },
      area_construida: {
        type: Sequelize.INTEGER
      },
      infra_topografia_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_topografia_tipo',
         key: 'id'
        }
      },
      infra_amurallado_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_amurallado_tipo',
         key: 'id'
        }
      },
      infra_predio_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_predio',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_caracteristica_terreno');
  }
};
