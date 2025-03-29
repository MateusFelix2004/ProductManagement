const { modeloUsuario } = require('../../model/models.js');
const { validarNumeroInteiro } = require('../../utils/validacoes.js');

// Função que obtém a foto de um produto
async function obterFotoUsuario(req, res) {

    const id = req.params.id; // Obtém a ID do produto na URL da requisição

    // Valida se o ID é um número inteiro
    if (validarNumeroInteiro(id)) {

        const foto = await modeloUsuario.obterImagemUsuario(id); // Busca o produto, incluindo a foto

        if (foto) {
            // Se a foto foi encontrada, define o tipo de conteúdo e retorna a imagem
            res.set('Content-Type', 'image/jpeg'); // Ajuste conforme o tipo de imagem (jpeg, png, etc.)
            return res.status(200).send(foto); // Envia diretamente o blob da foto
        } else {
            // Se o produto não foi encontrado ou não tem foto
            return res.status(404).json({ mensagemErro: 'Foto do usuário não encontrada.' });
        }

    } else {
        // Se a ID for inválida ou algum outro erro, retorna uma mensagem genérica
        return res.status(400).json({ mensagemErro: 'Requisição inválida. Verifique a ID do usuário.' });
    }
}

module.exports = { obterFotoUsuario };
