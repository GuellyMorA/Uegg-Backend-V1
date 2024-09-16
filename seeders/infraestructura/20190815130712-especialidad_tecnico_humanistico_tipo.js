'use strict';

module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.bulkInsert('especialidad_tecnico_humanistico_tipo', [
            {
                especialidad: 'Agropecuaria'
            },
            {
                especialidad: 'Agroecología'
            },
            {
                especialidad: 'Arte y Artesanias'
            },
            {
                especialidad: 'Belleza Integral'
            },
            {
                especialidad: 'Cerámica y Alfarería'
            },
            {
                especialidad: 'Construcción Civil'
            },
            {
                especialidad: 'Contabilidad'
            },
            {
                especialidad: 'Diseño Gráfico'
            },
            {
                especialidad: 'Electricidad'
            },
            {
                especialidad: 'Electromecánica'
            },
            {
                especialidad: 'Electrónica'
            },
            {
                especialidad: 'Gastronomía'
            },
            {
                especialidad: 'Instrumento Musical: Viento'
            },
            {
                especialidad: 'Lengua extranjera: Ingles'
            },
            {
                especialidad: 'Mecánica Automotriz'
            },
            {
                especialidad: 'Mecánica Industrial'
            },
            {
                especialidad: 'Mercadotecnia'
            },
            {
                especialidad: 'Carpintería en Madera y Metal'
            },
            {
                especialidad: 'Química Industrial'
            },
            {
                especialidad: 'Salud y Primeros Auxilios'
            },
            {
                especialidad: 'Secretariado'
            },
            {
                especialidad: 'Sistemas Informáticos'
            },
            {
                especialidad: 'Tejido y Telares'
            },
            {
                especialidad: 'Textiles y Confecciones'
            },
            {
                especialidad: 'Textiles, Tejidos y Confecciones'
            },
            {
                especialidad: 'Veterinaria y Zootecnia'
            },
            {
                especialidad: 'Instrumento Musical: Percusión'
            },
            {
                especialidad: 'Instrumento Musical: Cuerda'
            },
            {
                especialidad: 'Danza Moderna'
            },
            {
                especialidad: 'Canto'
            },
            {
                especialidad: 'Teatro'
            },
            {
                especialidad: 'Viticultura y Enología',
            },
            {
                especialidad: 'Robótica'
            },
            {
                especialidad: 'Restauración y conservación patrimonial'
            },
            {
                especialidad: 'Lenguas Originarias'
            },
            {
                especialidad: 'Instalación a gas domiciliario'
            },
            {
                especialidad: 'Administracíon'
            },
            {
                especialidad: 'Transformación  de Alimentos'
            },
            {
                especialidad: 'Turismo y Hoteleria'
            },
            {
                especialidad: 'Comunicación'
            },
            {
                especialidad: 'Gestión Ambiental'
            }
        ], {});
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('especialidad_tecnico_humanistico_tipo', null, {});
    }
};