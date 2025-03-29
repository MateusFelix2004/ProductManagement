const validator = require('validator'); // Importa o módulo validator
const fileType = require('file-type');

// Função para verificar se um email é válido
function validarEmail(email) {

    return validator.isEmail(email); // Usa o método isEmail do validator

}

// Função para verificar se um nome é válido
function validarNome(nome) {

    // Verifica se o nome não é nulo, não é undefined e não é uma string vazia
    return typeof nome == 'string' && nome.trim().length > 0;

}

// Função para verificar se um parâmetro é um número inteiro e positivo
function validarNumeroInteiro(numero) {
    // Verifica se o número é um inteiro e se é maior que zero
    return Number.isInteger(Number(numero)) && Number(numero) > 0;
}

function validarPreco(value) {
    return typeof value === 'number' && !isNaN(value) && value >= 0;
}

// Função para validar o tipo de arquivo da foto
async function validarFoto(buffer) {
    // Verifica se o buffer está presente
    if (!buffer) return false;

    // Usa file-type para detectar o tipo a partir do buffer
    const type = await fileType.fromBuffer(buffer);

    const validImageTypes = ['image/jpeg', 'image/png', 'image/webp'];

    // Verifica se o tipo é válido
    return type && validImageTypes.includes(type.mime);
}
module.exports = { 
    validarEmail, 
    validarNome, 
    validarNumeroInteiro, 
    validarPreco, 
    validarFoto
};