'use strict';
module.exports = (sequelize, DataTypes) => {
    const MesTipo = sequelize.define('mesTipo', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            field: 'id'
        },
        mes: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'mes'
        },
        esVigente: {
            type: DataTypes.BOOLEAN,
            allowNull: true,
            field: 'es_vigente'
        },
        fechaRegistro: {
            type: DataTypes.DATE,
            allowNull: true,
            field: 'fecha_registro'
        },
        fechaModificacion: {
            type: DataTypes.DATE,
            allowNull: true,
            field: 'fecha_modificacion'
        }
    }, {
        tableName: 'mes_tipo',
        timestamps: false
    });
    return MesTipo;
};