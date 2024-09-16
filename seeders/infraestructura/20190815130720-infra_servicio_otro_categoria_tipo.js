'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_servicio_otro_categoria_tipo', [{
                servicio_categoria: 'servicio cuenta',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                servicio_categoria: 'servicio ofrece',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_servicio_otro_categoria_tipo', null, {});
    }
};