// Importação de módulos do controlador de produto.
const { listarEstoque } = require('../model/estoque/listar.js');
const { excluirProduto } = require('../model/produto/excluir.js');
const { adicionarProduto } = require('./produto/adicionar.js');
const { detalharProduto } = require('./produto/detalhar.js');

const { editarProduto } = require('./produto/editar.js');
const { obterFotoProduto } = require('./produto/foto.js');
const { listarProdutos } = require('./produto/listar.js');

// Importação de módulos do controlador de usuário.
const { registrarUsuario } = require('./usuario/criar.js'); // Importa o módulo que cria um novo usuário no sistema.

const { excluirUsuario } = require('./usuario/deletar.js'); // Importa o módulo que deleta um usuário.

const { detalhesUsuario } = require('./usuario/detalhar.js'); // Importa o módulo que obtém informações de um usuário específico.

const { editarUsuario } = require('./usuario/editar.js');

const { listaUsuarios } = require('./usuario/listar.js'); // Importa o módula que lista todos os usuários.

const { loginUsuario } = require('./usuario/login.js'); // Importa o módulo que realiza de login.

const { obterFotoUsuario } = require('./usuario/foto.js')

// Centraliza os módulos do controlador de usuário
const controllerUsuario = {

    registrarUsuario,
    excluirUsuario,
    editarUsuario,
    detalhesUsuario,
    obterFotoUsuario,
    listaUsuarios,
    loginUsuario

}

// Centraliza os módulos do controlador de produto
const controllerProduto = {

    adicionarProduto,
    editarProduto,
    detalharProduto,
    excluirProduto,
    obterFotoProduto,
    listarProdutos

}

// Centraliza os módulos do controlador de estoque
const controllerEstoque = {

    adicionarProduto,
    listarEstoque


}

module.exports = { 
    controllerUsuario,
    controllerProduto,
    controllerEstoque
}