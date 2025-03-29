const dbconn = require('../../configurations/database.js'); // Importa o módulo de conexão com o banco de dados.


// Função para editar o nome e email de um usuário
function atualizarFotoUsuario(id, foto) {

  return new Promise((resolve, reject) => {

    dbconn.query('CALL atualizarFotoUsuario(?, ?)', [id, foto], (error, rows) => {

      if (error) {

        // Se houver um erro na consulta ao banco de dados
        console.log('Erro ao processar o comando SQL. ', error.message);
        return reject(error); // Rejeita a promessa em caso de erro

      } else {

        // Se a consulta for bem-sucedida
        return resolve(true); // Resolve a promessa com verdadeiro indicando sucesso

      }

    });

  });

}

module.exports = { atualizarFotoUsuario };