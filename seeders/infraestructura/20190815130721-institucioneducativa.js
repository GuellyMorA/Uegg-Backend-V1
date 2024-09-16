'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('institucioneducativa', [{
                codigo_sie:40730019,
                institucioneducativa: 'PUERTO DE MEJILLONES CIUDAD SATELITE',
                jurisdiccion_id: 40730009,
                codigo_departamento: '2',
                departamento: 'La Paz',
                codigo_provincia: '1',
                provincia: 'MURILLO',
                codigo_municipio: '5',
                municipio: 'CUARTA SECCIÓN (EL ALTO)',
                codigo_canton: '1',
                canton: 'CIUDAD EL ALTO',
                codigo_localidad: '001000',
                localidad: 'EL ALTO - CIUDAD EL ALTO',
                codigo_distrito: 2085,
                distrito: 'EL ALTO 2',
                zona: 'AVENIDA DEL POLICIA S/N',
                direccion: 'Calle 5',
                bth:'[40]',
                subsistema_id: 1,
                subsistema: 'REGULAR',
                telefono_director: '75232124',
                nombre_director: 'PAZ CONTRERAS OSCAR IVAN'
            },
            {
                codigo_sie:40730327,
                institucioneducativa: 'JUAN CAPRILES CIUDAD SATELITE',
                jurisdiccion_id: 40730019,
                codigo_departamento: '1',
                departamento: 'La Paz',
                codigo_provincia: '1',
                provincia: 'MURILLO',
                codigo_municipio: '5',
                municipio: 'CUARTA SECCIÓN (EL ALTO)',
                codigo_canton: '1',
                canton: 'CIUDAD EL ALTO',
                codigo_localidad: '001000',
                localidad: 'EL ALTO - CIUDAD EL ALTO',
                codigo_distrito: 2085,
                distrito: 'EL ALTO 2',
                zona: 'AVENIDA DEL POLICIA S/N',
                direccion: 'Calle 5',
                bth:'[40]',
                subsistema_id: 2,
                subsistema: 'Educación Alternativa',
                telefono_director: '67077678',
                nombre_director: 'CHACON CADENA JANNETH ROSMERY'

            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('institucioneducativa', null, {});
    }
};