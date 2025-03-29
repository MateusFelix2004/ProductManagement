# Protótipo de Sistema de Gerenciamento de Produtos

Este é um protótipo de aplicação web desenvolvido como parte da disciplina **Desenvolvimento Web Backend**. A aplicação foi criada apenas para fins didáticos, com o objetivo de obter a nota da segunda etapa da disciplina. A implementação utiliza **Angular** para o front-end e **Node.js** para a API backend, além de integração com **MySQL**. O projeto implementa um sistema CRUD para gerenciamento de produtos e usuários com permissões diferenciadas. Não deve ser utilizado em produção.

---

## Passo a Passo para Executar a Aplicação Web

### **1. Configurando a Base de Dados**

1. Suba o servidor de banco de dados **MySQL**.
2. No painel do MySQL, selecione a opção de "importar" para criar o banco de dados, tabelas e procedimentos necessários para o funcionamento da aplicação.
3. Ao clicar em "importar", selecione o arquivo `productmanagement.sql`, localizado na pasta `configurations`, dentro da pasta da API (`ProductAPI`).
4. Clique em "importar" na parte inferior da página para concluir a criação do banco de dados.

### **2. Configurando a API**

1. Abra o terminal e navegue até a pasta `ProductAPI`.
2. Execute o comando `npm install` para instalar as dependências do backend.
3. Após instalar as dependências, execute o arquivo `app.js` existente na pasta `ProductAPI`.
   
Agora a API e o banco de dados devem estar funcionando localmente.

### **3. Configurando o Front-End**

1. Certifique-se de ter o **Angular/CLI** instalado.
2. Navegue até a pasta `ProductManagement` no terminal.
3. Execute o comando `npm install` para instalar as dependências do front-end.
4. Após instalar as dependências, execute o comando `ng serve -o` para iniciar a aplicação, que será aberta automaticamente no navegador.

Agora, a aplicação deve estar funcionando localmente.

### **4. Credenciais de Acesso**

Para acessar a aplicação, use as seguintes credenciais:

#### Usuário Administrador (permissão para criar e excluir usuários, adicionar e editar produtos):
- **E-MAIL:** admin@loja.com
- **SENHA:** 1234

#### Usuário Comum (permissão para adicionar e editar produtos):
- **E-MAIL:** gerente@loja.com
- **SENHA:** 1234

---

**Observação:** Este projeto foi desenvolvido como parte de um trabalho acadêmico e não deve ser usado em ambientes de produção. Seu único objetivo é servir como uma aplicação de protótipo para fins de aprendizado e avaliação na disciplina de **Desenvolvimento Web Backend**.
