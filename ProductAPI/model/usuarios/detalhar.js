const dbconn = require('../../configurations/database.js'); // Importa o módulo de conexão com o banco de dados.

// Função para obter detalhes de um usuário específico
function detalharUsuario(id) {
  return new Promise((resolve, reject) => {
    dbconn.query('CALL detalharUsuario(?)', [id], (error, rows) => {
      if (error) {
        // Se houver um erro na consulta ao banco de dados
        console.log('Erro ao processar o comando SQL. ', error.message);
        return reject(error); // Rejeita a promessa em caso de erro
      }

      if (rows[0].length > 0) {
        // Se a consulta for bem-sucedida e houver resultado da busca
        const usuario = rows[0][0]; // Acessa o primeiro resultado

        // Adiciona o campo "foto" com uma URL padrão ou personalizada baseada no id
        usuario.foto = `http://localhost:3000/usuario/foto/${usuario.id}`;

        // Log para depuração
        console.log("resultado detalhar BD", usuario);

        return resolve(usuario); // Resolve a promessa com o resultado
      } else {
        // Se a consulta for bem-sucedida e não houver resultado da busca
        return resolve(null); // Resolve a promessa com null se não houver resultado
      }
    });
  });
}

module.exports = { detalharUsuario };
