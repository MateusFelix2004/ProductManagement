import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { InterfaceService } from './interface.service';
import { Product } from './products/product';
import { Router } from '@angular/router';
import { timeout } from 'rxjs/operators';
import { Credenciais } from './login/credenciais';
import { Usuarios } from './users/usuarios';

@Injectable({
  providedIn: 'root'
})
export class NetworkService {

  token: string = '';
  
  constructor(
    private http: HttpClient, 
    private graphics: InterfaceService,
    private router: Router
  ) {
    this.atualizarToken(); // Atualiza o token ao inicializar
  }

  endpoint: string = 'http://localhost:3000';

  // Função para exibir mensagem de acordo com o status e mensagem da resposta
  private exibirMensagem(status: number, responseBody?: any): void {
    const mensagem = responseBody?.mensagem || responseBody?.mensagemErro || '';
    this.graphics.exibirMensagem(status, mensagem);
  }

  // Atualiza o token com base no localStorage
  private atualizarToken(): void {
    this.token = localStorage.getItem('token') || '';
  }

  // Login
  async login(email: string, senha: string): Promise<Credenciais | undefined> {
    this.graphics.setCarregando(true); // Inicia o carregamento
    try {
      const response: any = await this.http.post(`${this.endpoint}/login`, { email, senha }, { observe: 'response' }).toPromise();
      if (response.status === 200) {
        return { token: response.body.token, id: response.body.id, permissao: response.body.permissao};
      }
    } catch (error: any) {
      console.error('Erro no login:', error);
      this.exibirMensagem(error.status, error.error);
    } finally {
      this.graphics.setCarregando(false); // Finaliza o carregamento
    }
    return undefined;
  }

  async listarProdutos(): Promise<Product[]> {
    console.log('token antes de atualizar: '+ this.token)

    this.atualizarToken(); // Atualiza o token antes da requisição
    console.log('token depois de atualizar: '+ this.token)

    this.graphics.setCarregando(true); // Inicia o carregamento
    try {
      const headers = new HttpHeaders().set('Authorization', `Bearer ${this.token}`);
      const response = await this.http.get<Product[]>(`${this.endpoint}/produtos`, { headers, observe: 'response' }).toPromise();
  
      // Verifica se a resposta é válida
      if (response) {
        if (response.status >= 400) {
          // Exibe mensagem apenas se for erro (400 ou 500)
          this.exibirMensagem(response.status, response.body);
        }
        return response.body || []; // Retorna a lista de produtos ou um array vazio
      } else {
        return []; // Retorna um array vazio se não houver produtos
      }
    } catch (error: any) {
      console.error('Erro ao listar produtos:', error);
      this.exibirMensagem(error.status, error.error); // Exibe mensagem de erro
      return []; // Retorna uma lista vazia em caso de erro
    } finally {
      this.graphics.setCarregando(false); // Finaliza o carregamento
    }
  }

  // Detalhar um produto específico
  async detalharProduto(id: number): Promise<Product | null> {
    this.atualizarToken(); // Atualiza o token antes da requisição
    this.graphics.setCarregando(true); // Inicia o carregamento
    try {
      const headers = new HttpHeaders().set('Authorization', `Bearer ${this.token}`);
      const response: any = await this.http.get(`${this.endpoint}/produtos/${id}`, { headers, observe: 'response' }).toPromise();
      
      if (response.body) {
        return response.body; // Retorna o produto
      }
      return null; // Retorna null se não houver produto
    } catch (error: any) {
      console.error('Erro ao detalhar produto:', error);
      this.exibirMensagem(error.status, error.error);
      return null; // Retorna null em caso de erro
    } finally {
      this.graphics.setCarregando(false); // Finaliza o carregamento
    }
  }

  // Excluir um produto específico
  async excluirProduto(id: number | null): Promise<void> {
    this.atualizarToken(); // Atualiza o token antes da requisição
    this.graphics.setCarregando(true); // Inicia o carregamento
    console.log(id);
    try {
      const headers = new HttpHeaders().set('Authorization', `Bearer ${this.token}`);
      const response: any = await this.http.delete(`${this.endpoint}/produtos/${String(id)}`, { headers, observe: 'response' }).toPromise();

      // Verifica se a exclusão foi bem-sucedida
      if (response.status >= 200 && response.status < 300) {
        console.log('Produto excluído com sucesso.');
        this.router.navigate(['/products'])
        this.exibirMensagem(response.status, response.body);
      } else {
        this.exibirMensagem(response.status, response.body);
      }
    } catch (error: any) {
      console.error('Erro ao excluir produto:', error);
      this.exibirMensagem(error.status, error.error);
    } finally {
      this.graphics.setCarregando(false); // Finaliza o carregamento
    }
  }

  // Adicionar um novo produto
  async adicionarProduto(nome: string, preco: number, foto: File | null): Promise<void> {
    this.atualizarToken(); // Atualiza o token antes da requisição
    this.graphics.setCarregando(true); // Inicia o carregamento
    try {
      const formData = new FormData();
      formData.append('nome', nome);
      formData.append('preco', String(preco));
      
      // Verifica se a foto não é null antes de adicioná-la
      if (foto) {
        formData.append('foto', foto);
      }

      const headers = new HttpHeaders().set('Authorization', `Bearer ${this.token}`);

      // Adiciona timeout (ex: 10 segundos)
      const response: any = await this.http.post(`${this.endpoint}/produtos`, formData, { headers, observe: 'response' })
        .pipe(timeout(10000)) // 10 segundos
        .toPromise();
      
      console.log('Produto adicionado:', response.body);
      this.exibirMensagem(response.status, response.body);

      // Redireciona se o status estiver na faixa de >= 200 e < 300
      if (response.status >= 200 && response.status < 300) {
        this.router.navigate(['/products']);
        this.exibirMensagem(response.status, response.body)
      }
    } catch (error: any) {
      console.error('Erro ao adicionar produto:', error);
      this.exibirMensagem(error.status, error.error);
    } finally {
      this.graphics.setCarregando(false); // Finaliza o carregamento
    }
  }

  // Editar um produto existente
  async editarProduto(id: number, nome: string, preco: number, foto: File | null): Promise<void> {
    this.atualizarToken(); // Atualiza o token antes da requisição
    this.graphics.setCarregando(true); // Inicia o carregamento
    try {
      const formData = new FormData();
      formData.append('nome', nome);
      formData.append('preco', String(preco));
      
      // Adiciona a foto somente se não for null
      if (foto) {
        formData.append('foto', foto);
      }

      const headers = new HttpHeaders().set('Authorization', `Bearer ${this.token}`);
      const response: any = await this.http.put(`${this.endpoint}/produtos/${id}`, formData, { headers, observe: 'response' }).toPromise();
      console.log('Produto editado:', response.body);
      this.exibirMensagem(response.status, response.body);
    } catch (error: any) {
      console.error('Erro ao editar produto:', error);
      this.exibirMensagem(error.status, error.error);
    } finally {
      this.graphics.setCarregando(false); // Finaliza o carregamento
    }
  }

  // Listar estoque
  async listarEstoque(): Promise<void> {
    this.atualizarToken(); // Atualiza o token antes da requisição
    this.graphics.setCarregando(true); // Inicia o carregamento
    try {
      const headers = new HttpHeaders().set('Authorization', `Bearer ${this.token}`);
      const response: any = await this.http.get(`${this.endpoint}/estoque`, { headers, observe: 'response' }).toPromise();
      console.log('Estoque:', response.body);
      this.exibirMensagem(response.status, response.body);
    } catch (error: any) {
      console.error('Erro ao listar estoque:', error);
      this.exibirMensagem(error.status, error.error);
    } finally {
      this.graphics.setCarregando(false); // Finaliza o carregamento
    }
  }

  // Editar o estoque de um produto
  async editarEstoque(id: number, quantidade: number): Promise<void> {
    this.atualizarToken(); // Atualiza o token antes da requisição
    this.graphics.setCarregando(true); // Inicia o carregamento
    try {
      const headers = new HttpHeaders().set('Authorization', `Bearer ${this.token}`);
      const response: any = await this.http.put(`${this.endpoint}/estoque/${id}`, { quantidade }, { headers, observe: 'response' }).toPromise();
      console.log('Estoque editado:', response.body);
      this.exibirMensagem(response.status, response.body);
    } catch (error: any) {
      console.error('Erro ao editar estoque:', error);
      this.exibirMensagem(error.status, error.error);
    } finally {
      this.graphics.setCarregando(false); // Finaliza o carregamento
    }
  }

  async listarUsuarios(): Promise<Usuarios[]> { // Altere 'any[]' para o tipo correto, se disponível
    this.atualizarToken(); // Atualiza o token antes da requisição
    this.graphics.setCarregando(true); // Inicia o carregamento
    try {
      const headers = new HttpHeaders().set('Authorization', `Bearer ${this.token}`);
      const response = await this.http.get<any[]>(`${this.endpoint}/usuarios`, { headers, observe: 'response' }).toPromise();
  
      // Verifica se a resposta é válida
      if (response) {
        if (response.status >= 400) {
          // Exibe mensagem apenas se for erro (400 ou 500)
          this.exibirMensagem(response.status, response.body);
        }
        return response.body || []; // Retorna a lista de usuários ou um array vazio
      } else {
        return []; // Retorna um array vazio se não houver usuários
      }
    } catch (error: any) {
      console.error('Erro ao listar usuários:', error);
      this.exibirMensagem(error.status, error.error); // Exibe mensagem de erro
      return []; // Retorna uma lista vazia em caso de erro
    } finally {
      this.graphics.setCarregando(false); // Finaliza o carregamento
    }
  }

  // Detalhar um usuário específico
  async detalharUsuario(id: number): Promise<Usuarios | null> {
    this.atualizarToken(); // Atualiza o token antes da requisição
    this.graphics.setCarregando(true); // Inicia o carregamento
    try {
      const headers = new HttpHeaders().set('Authorization', `Bearer ${this.token}`);
      const response: any = await this.http.get(`${this.endpoint}/usuarios/${id}`, { headers, observe: 'response' }).toPromise();
      
      if (response.body) {
        return response.body; // Retorna o usuário
      }
      return null; // Retorna null se não houver usuário
    } catch (error: any) {
      console.error('Erro ao detalhar usuário:', error);
      this.exibirMensagem(error.status, error.error);
      return null; // Retorna null em caso de erro
    } finally {
      this.graphics.setCarregando(false); // Finaliza o carregamento
    }
  }

 // Atualizar um usuário existente
async atualizarUsuario(id: number, foto: File | null): Promise<void> {
  this.atualizarToken(); // Atualiza o token antes da requisição
  this.graphics.setCarregando(true); // Inicia o carregamento
  try {
    const formData = new FormData();
    
    // Adiciona a ID ao FormData
    formData.append('id', String(id));
    
    // Adiciona a foto somente se não for null
    if (foto) {
      formData.append('foto', foto);
    }

    const headers = new HttpHeaders().set('Authorization', `Bearer ${this.token}`);
    const response: any = await this.http.put(`${this.endpoint}/usuarios/${id}`, formData, { headers, observe: 'response' }).toPromise();
    
    console.log('Usuário atualizado:', response.body);
    this.exibirMensagem(response.status, response.body); // Exibe a mensagem de sucesso
  } catch (error: any) {
    console.error('Erro ao atualizar usuário:', error);
    this.exibirMensagem(error.status, error.error); // Exibe a mensagem de erro
  } finally {
    this.graphics.setCarregando(false); // Finaliza o carregamento
  }
}

  async adicionarUsuario(email: string, senha: string): Promise<void> {
    this.atualizarToken(); // Atualiza o token antes da requisição
    this.graphics.setCarregando(true); // Inicia o carregamento
    try {
      const headers = new HttpHeaders().set('Authorization', `Bearer ${this.token}`);
      const body = { email, senha };
  
      const response: any = await this.http.post(`${this.endpoint}/usuarios`, body, { headers, observe: 'response' }).toPromise();
      
      console.log('Usuário adicionado:', response.body);
      this.exibirMensagem(response.status, response.body);
      
      // Redireciona se o status estiver na faixa de >= 200 e < 300
      if (response.status >= 200 && response.status < 300) {
        this.router.navigate(['/users']);
      }
    } catch (error: any) {
      console.error('Erro ao adicionar usuário:', error);
      this.exibirMensagem(error.status, error.error); // Exibe mensagem de erro
    } finally {
      this.graphics.setCarregando(false); // Finaliza o carregamento
    }
  }
  

  async excluirUsuario(id: number): Promise<void> {
    this.atualizarToken(); // Atualiza o token antes da requisição
    this.graphics.setCarregando(true); // Inicia o carregamento
    try {
      const headers = new HttpHeaders().set('Authorization', `Bearer ${this.token}`);
      const response: any = await this.http.delete(`${this.endpoint}/usuarios/${id}`, { headers, observe: 'response' }).toPromise();
  
      // Verifica se a exclusão foi bem-sucedida
      if (response.status === 204) {
        console.log('Usuário excluído com sucesso.');
        this.exibirMensagem(response.status, response.responseBody);
      } else {
        this.exibirMensagem(response.status, response.body);
      }
    } catch (error: any) {
      console.error('Erro ao excluir usuário:', error);
      this.exibirMensagem(error.status, error.error); // Exibe mensagem de erro
    } finally {
      this.graphics.setCarregando(false); // Finaliza o carregamento
    }
  }
  
  
}
