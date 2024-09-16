'use strict';
module.exports = (sequelize, DataTypes) => {
  const Rol = sequelize.define('rol', {
    descripcion: DataTypes.STRING,
    estado: DataTypes.BOOLEAN
  }, {
  	tableName: 'roles', //Es necesario especificar el nombre de la tabla, porque el modelo es 'rol' y no 'role'
    // timestamps: false, //Obviar createdAt y updatedAt gestionado por el modelo de manera automática
  });
  Rol.associate = function(models) {
    /*Rol.hasMany(models.usuario, {
      foreignKey: 'rol_id'
    });*/
  };
  return Rol;
};