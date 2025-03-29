const { modeloProduto } = require('../../model/models.js');

const { validarPreco, validarNome, validarFoto } = require('../../utils/validacoes.js')

// Função que adiciona um novo produto
async function adicionarProduto(req, res){

  const { nome, preco } = req.body; 
  const foto = req.file ? req.file.buffer : null;

  console.log(foto)
  console.log('preço ' + preco)

    // Faz a validação do nome (não pode estar vazio)
    if(validarNome(nome)){
  
      // Faz a validação do preço
      if(Number(preco) >= 0){

        if(await validarFoto(foto) || foto == null){

          const addProduto = modeloProduto.adicionarProduto(nome, preco, foto);

          if(addProduto){

            // Se o produto for adicionado com sucesso
            return res.status(200).json({ mensagem: 'Produto adicionado com sucesso!' });

          } else {

            // Se o produto não for adicionado com sucesso
            return res.status(400).json({ mensagemErro: 'Não foi possível adicionar o produto.' });

          }

        }
          
      } else {

        console.log(validarPreco(preco))
        console.log(Number(preco))
  
        // Se o preço for inválido
        return res.status(400).json({ mensagemErro: 'O preço fornecido é um valor inválido.' });
  
      }
  
    } else {
      
      // Se o nome for inválido
      return res.status(400).json({ mensagemErro: 'O nome não pode ser vazio.' });
  
    }
    
  }
  
  module.exports = { adicionarProduto }