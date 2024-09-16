'use strict';
module.exports = (sequelize, DataTypes) => {
  const TtecAdministrativoInstitutoPersona = sequelize.define('ttec_administrativo_instituto_persona', {
    persona_id: DataTypes.INTEGER,
    fecha_registro: DataTypes.DATE,
    fecha_modificacion: DataTypes.DATE,
    es_vigente: DataTypes.BOOLEAN,
    ttec_cargo_designacion_tipo_id: DataTypes.INTEGER,
    gestion_tipo_id: DataTypes.INTEGER,
    institucioneducativa_id: DataTypes.INTEGER,
    ttec_cargo_tipo_id: DataTypes.INTEGER,
    ttec_formacion_tipo_id: DataTypes.INTEGER,
    tipo_contrato: DataTypes.STRING,
    financiamiento_tipo_id: DataTypes.INTEGER,
    item: DataTypes.INTEGER
  }, {
    tableName: 'ttec_administrativo_instituto_persona',
    timestamps: false,
  });
  TtecAdministrativoInstitutoPersona.associate = function(models) {
    TtecAdministrativoInstitutoPersona.belongsTo(models.persona, {
    	foreignKey: 'persona_id'
    });
    TtecAdministrativoInstitutoPersona.belongsTo(models.institucioneducativa, {
      foreignKey: 'institucioneducativa_id'
    });
    TtecAdministrativoInstitutoPersona.belongsTo(models.gestion_tipo, {
      foreignKey: 'gestion_tipo_id'
    });
    TtecAdministrativoInstitutoPersona.belongsTo(models.ttec_cargo_tipo, {
      foreignKey: 'ttec_cargo_tipo_id'
    });
    TtecAdministrativoInstitutoPersona.belongsTo(models.ttec_formacion_tipo, {
      foreignKey: 'ttec_formacion_tipo_id'
    });
    /*TtecAdministrativoInstitutoPersona.belongsTo(models.ttec_cargo_designacion_tipo, {
      foreignKey: 'ttec_cargo_designacion_tipo_id'
    });
    TtecAdministrativoInstitutoPersona.belongsTo(models.financiamiento_tipo, {
      foreignKey: 'financiamiento_tipo_id'
    });*/
  };
  return TtecAdministrativoInstitutoPersona;
};