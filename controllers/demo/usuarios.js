const Usuario = require('../../models/demo').usuario;
const Rol = require('../../models/demo').rol;

module.exports = {
  list(req, res) {
    return Usuario
      .findAll({
        attributes: { exclude: ['password'] }, //Excluye la columna especificada
        include: [{ //Incluye el modelo con el que está  relacionado
          model: Rol,
          attributes: ['descripcion'], //Incluye solo la columna especificada
          where: { estado: true }
        }],
        order: [
          ['createdAt', 'DESC'],
        ],
        // raw: true //Devuelve el resultado en bruto
      })
      .then((usuarios) => res.status(200).send(usuarios))
      .catch((error) => { res.status(400).send(error); });
  },

  getById(req, res) {
    return Usuario
      .findByPk(req.params.id)
      .then((usuario) => {
        if (!usuario) {
          return res.status(404).send({
            message: 'usuario Not Found',
          });
        }
        return res.status(200).send(usuario);
      })
      .catch((error) => res.status(400).send(error));
  },

  add(req, res) {
    return Usuario
      .create({
        nombre: req.body.nombre,
        telefono: req.body.telefono,
        rol_id: req.body.rol_id,
        username: req.body.username,
        password: req.body.password,
        estado: req.body.estado
      })
      .then((usuario) => res.status(201).send(usuario))
      .catch((error) => res.status(400).send(error));
  },

  update(req, res) {
    return Usuario
      .findByPk(req.params.id, {})
      .then(usuario => {
        if (!usuario) {
          return res.status(404).send({
            message: 'usuario Not Found',
          });
        }
        return usuario
          .update({
            nombre: req.body.nombre || usuario.nombre,
            telefono: req.body.telefono || usuario.telefono,
            rol_id: req.body.rol_id || usuario.rol_id,
            username: req.body.username || usuario.username,
            // password: req.body.password || usuario.password,
            estado: !!req.body.estado
          })
          .then(() => res.status(200).send(usuario))
          .catch((error) => res.status(400).send(error));
      })
      .catch((error) => res.status(400).send(error));
  },

  delete(req, res) {
    return Usuario
      .findByPk(req.params.id)
      .then(usuario => {
        if (!usuario) {
          return res.status(400).send({
            message: 'usuario Not Found',
          });
        }
        return usuario
          .destroy()
          .then(() => res.status(204).send())
          .catch((error) => res.status(400).send(error));
      })
      .catch((error) => res.status(400).send(error));
  },
};