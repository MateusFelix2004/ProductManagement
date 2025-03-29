const { modeloEstoque } = require('../../model/models.js');

async function listarEstoque(req, res) {
  try {
    console.log('Chamando listarEstoque no modelo...');
    const listaEstoque = await modeloEstoque.listarEstoque();

    if (listaEstoque && listaEstoque.length === 0) {
      console.log('Nenhum produto no estoque.');
      return res.status(200).json({ mensagem: 'Nenhum produto no estoque.' });
    }

    console.log('Estoque retornado:', listaEstoque);
    return res.status(200).json(listaEstoque);

  } catch (error) {
    console.error('Erro ao listar estoque:', error);
    return res.status(500).json({ mensagemErro: 'Erro interno do servidor.' });
  }
}


module.exports = { listarEstoque };
