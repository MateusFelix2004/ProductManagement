const { modeloEstoque } = require('../../model/models.js')

const { validarNumeroInteiro } = require('../../utils/validacoes.js')

// Função que adiciona um novo produto
async function editarEstoque(req, res){

    const id = req.body.id
    const quantidade = req.body.quantidade;  // Obtém a nova quantidade do corpo da requisição.
  
    // Faz a validação da ID (tem que ser um número inteiro)
    if(validarNumeroInteiro(id)){   
        
        if(validarNumeroInteiro(quantidade)){

            const edicaoEstoque = await modeloEstoque.editarEstoque(id, quantidade);

            if(edicaoEstoque){

                return res.status(200).json({ mensagem: 'Estoque atualizado com sucesso!.' });

            } else {

                return res.status(400).json({ mensagemErro: 'Não foi possível atualizar o estoque.' });

            }

        } else {

            // Se a quantidade for inválida
            return res.status(400).json({ mensagemErro: 'Quantidade inválida.' });

        }
        
    } else {

        // Se a ID for inválida
        return res.status(400).json({ mensagemErro: 'Não foi possível identificar o item a ser editado.' });

    }
}
  module.exports = { editarEstoque }