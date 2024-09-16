'use strict';
module.exports = (sequelize, DataTypes) => {
    const Infra_predio_institucioneducativa = sequelize.define('infra_predio_institucioneducativa', {
        infra_predio_id: DataTypes.INTEGER,
        infra_tenencia_tipo_id: DataTypes.INTEGER,
        persona_id: DataTypes.INTEGER,
        bth_especialidad: DataTypes.BOOLEAN,
        obs: DataTypes.STRING,
        institucioneducativa_id: DataTypes.INTEGER,
        representante: DataTypes.STRING,
    }, {
        tableName: 'infra_predio_institucioneducativa',
        timestamps: false
    });
    Infra_predio_institucioneducativa.associate = function(models) {
        Infra_predio_institucioneducativa.belongsTo(models.infra_tenencia_tipo, {
            foreignKey: 'infra_tenencia_tipo_id',
            as: 'infra_tenencia_tipo',
        });
    };
    return Infra_predio_institucioneducativa;
};