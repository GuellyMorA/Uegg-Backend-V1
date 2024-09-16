'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_caracteristica_construccion', {
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
      infra_propiedad_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_propiedad_tipo',
         key: 'id'
        }
      },
      razon_social: {
        type: Sequelize.STRING
      },
      otro_documentacion: {
        type: Sequelize.STRING
      },
      infra_documentacion_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_documentacion_tipo',
         key: 'id'
        }
      },
      folio: {
        type: Sequelize.STRING
      },
      partida: {
        type: Sequelize.STRING
      },
      plano_aprobado: {
        type: Sequelize.BOOLEAN
      },
      infra_edificacion_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_edificacion_tipo',
         key: 'id'
        }
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_caracteristica_construccion');
  }
};