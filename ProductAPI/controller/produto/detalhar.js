const { modeloProduto } = require('../../model/models.js');
const { validarNumeroInteiro } = require('../../utils/validacoes.js');

// Função responsável por detalhar um produto
async function detalharProduto(req, res) {
    const id = req.params.id; // Obtém o ID do produto da URL da requisição

    // Valida se a ID é um número inteiro
    if (validarNumeroInteiro(id)) {

        // Chama o modelo para obter os detalhes do produto
        const produto = await modeloProduto.detalharProduto(id);

        // Se o produto não for encontrado, retorna uma mensagem informando
        if (produto) {
            return res.status(200).json(produto);
        } else {
            return res.status(404).json({
                mensagemErro: 'Produto não encontrado.'
            });
        }

    } else {
        return res.status(400).json({
            mensagemErro: 'ID inválido. A ID deve ser um número inteiro.'
        });
    }
}

module.exports = { detalharProduto };
