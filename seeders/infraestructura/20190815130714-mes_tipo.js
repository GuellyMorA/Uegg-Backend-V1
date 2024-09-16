'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('mes_tipo', [{
                mes: 'Enero'
            },
            {
                mes: 'Febrero'
            },
            {
                mes: 'Marzo'
            },
            {
                mes: 'Abril'
            },
            {
                mes: 'Mayo'
            },
            {
                mes: 'Junio'
            },
            {
                mes: 'Julio'
            },
            {
                mes: 'Agosto'
            },
            {
                mes: 'Septiembre'
            },
            {
                mes: 'Octubre'
            },
            {
                mes: 'Noviembre'
            },
            {
                mes: 'Diciembre'
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('mes_tipo', null, {});
    }
};