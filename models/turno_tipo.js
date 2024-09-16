'use strict';
module.exports = (sequelize, DataTypes) => {
    const TurnoTipo = sequelize.define('turnoTipo', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            field: 'id'
        },
        turno: {
            type: DataTypes.STRING,
            allowNull: false,
            field: 'turno'
        },
        abrv: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'abrv'
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
        tableName: 'turno_tipo',
        timestamps: false
    });
    return TurnoTipo;
};