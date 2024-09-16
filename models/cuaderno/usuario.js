'use strict';
module.exports = (sequelize, DataTypes) => {
  const Usuario = sequelize.define('usuario', {
    nombre: DataTypes.STRING,
    telefono: DataTypes.STRING,
    rol_id: DataTypes.INTEGER,
    username: DataTypes.STRING,
    password: DataTypes.STRING,
    estado: DataTypes.BOOLEAN
  }, {
    // tableName: 'usuario', //No es necesario especificar el nombre de la tabla porque el modelo es singular y la tabla plural
    // timestamps: false, //Obviar createdAt y updatedAt gestionado por el modelo de manera automática
  });
  Usuario.associate = function(models) {
  };
  return Usuario;
};