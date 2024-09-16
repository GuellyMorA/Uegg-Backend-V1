'use strict';

module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('usuario', [{
    	ci:'3421779',
		nombre:'OSCAR IVAN',
		paterno:'PAZ',
		materno:'CONTRERAS',
		codigo_sie:80890015,
		jurisdiccion_id:40730009,
		cargo_id:1,
		cargo_tipo:'DIRECTOR/A'
	}]
	, {});
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('usuario', null, {});
  }
};
