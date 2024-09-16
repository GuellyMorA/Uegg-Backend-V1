const md5 = require('md5');
const jwt = require('jsonwebtoken');
const bcrypt = require("bcrypt-nodejs") //gma const bcrypt = require('bcrypt');
const Key = require('../../config/key');
const Usuario = require('../../models/cuaderno').usuario;
const sequelize = Usuario.sequelize;

module.exports = {
  list(req, res) {
    return Usuario
      .findAll({
        attributes: { exclude: ['password'] },
        order: [
          ['createdAt', 'DESC'],
        ],
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

  update(req, res) {console.log(Usuario);
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

  auth(req, res) {
    Usuario.findOne({ where: {username: req.body.username} }).then(async(usuario) => {
      if (md5(req.body.password) == usuario.password) {
        var token = jwt.sign({usuario_id: usuario.id}, Key.apikey);
        let sie_jg = await sequelize.query('select ie.id, ie.le_juridicciongeografica_id from institucioneducativa ie inner join maestro_inscripcion mi on mi.institucioneducativa_id = ie.id where gestion_tipo_id=2019 and mi.persona_id='+usuario.persona_id+' limit 1',
          { type: sequelize.QueryTypes.SELECT, plain: true, raw: true });
        console.log(sie_jg);
        res.status(200).json({
          usuario_id: usuario.id,
          codigo_sie: sie_jg.id,
          codigo_jg: sie_jg.le_juridicciongeografica_id,
          token
        })
      } else{
        res.status(400).send({message: 'Usuario o contraseña invalida'});
      }
    }).catch((err)=>{
      res.status(400).send({message: 'Usuario no autorizado'});
    })
  },

  generateClave(req, res) {
    var queryGet = 'SELECT id FROM usuario ORDER BY id';
    return sequelize.query(queryGet, {
        type: sequelize.QueryTypes.SELECT
      }, {
        raw: true
      })
      .then(async(result) => {
        for (const item of result) {
          let hash = bcrypt.hashSync('123456', 10);
          await sequelize.query("UPDATE usuario SET clave='"+hash+"' WHERE id="+item.id);
        }
        res.status(200).send('result');
      })
      .catch((error) => res.status(400).send(error));
  },
};