'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_servicio_agua', {
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
      infra_medio_suministro_agua_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_medio_suministro_agua_tipo',
         key: 'id'
        }
      },
      tanque_almacenamiento: {
        type: Sequelize.BOOLEAN
      },
      bomba_agua: {
        type: Sequelize.BOOLEAN
      },
      infra_disponibilidad_servicio_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_disponibilidad_servicio_tipo',
         key: 'id'
        }
      },
      infra_agua_uso_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_agua_uso_tipo',
         key: 'id'
        }
      },
      infra_purificador_agua_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_purificador_agua_tipo',
         key: 'id'
        }
      },
      cantidad_ambientes_agua: {
        type: Sequelize.INTEGER
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_servicio_agua');
  }
};