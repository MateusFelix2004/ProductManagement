const { modeloProduto } = require('../../model/models.js');

// Função responsável por listar todos os produtos
async function listarProdutos(req, res) {
    try {
        // Chama o modelo para obter a lista de produtos
        const listaProdutos = await modeloProduto.listarProdutos();

        // Se a lista estiver vazia, retorna uma mensagem informando
        if (listaProdutos.length === 0) {
            return res.status(200).json({
                mensagem: 'Nenhum produto encontrado.'
            });
        }

        // Se houver produtos, retorna apenas a lista
        return res.status(200).json(listaProdutos);
        
    } catch (erro) {
        // Tratamento de erro caso algo ocorra durante o processo
        console.log(erro)
        return res.status(500).json({ mensagemErro: 'Erro ao listar os produtos.'});
    }
}

module.exports = { listarProdutos };
