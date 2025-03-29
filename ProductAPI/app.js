const express = require('express');  // Importa o módulo Express para criar o servidor web

const { routerUsuarios, routerFotoUsuario} = require('./routers/usuarios.js');  // Importa as rotas relacionadas a usuarios

const { routerLogin } = require('./routers/login.js');  // Importa as rotas relacionadas a login

const{ verificarToken } = require('./authentication/token.js');  // Importa o módulo de verificação de token

const cors = require('cors'); // Importa o módulo CORS para permitir controle de acesso entre diferentes origens

const bodyParser = require('body-parser');  // Importa o middleware body-parser para processar o corpo das requisições

const { routerProduto, routerFotoProduto } = require('./routers/produto.js');

const { routerEstoque } = require('./routers/estoque.js');


const app = express();  // Cria uma instância do Express

app.use(bodyParser.json({ limit: '16mb' }));

app.use(cors()); // Configura o middleware CORS

app.use(bodyParser.json());  // Middleware para processar JSON no corpo das requisições

// Define as rotas para usuarios, protegidas pelo middleware de verificação de token
app.use('/usuarios', verificarToken, routerUsuarios);

// Define as rotas para login
app.use('/login', routerLogin);

// Define as rotas para produto
app.use('/produtos',  verificarToken, routerProduto);

// Define as rotas para estoque
app.use('/estoque', verificarToken, routerEstoque);

// Define as rotas para obter foto do produto
app.use('/produto/foto', routerFotoProduto);

// Define as rotas para obter foto do usuario
app.use('/usuario/foto', routerFotoUsuario);

// Inicia o servidor web na porta 3000
app.listen(3000, () => {

  console.log(`Servidor web iniciado na porta 3000`);

});
