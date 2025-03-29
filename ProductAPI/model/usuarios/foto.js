const dbconn = require("../../configurations/database");

function obterImagemUsuario(id) {
    return new Promise((resolve, reject) => {
        dbconn.query('CALL imagemUsuario(?)', [id], (error, results) => {
            if (error) {
                console.error('Erro ao consultar a imagem do usuario: ', error.message);
                return reject(error);
            }

            // Acesse corretamente a imagem
            const imagem = results[0] && results[0][0] ? results[0][0]?.foto : null;

            if (imagem === null) {
                dbconn.query('CALL imagemDefault(?)', [2], (errorPadrao, resultadoImagemPadrao) => {
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


module.exports = { obterImagemUsuario }