'use strict';
module.exports = (sequelize, DataTypes) => {
  const Infra_bateria_artefacto_banio = sequelize.define('infra_bateria_artefacto_banio', {
    infra_artefacto_banio_tipo_id: DataTypes.INTEGER,
    infra_ambiente_id: DataTypes.INTEGER,
    cantidad_funciona: DataTypes.INTEGER,
    cantidad_no_funciona: DataTypes.INTEGER,
    servicio_saneamiento: DataTypes.BOOLEAN
  }, {
    tableName: 'infra_bateria_artefacto_banio',
    timestamps: false
  });
  Infra_bateria_artefacto_banio.associate = function(models) {
    Infra_bateria_artefacto_banio.belongsTo(models.infra_artefacto_banio_tipo, {
      foreignKey: 'infra_artefacto_banio_tipo_id',
      as: 'infra_artefacto_banio_tipo',
    });
  };
  return Infra_bateria_artefacto_banio;
};