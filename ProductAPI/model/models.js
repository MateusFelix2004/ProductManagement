// Importação de módulos do modelo de usuário.
const { criarUsuario } = require('./usuarios/criar.js'); // Importa o módulo que cria um novo usuário no sistema.

const { deletarUsuario } = require('./usuarios/deletar.js'); // Importa o módulo que deleta um usuário.

const { atualizarFotoUsuario } = require('./usuarios/editar.js'); // Importa o módulo que deleta um usuário.

const { detalharUsuario } = require('./usuarios/detalhar.js'); // Importa o módulo que obtém informações de um usuário específico.

const { listarUsuarios } = require('./usuarios/listar.js'); // Importa o módula que lista todos os usuários.

const { obterLoginUsuario } = require('./usuarios/login.js'); // Importa o módulo que realiza de login.

const { verificaEmailBD } = require('./usuarios/email.js'); // Importa o módulo que verifica a existencia de um email no banco de dados

// Importação dos módulos do modelo de produto
const { adicionarProduto } = require('./produto/adicionar.js'); // Importa o módulo que adiciona um produto

const { excluirProduto } = require('./produto/excluir.js'); // Importa o módulo que exclui um produto

const { listarProdutos } = require('./produto/listar.js'); // Importa o módulo que lista os produtos

const { obterImagem } = require('./produto/foto.js'); // Importa o módulo que obtém a foto de um produto

const { editarProduto } = require('./produto/editar.js'); // Importa o módulo que edita as informações do produto

// Importação dos módulos do modelo de estoque
const { editarEstoque } = require('./estoque/editar.js'); // Importa módulo que edita a quantidade de um produto em estoque

const { listarEstoque } = require('./estoque/listar.js'); // Importa o módulo que lista o estoque de produtos
const { detalharProduto } = require('./produto/detalhar.js');
const { obterImagemUsuario } = require('./usuarios/foto.js');



// Centraliza os módulos do modelo de usuário
const modeloUsuario = {

    criarUsuario,
    deletarUsuario,
    atualizarFotoUsuario,
    detalharUsuario,
    obterImagemUsuario,
    listarUsuarios,
    obterLoginUsuario,
    verificaEmailBD

}

// Centraliza os módulos do modelo de produto
const modeloProduto = {

    adicionarProduto,
    excluirProduto,
    detalharProduto,
    editarProduto,
    listarProdutos,
    obterImagem,

}


// Centraliza os módulos do modelo de estoque
const modeloEstoque = {

    editarEstoque,
    listarEstoque

}

module.exports = { 
    
    modeloUsuario,
    modeloProduto,
    modeloEstoque

 }