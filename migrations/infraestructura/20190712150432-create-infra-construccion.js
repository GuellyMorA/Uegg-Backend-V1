'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_construccion', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_gestion_construccion_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_gestion_construccion_tipo',
         key: 'id'
        }
      },
      infra_entidad_ejecutora_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_entidad_ejecutora_tipo',
         key: 'id'
        }
      },
      gestion: {
        type: Sequelize.INTEGER
      },
      discapacidad: {
        type: Sequelize.BOOLEAN
      },
      detalle: {
        type: Sequelize.STRING
      },
      infra_caracteristica_construccion_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_caracteristica_construccion',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_construccion');
  }
};