'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_hurto_delictivo', {
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
      hurto_delictivo: {
        type: Sequelize.BOOLEAN
      },
      gestion_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'gestion_tipo',
         key: 'id'
        }
      },
      turno_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'turno_tipo',
         key: 'id'
        }
      },
      ambiente: {
        type: Sequelize.STRING
      },
      mobiliario: {
        type: Sequelize.STRING
      },
      acciones: {
        type: Sequelize.STRING
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_hurto_delictivo');
  }
};