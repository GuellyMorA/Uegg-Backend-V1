'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_ambiente', {
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
      cantidad: {
        type: Sequelize.INTEGER
      },
      capacidad: {
        type: Sequelize.INTEGER
      },
      area: {
        type: Sequelize.INTEGER
      },
      largo: {
        type: Sequelize.INTEGER
      },
      ancho: {
        type: Sequelize.INTEGER
      },
      es_utilizado: {
        type: Sequelize.BOOLEAN
      },
      es_universal: {
        type: Sequelize.BOOLEAN
      },
      infra_ambiente_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_ambiente_tipo',
         key: 'id'
        }
      },
      es_servicio: {
        type: Sequelize.BOOLEAN
      },
      infra_estado_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_estado_tipo',
         key: 'id'
        }
      },
      servicio_electrico: {
        type: Sequelize.BOOLEAN
      },
      servicio_agua: {
        type: Sequelize.BOOLEAN
      },
      infra_bloque_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_bloque',
         key: 'id'
        }
      },
      infra_piso_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_piso',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_ambiente');
  }
};