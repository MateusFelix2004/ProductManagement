const dbconn = require("../../configurations/database");

// Função que adiciona um produto no banco de dados
function adicionarProduto(nome, preco, foto) {
    return new Promise((resolve, reject) => {
      // Executa a consulta SQL para criar um novo usuário no banco de dados
      dbconn.query('CALL adicionarProduto(?, ?, ?)', [nome, preco, foto], (error, results) => {
        if (error) {
          // Se houver um erro na execução da consulta SQL
          console.error('Erro ao processar o comando SQL: ', error.message); // Loga o erro para diagnóstico.
          return reject(false); // Rejeita a promessa indicando que a operação falhou.
        }
  
        // Se a consulta SQL for bem-sucedida
        return resolve(true); // Resolve a promessa indicando que o produto foi adicionado com sucesso.
      });
    });
  }
  
  module.exports = { adicionarProduto }