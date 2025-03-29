const express = require('express'); // Importa o módulo 'express' para criar o aplicativo web.

const multer = require('multer');

const routerProduto = express.Router(); // Cria um roteador para gerenciar as rotas relacionadas ao recurso 'produtos'.

const routerFotoProduto = express.Router(); // Cria um roteador para gerenciar as rotas relacionadas ao recurso 'produtos'.

const upload = multer();

const { controllerProduto } = require('../controller/controllers.js'); // Importa o controlador de produto

// Rota que obtém todos os produtos
routerProduto.get('/', (req, res) => {

    controllerProduto.listarProdutos(req, res); // Invoca o controlador de produto para listar todos os produtos

});

// Rota que obtém um produto específico pela sua ID
routerProduto.get('/:id', (req, res) => {

    controllerProduto.detalharProduto(req, res); // Invoca o controlador de produto para informações de um produto específico

});

// Rota que atualiza informações de um produto específico pela sua ID
routerProduto.put('/:id', upload.single('foto'),(req, res) => {

   controllerProduto.editarProduto(req, res); // Invoca o controlador de produto para editar informações do produto

});

// Rota que exclui um usuário específico pela sua ID
routerProduto.delete('/:id', (req, res) => {
 
   controllerProduto.excluirProduto(req, res); // Invoca o controladro de produtoo para deletar o produto
    
});

// Rota que adiciona um novo produto
routerProduto.post('/', upload.single('foto'), (req, res) => {

    controllerProduto.adicionarProduto(req, res); // Invoca o controlador de produto para adicionar o novo produto

});

// Rota que obtém a foto de um produto específico pela sua ID
routerFotoProduto.get('/:id', (req, res) => {

    controllerProduto.obterFotoProduto(req, res); // Invoca o controlador de produto para informações de um produto específico

});

module.exports = { routerProduto, routerFotoProduto}