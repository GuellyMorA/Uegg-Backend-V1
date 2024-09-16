'use strict';
module.exports = (sequelize, DataTypes) => { 
    const   UeggPcpaConstruccion = sequelize.define('uegg_pcpa_construccion',{
    id: {
         type: DataTypes.INTEGER,
         allowNull: false,
         primaryKey: true,
         autoIncrement: true,
         field: 'id'
         },
    
        id_pcpa_unidad_educativa : {
        type: DataTypes.INTEGER,
        allowNull: false,
        field: 'id_pcpa_unidad_educativa'
        },
        fechaRegistro : {
        type: DataTypes.DATE,
        allowNull: true,
        field: 'fecha_registro'
        },
        check_diagnostico_pcpa : {
        type: DataTypes.BOOLEAN,
        allowNull: true,
        field: 'check_diagnostico_pcpa'
        },
        estado: {
        type: DataTypes.STRING,
        allowNull: true,
        field: 'estado'
        },
        usu_cre : {
        type: DataTypes.STRING,
        allowNull: true,
        field: 'usu_cre'
        },
        usu_mod : {
        type: DataTypes.STRING,
        allowNull: true,
        field: 'usu_mod'
        },   
        fec_cre   : {
        type: DataTypes.DATE,
        allowNull: true,
        field: 'fec_cre'
        },
        fec_mod : {
        type: DataTypes.DATE,
        allowNull: true,
        field: 'fec_mod'
        }
    }, 
    {   
        tableName: 'uegg_pcpa_construccion',       
        timestamps: false,     });    
        UeggPcpaConstruccion.associate = function(models) {       
     };  
     return UeggPcpaConstruccion; };
     