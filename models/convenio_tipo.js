'use strict';
module.exports = (sequelize, DataTypes) => {
  const ConvenioTipo = sequelize.define('convenio_tipo', {
    convenio: DataTypes.STRING,
    fecha_inicio: DataTypes.DATE,
    fecha_finalizacion: DataTypes.DATE,
    duracion: DataTypes.INTEGER,
    tipo_convenio: DataTypes.STRING,
    cod_dependencia_id: DataTypes.INTEGER,
  }, {
      tableName: 'convenio_tipo',
      timestamps: false
    });
    ConvenioTipo.associate = function(models) {
    };
  
  return ConvenioTipo;
};