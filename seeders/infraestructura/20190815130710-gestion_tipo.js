'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('gestion_tipo', [{
                gestion: 2019
            },
            
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('gestion_tipo', null, {});
    }
};