'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('infra_no_pedagogico_internado', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      infra_ambiente_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_ambiente',
         key: 'id'
        }
      },
      funciona_internado: {
        type: Sequelize.STRING
      },
      distancia: {
        type: Sequelize.STRING
      },
      infra_responsable_tipo_id: {
        type: Sequelize.INTEGER,
        references: {
         model: 'infra_responsable_tipo',
         key: 'id'
        }
      },
      litera: {
        type: Sequelize.STRING
      },
      cama: {
        type: Sequelize.STRING
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('infra_no_pedagogico_internado');
  }
};