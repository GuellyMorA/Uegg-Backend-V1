'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('turno_tipo', [{
                id: '0',
                turno: 'Sin Definir',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {   id: '1',
                turno: 'Mañana',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {   id: '2',
                turno: 'Tarde',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {   id: '4',
                turno: 'Noche',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {   id: '8',
                turno: 'Mañana y Tarde',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {   id: '9',
                turno: 'Tarde y Noche',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {   id: '10',
                turno: 'Mañana,Tarde y Noche',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            },
            {   id: '11',
                turno: 'Mañana y Noche',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('turno_tipo', null, {});
    }
};