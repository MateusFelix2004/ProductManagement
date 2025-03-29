const { validarNumeroInteiro } = require('../../utils/validacoes.js'); // Importa o módulo de validação de número inteiro.

// Função responsável por realizar a exclusão de um usuário
async function excluirProduto(req, res){

    const id = req.params.id // Obtém do corpo da requisição o ID do usuário a ser excluído

    // Se o ID passado for válido (é número inteiro)
    if(validarNumeroInteiro(id)){

        console.log(req.params.id)
        const reusltadoExclusao = await modeloProduto.excluirProduto(id);

        // Se o usuário for excluído com sucesso
        if(reusltadoExclusao){

            return res.status(200).json({ mensagem: 'Produto excluído com sucesso.' });

        } else {

            // Se ocorrer uma falha na exclusão
            return res.status(404).json({ mensagemErro: 'Não foi possivel excluir o produto.' });

        }

    } else {

        // Se o ID passado for inválido (não é número inteiro)
        return res.status(400).json({ mensagemErro: 'Requisição inválida.' });

    }
}

module.exports = { excluirProduto }