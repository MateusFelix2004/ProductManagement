const express = require('express'); // Importa o módulo 'express' para criar o aplicativo web.

const routerUsuarios = express.Router(); // Cria um roteador para gerenciar as rotas relacionadas ao recurso 'usuarios'.

const routerFotoUsuario = express.Router();

const multer = require('multer');

const upload = multer();

const { controllerUsuario } = require('../controller/controllers.js'); // Importa o controlador de usuário.

// Rota que cria um novo usuário
routerUsuarios.post('/', (req, res) => {

    controllerUsuario.registrarUsuario(req, res); // Invocoa o controlador de usuário para criação de novo usuário

});

// Rota que obtém todos os usuários
routerUsuarios.get('/', (req, res) => {

    controllerUsuario.listaUsuarios(req, res); // Invoca o controlador de usuário para listar todos os usuários

});

// Rota que obtém um usuário específico pela sua ID
routerUsuarios.get('/:id', (req, res) => {

    controllerUsuario.detalhesUsuario(req, res); // Invoca o controlador de usuário para informações de um usuário específico

});

// Rota que atualiza informações de um usuário específico pela sua ID
routerUsuarios.put('/:id', upload.single('foto'), (req, res) => {

   controllerUsuario.editarUsuario(req, res); // Invoca o controlador de usuário para editar dados do usuário

});

// Rota que exclui um usuário específico pela sua ID
routerUsuarios.delete('/:id', (req, res) => {

   controllerUsuario.excluirUsuario(req, res); // Invoca o controladro de usuário para deletar o usuário
    
});


// Rota que obtém a foto de um usuario específico pela sua ID
routerFotoUsuario.get('/:id', (req, res) => {

    controllerUsuario.obterFotoUsuario(req, res); // Invoca o controlador de produto para informações de um produto específico

});


module.exports = { routerUsuarios, routerFotoUsuario }