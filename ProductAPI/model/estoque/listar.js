const dbconn = require('../../configurations/database.js'); // Importa o módulo de conexão com o banco de dados.

// Função para listar o estoque de produtos
function listarEstoque() {
  return new Promise((resolve, reject) => {

    console.log('Iniciando consulta ao estoque');
    dbconn.query('CALL listarEstoqueProdutos()', (error, rows) => {
      if (error) {
        // Se houver um erro na consulta ao banco de dados
        console.log('Erro ao listar estoque: ', error.message);
        return reject(error); // Rejeita a promessa em caso de erro
      }

      // Resolve a promessa com os resultados da consulta

      resultado = rows[0]
      dbconn.end()
      console.log(resultado)
      return resolve(resultado); // Retorna a lista de produtos e suas quantidades
    });
  });
}

module.exports = { listarEstoque };
