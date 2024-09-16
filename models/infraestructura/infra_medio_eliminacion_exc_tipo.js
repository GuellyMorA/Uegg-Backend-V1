'use strict';
module.exports = (sequelize, DataTypes) => {
    const InfraMedioEliminacionExcTipo = sequelize.define('infraMedioEliminacionExcTipo', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        medioEliminacionExc: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'medio_eliminacion_exc'
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
        tableName: 'infra_medio_eliminacion_exc_tipo',
        timestamps: false
    });
    return InfraMedioEliminacionExcTipo;
};