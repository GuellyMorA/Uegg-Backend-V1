'use strict';
module.exports = (sequelize, DataTypes) => {
    const InfraPredio = sequelize.define('infraPredio', {
        /*id: {
        	type: DataTypes.INTEGER,
        	allowNull: false,
        	primaryKey: true,
        	autoIncrement: true,
        	field: 'id'
        },*/
        jurisdiccionGeograficaId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'jurisdiccion_geografica',
                key: 'id'
            },
            field: 'jurisdiccion_geografica_id'
        },
        latitudX: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'latitud_x'
        },
        longitudY: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'longitud_y'
        },
        direccion: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'direccion'
        },
        zona: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'zona'
        },
        gestionTipoId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'gestion_tipo',
                key: 'id'
            },
            field: 'gestion_tipo_id'
        },
        fechaRegistro: {
            type: DataTypes.DATEONLY,
            allowNull: true,
            field: 'fecha_registro'
        },
        tramoTroncal: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'tramo_troncal'
        },
        tramoComplementario: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'tramo_complementario'
        },
        tramoVecinal: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'tramo_vecinal'
        },
        infraPredioTipoId: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: 'infra_predio_tipo',
                key: 'id'
            },
            field: 'infra_predio_tipo_id'
        },
        nombrePredio: {
            type: DataTypes.STRING,
            allowNull: true,
            field: 'nombre_predio'
        },
        operativo: {
            type: DataTypes.BOOLEAN,
            allowNull: true,
            field: 'operativo'
        },
    }, {
        tableName: 'infra_predio',
        timestamps: false

    });
    InfraPredio.associate = (models) => {
        InfraPredio.belongsTo(models.infraPredioTipo, {
            foreignKey: 'infraPredioTipoId',
            as: 'infraPredioTipo',
        });

    };
    return InfraPredio;
};