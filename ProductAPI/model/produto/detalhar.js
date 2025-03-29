const dbconn = require("../../configurations/database");

// Função para detalhar um produto existente
function detalharProduto(id) {
    return new Promise((resolve, reject) => {
        // Consulta para obter os detalhes do produto
        dbconn.query('CALL detalheProduto(?)', [id], (error, result) => {
            if (error) {
                // Se houver um erro na consulta ao banco de dados
                console.log('Erro ao processar o comando SQL. ', error.message);
                return reject(error); // Rejeita a promessa em caso de erro
            }

            // Se a consulta for bem-sucedida
            const produto = result[0][0]; // Acessa o primeiro resultado
            if (produto) {
                // Adiciona o campo "foto"
                produto.foto = `http://localhost:3000/produto/foto/${produto.id}`;
                resolve(produto); // Resolve a promessa com o produto detalhado
            } else {
                resolve(null); // Se não houver produto, resolve com null
            }
        });
    });
}

module.exports = { detalharProduto };
