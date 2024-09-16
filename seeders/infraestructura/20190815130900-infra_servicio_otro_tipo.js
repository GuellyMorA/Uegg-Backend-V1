'use strict';

module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('infra_servicio_otro_tipo', [{
                servicio: 'Gas natural de red',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_servicio_otro_categoria_tipo_id:1
            },
            {
                servicio: 'Enfermería',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_servicio_otro_categoria_tipo_id:1
            },
            {
                servicio: 'Telecentros',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_servicio_otro_categoria_tipo_id:1
            },
            {
                servicio: 'Fisioterapia',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_servicio_otro_categoria_tipo_id:2
            },
            {
                servicio: 'Psicopedagogía',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_servicio_otro_categoria_tipo_id:2
            },
            {
                servicio: 'Psicología',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_servicio_otro_categoria_tipo_id:2
            },
            {
                servicio: 'Trabajo Social',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_servicio_otro_categoria_tipo_id:2
            },
            {
                servicio: 'Audiocentros',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_servicio_otro_categoria_tipo_id:2
            },
            {
                servicio: 'Optometría',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_servicio_otro_categoria_tipo_id:2
            },
            {
                servicio: 'Fonoaudiología',
                es_vigente: true,
                fecha_registro: new Date(),
                fecha_modificacion: new Date(),
                infra_servicio_otro_categoria_tipo_id:2
            }
        ], {});
  },

  down: (queryInterface, Sequelize) => {
   return queryInterface.bulkDelete('infra_servicio_otro_tipo', null, {});
  }
};
