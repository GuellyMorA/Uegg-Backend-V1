'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('infra_pregunta_tipo', [{
                pregunta: '¿Tiene iluminacion electrica?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Tiene Iluminacion natural?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Esta techado?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Tiene cielo falso?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Tiene ventana(s)?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Tiene puerta(s)?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Tiene muros?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿El muro tiene revestimiento?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿El piso es de tierra?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Hay buena ventilación?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Hay buenas condiciones de luz natural?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Se tiene privacidad?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Existe un centro de salud proximo?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Existe un centro policial proximo?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Existe un telecentro proximo?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Existe una DNA o SLIM proximo?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Existe una Universidad proxima?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Existe una estacion de bomberos proximo?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Existe un mercado proximo?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Existe una organizacion comunitaria proxima?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Existe un instituto técnico/tecnológico próximo?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Tiene graderias?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            },
            {
                pregunta: '¿Tiene Piso?',
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                es_vigente: true
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('infra_pregunta_tipo', null, {});
    }
};