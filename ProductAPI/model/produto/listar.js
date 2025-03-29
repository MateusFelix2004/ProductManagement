const dbconn = require("../../configurations/database");

// Função para listar produtos
function listarProdutos() {
    return new Promise((resolve, reject) => {
        // Executa a consulta SQL para listar produtos no banco de dados
        dbconn.query('CALL listarProdutos()', (error, results) => {
            if (error) {
                console.error('Erro ao listar produtos: ', error.message);
                return reject(error); // Rejeita a promessa em caso de erro
            }

            // Modifica os resultados para adicionar o campo "imagem"
            const produtosModificados = results[0].map(produto => ({
                ...produto,
                foto: `http://localhost:3000/produto/foto/${produto.id}` // Altere a URL conforme necessário
            }));

            resolve(produtosModificados); // Resolve a promessa com os produtos modificados
        });
    });
}

module.exports = { listarProdutos };
