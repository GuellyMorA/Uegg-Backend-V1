'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_acceso_medio', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_acceso_edificacion_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_acceso_edificacion',
         key: 'id'
        }
      },
      infra_medio_acceso_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_medio_acceso_tipo',
         key: 'id'
        }
      },
      infra_ubicacion_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_ubicacion_tipo',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_acceso_medio');
  }
};