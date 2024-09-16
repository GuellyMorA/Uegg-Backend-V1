'use strict';
module.exports = (sequelize, DataTypes) => {
    const InfraAguaUsoTipo = sequelize.define('infraAguaUsoTipo', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        aguaUso: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'agua_uso'
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
        tableName: 'infra_agua_uso_tipo',
        timestamps: false
    });
    return InfraAguaUsoTipo;
};