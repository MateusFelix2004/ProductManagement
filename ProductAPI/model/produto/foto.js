const dbconn = require("../../configurations/database");

function obterImagem(id) {
    return new Promise((resolve, reject) => {
        dbconn.query('CALL imagemProduto(?)', [id], (error, results) => {
            if (error) {
                console.error('Erro ao consultar a imagem do produto: ', error.message);
                return reject(error);
            }

            // Acesse corretamente a imagem
            const imagem = results[0] && results[0][0] ? results[0][0]?.foto : null;

            if (imagem === null) {
                dbconn.query('CALL imagemDefault(?)', [1], (errorPadrao, resultadoImagemPadrao) => {
                    if (errorPadrao) {
                        console.error('Erro ao consultar a imagem padrão: ', errorPadrao.message);
                        return reject(errorPadrao);
                    }
                    resolve(resultadoImagemPadrao[0][0]?.foto || null);
                });
            } else {
                resolve(imagem); // Retorna a imagem do produto
            }
        });
    });
}


module.exports = { obterImagem }