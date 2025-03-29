const dbconn = require("../../configurations/database");

// Função para excluir um produto existente
function excluirProduto(id) {
    return new Promise((resolve, reject) => {
        // Consulta para excluir o produto
        console.log(typeof id)
        dbconn.query('CALL ExcluirProduto(?)', [id], (error, result) => {
            if (error) {
                // Se houver um erro na consulta ao banco de dados
                console.log('Erro ao processar o comando SQL. ', error.message);
                return reject(error); // Rejeita a promessa em caso de erro
            }

            // Se a exclusão for bem-sucedida
            return resolve(true); // Resolve a promessa com sucesso
        });
    });
}

module.exports = { excluirProduto };
