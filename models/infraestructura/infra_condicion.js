'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_condicion = sequelize.define('infra_condicion', {
    infra_material_tipo_id: DataTypes.INTEGER,
    infra_caracteristica_tipo_id: DataTypes.INTEGER,
    infra_pregunta_tipo_id: DataTypes.INTEGER
  }, {
    tableName: 'infra_condicion',
    timestamps: false
  });
  Infra_condicion.associate = function(models) {
    Infra_condicion.belongsTo(models.infra_caracteristica_tipo, {
    	foreignKey: 'infra_caracteristica_tipo_id',
    	as: 'infra_caracteristica_tipo',
    });	
    Infra_condicion.belongsTo(models.infra_material_tipo, {
    	foreignKey: 'infra_material_tipo_id',
    	as: 'infra_material_tipo',
    });
  };
  return Infra_condicion;
};