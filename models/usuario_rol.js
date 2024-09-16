'use strict';

module.exports = (sequelize, DataTypes) => {
  const UsuarioRol = sequelize.define('usuario_rol', {
    rol_tipo_id: DataTypes.INTEGER,
    usuario_id: DataTypes.INTEGER,
    esactivo: DataTypes.BOOLEAN,
    lugar_tipo_id: DataTypes.INTEGER,
    circunscripcion_tipo_id: DataTypes.INTEGER,
    sub_sistema: DataTypes.STRING
  }, {
    tableName: 'usuario_rol',
    timestamps: false,
  });

  UsuarioRol.associate = function(models) {
    UsuarioRol.belongsTo(models.usuario, {
    	foreignKey: 'usuario_id'
    });
    UsuarioRol.belongsTo(models.rol_tipo, {
    	foreignKey: 'rol_tipo_id'
    });
    UsuarioRol.belongsTo(models.lugar_tipo, {
    	foreignKey: 'lugar_tipo_id'
    });
  };
  return UsuarioRol;
};