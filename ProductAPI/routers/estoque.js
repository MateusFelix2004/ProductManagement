const express = require('express'); // Importa o módulo 'express' para criar o aplicativo web.

const routerEstoque = express.Router(); // Cria um roteador para gerenciar as rotas relacionadas ao recurso 'produtos'.

const { controllerEstoque } = require('../controller/controllers.js'); // Importa o controlador de produto

// Rota que obtém todo o estoque de produtos
routerEstoque.get('/', (req, res) => {
    console.log('rota estoque acessada.')
    controllerEstoque.listarEstoque(req, res); // Invoca o controlador de produto para listar todos os produtos

});

// Rota que atualiza informações de estoque de um produto específico pela ID do produto
routerEstoque.put('/:id', (req, res) => {

   controllerEstoque.editarEstoque(req, res); // Invoca o controlador de produto para editar informações do produto

});

module.exports = { routerEstoque }