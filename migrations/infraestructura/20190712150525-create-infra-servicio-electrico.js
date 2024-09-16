'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_servicio_electrico', {
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
      infra_fuente_energia_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_fuente_energia_tipo',
         key: 'id'
        }
      },
      infra_instalacion_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_instalacion_tipo',
         key: 'id'
        }
      },
      infra_disponibilidad_servicio_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_disponibilidad_servicio_tipo',
         key: 'id'
        }
      },
      cantidad_ambiente_pedagogico: {
        type: Sequelize.INTEGER
      },
      cantidad_ambiente_no_pedagogico: {
        type: Sequelize.INTEGER
      },
      cantidad_banos: {
        type: Sequelize.INTEGER
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_servicio_electrico');
  }
};