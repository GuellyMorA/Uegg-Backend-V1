'use strict';
module.exports = (sequelize, DataTypes) => {
    const InfraInstitucioneducativaPrevencion = sequelize.define('infraInstitucioneducativaPrevencion', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        infraPredioInstitucioneducativaId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_predio_institucioneducativa',
                key: 'id'
            },
            field: 'infra_predio_institucioneducativa_id'
        },
        disponibleFormulario: {
            type: DataTypes.BOOLEAN,
            allowNull: true,
            field: 'disponible_formulario'
        },
        personalCapacitado: {
            type: DataTypes.BOOLEAN,
            allowNull: true,
            field: 'personal_capacitado'
        },
        formularioEdanE: {
            type: DataTypes.BOOLEAN,
            allowNull: true,
            field: 'formulario_edan_e'
        }
    }, {
        tableName: 'infra_institucioneducativa_prevencion',
        timestamps: false
    });
    return InfraInstitucioneducativaPrevencion;
};