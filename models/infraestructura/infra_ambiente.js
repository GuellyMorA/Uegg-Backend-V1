'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_ambiente = sequelize.define('infra_ambiente', {
    infra_predio_id: DataTypes.INTEGER,
    cantidad: DataTypes.INTEGER,
    capacidad: DataTypes.INTEGER,
    area: DataTypes.INTEGER,
    largo: DataTypes.INTEGER,
    ancho: DataTypes.INTEGER,
    es_utilizado: DataTypes.BOOLEAN,
    es_universal: DataTypes.BOOLEAN,
    infra_ambiente_tipo_id: DataTypes.INTEGER,
    es_servicio: DataTypes.BOOLEAN,
    infra_estado_tipo_id: DataTypes.INTEGER,
    servicio_electrico: DataTypes.BOOLEAN,
    servicio_agua: DataTypes.BOOLEAN,
    infra_bloque_id: DataTypes.INTEGER,
    infra_piso_id: DataTypes.INTEGER
  }, {
    tableName: 'infra_ambiente',
    timestamps: false
  });
  Infra_ambiente.associate = function(models) {
    /*InfraAmbiente.belongsTo(models.infra_predio, {
      foreignKey: 'infra_predio_id',
      as: 'infra_predio',
    });  
    InfraAmbiente.belongsTo(models.infra_ambiente_tipo, {
      foreignKey: 'infra_ambiente_tipo_id',
      as: 'infra_ambiente_tipo',
    }); 
    InfraAmbiente.belongsTo(models.infra_bloque, {
      foreignKey: 'infra_bloque_id',
      as: 'infra_bloque',
    });*/
  };
  return Infra_ambiente;
};