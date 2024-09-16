'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_predio', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      jurisdiccion_geografica_id: {
        type: Sequelize.INTEGER
      },
      latitud_x: {
        type: Sequelize.STRING
      },
      longitud_y: {
        type: Sequelize.STRING
      },
      direccion: {
        type: Sequelize.STRING
      },
      zona: {
        type: Sequelize.STRING
      },
      gestion_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'gestion_tipo',
         key: 'id'
        }
      },
      fecha_registro: {
        type: Sequelize.DATE
      },
      tramo_troncal: { 
        type: Sequelize.STRING
      },
      tramo_complementario: {
        type: Sequelize.STRING
      },
      tramo_vecinal: {
        type: Sequelize.STRING
      },
      infra_predio_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_predio_tipo',
         key: 'id'
         }
      },        
      nombre_predio: {
        type: Sequelize.STRING
      },
      operativo: {
        type: Sequelize.STRING
      }      
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_predio');
  }
};