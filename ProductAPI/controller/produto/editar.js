const { modeloProduto } = require('../../model/models.js');
const { validarNumeroInteiro, validarPreco, validarNome, validarFoto } = require('../../utils/validacoes.js')

// Função que edita um produto
async function editarProduto(req, res) {
    const id = req.params.id
    const { nome, preco } = req.body; 
    const foto = req.file ? req.file.buffer : null;

    console.log(id)
  
    // Faz a validação da ID (tem que ser um número inteiro)
    if (validarNumeroInteiro(id)) {   
        
        // Faz a validação do nome (não pode estar vazio)
        if (validarNome(nome)) {
    
            // Faz a validação do preço
            if (Number(preco) >= 0) {

                // Verifica se a foto foi enviada e se é válida
                if (await validarFoto(foto) || foto == null) {

                    // Passa o arquivo diretamente para o modelo
                    const edicaoProduto = await modeloProduto.editarProduto(id, nome, preco, foto);

                    if (edicaoProduto) {
                        // Se o produto foi editado com sucesso.
                        return res.status(200).json({ mensagem: 'Produto editado com sucesso.' });
                    } else {
                        // Se o produto não foi editado com sucesso.
                        return res.status(400).json({ mensagemErro: 'Não foi possível editar o produto.' });
                    }

                } else {
                    return res.status(400).json({ mensagemErro: 'A foto enviada não é válida.' });
                }
                
            } else {
                return res.status(400).json({ mensagemErro: 'O preço fornecido é um valor inválido.' });
            }
    
        } else {
            return res.status(400).json({ mensagemErro: 'O nome não pode ser vazio.' });
        }
        
    } else {
        return res.status(400).json({ mensagemErro: 'Não foi possível identificar o item a ser editado.' });
    }
}

module.exports = { editarProduto };
