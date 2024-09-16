const Rol = require('../../models/demo').rol;
// const Usuario = require('../../models/demo').usuario;
const sequelize = Rol.sequelize;

module.exports = {
  async list(req, res) {
    return await Rol
      .findAll({
        order: [
          ['descripcion', 'ASC'],
        ],
        /*include: [{
          model: Usuario
        }]*/
      })
      .then((roles) => {
        res.status(200).send(roles)
      })
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return Rol
      .findByPk(req.params.id)
      .then((rol) => {
        if (!rol) {
          return res.status(404).send({
            message: 'rol Not Found',
          });
        }
        return res.status(200).send(rol);
      })
      .catch((error) => res.status(400).send(error));
  },

  add(req, res) {
    return Rol
      .create({
        descripcion: req.body.descripcion,
        estado: req.body.estado,
      })
      .then((rol) => res.status(201).send(rol))
      .catch((error) => res.status(400).send(error));
  },

  update(req, res) {
    return Rol
      .findByPk(req.params.id, {})
      .then(rol => {
        if (!rol) {
          return res.status(404).send({
            message: 'rol Not Found',
          });
        }
        return rol
          .update({
            descripcion: req.body.descripcion || rol.descripcion,
            estado: !!req.body.estado
          })
          .then(() => res.status(200).send(rol))
          .catch((error) => res.status(400).send(error));
      })
      .catch((error) => res.status(400).send(error));
  },

  delete(req, res) {
    return Rol
      .findByPk(req.params.id)
      .then(rol => {
        if (!rol) {
          return res.status(400).send({
            message: 'rol Not Found',
          });
        }
        return rol
          .destroy()
          .then(() => res.status(204).send())
          .catch((error) => res.status(400).send(error));
      })
      .catch((error) => res.status(400).send(error));
  },

  active(req, res) {
    return Rol
      .findAll({
        where: {
          estado: true
        },
        order: [
          ['id', 'ASC'],
        ]
      })
      .then((roles) => {
        res.status(200).send(roles)
      })
      .catch((error) => { res.status(400).send(error); });
  },
};