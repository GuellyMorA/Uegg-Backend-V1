'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_riesgo', {
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
      clase_suspendida: {
        type: Sequelize.BOOLEAN
      },
      infra_tiempo_suspendido_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_tiempo_suspendido_tipo',
         key: 'id'
        }
      },
      utilizado_albergue: {
        type: Sequelize.BOOLEAN
      },
      cantidad_timbre_panico: {
        type: Sequelize.INTEGER
      },
      cantidad_extintores: {
        type: Sequelize.INTEGER
      },
      cantidad_salidas_emergencias: {
        type: Sequelize.INTEGER
      },
      infra_evacuacion_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_evacuacion_tipo',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_riesgo');
  }
};