const { modeloUsuario } = require('../../model/models.js'); // Importa o modelo de usuário
const { validarNumeroInteiro, validarFoto } = require('../../utils/validacoes.js'); // Importa validações
const { verificaEmailBD } = require('../../model/usuarios/email.js'); // Verifica se o email já existe

// Função que edita a foto de um usuário
async function editarUsuario(req, res) {
    const id = req.params.id; // Obtém a ID do usuário alvo da edição
    const foto = req.file ? req.file.buffer : null; // Obtém a nova foto, se enviada

    // Se o ID passado for válido (é número inteiro)
    if (validarNumeroInteiro(id)) {
        
        // Verifica se a foto foi enviada e se é válida
        if (await validarFoto(foto) || foto == null) {
            
            const resultadoEdicao = await modeloUsuario.atualizarFotoUsuario(id, foto);

            if (resultadoEdicao) {
                // Se os dados forem atualizados com sucesso
                return res.status(200).json({ mensagem: 'A foto de perfil foi atualizada.' });
            } else {
                // Se ocorrer um erro na atualização
                return res.status(500).json({ mensagemErro: 'Erro interno do servidor. Tente novamente mais tarde.' });
            }

        } else {
            return res.status(400).json({ mensagemErro: 'A foto enviada não é válida.' });
        }

    } else {
        // Se o ID passado for inválido (não é número inteiro)
        return res.status(400).json({ mensagemErro: 'Requisição inválida.' });
    }
}

module.exports = { editarUsuario };
