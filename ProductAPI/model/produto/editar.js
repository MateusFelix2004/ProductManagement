const dbconn = require('../../configurations/database.js'); // Importa o módulo de conexão com o banco de dados.

// Função para editar o nome, preço e imagem de um produto
function editarProduto(id, nome, preco, imagem) {
  return new Promise((resolve, reject) => {
    dbconn.query('CALL atualizarNomePrecoImagemProduto(?, ?, ?, ?)', [id, nome, preco, imagem], (error, result) => {
      if (error) {
        // Se houver um erro na consulta ao banco de dados
        console.log('Erro ao processar o comando SQL: ', error.message);
        return reject(error); // Rejeita a promessa em caso de erro
      }

      // Verifica se alguma linha foi afetada
      if (result.affectedRows === 0) {
        // Nenhuma linha foi afetada, retorna false
        return resolve(false);
      }

      // Se a consulta for bem-sucedida e linhas foram afetadas
      return resolve(true); // Resolve a promessa com verdadeiro indicando sucesso
    });
  });
}

module.exports = { editarProduto };