import { Injectable, Injector } from '@angular/core';
import { Router } from '@angular/router';
import { NetworkService } from './network.service';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private network!: NetworkService;

  // Usando BehaviorSubject para armazenar e emitir o estado de autenticação
  private autenticadoSubject = new BehaviorSubject<boolean>(false);
  private tokenSubject = new BehaviorSubject<string>('');
  private idSubject = new BehaviorSubject<number | null>(null);
  private permissaoSubject = new BehaviorSubject<number | null>(null);

  autenticado$ = this.autenticadoSubject.asObservable();
  token$ = this.tokenSubject.asObservable();
  id$ = this.idSubject.asObservable();
  permissao$ = this.permissaoSubject.asObservable();

  constructor(private router: Router, private injector: Injector) {}

  async login(email: string, senha: string) {
    if (!this.network) {
      this.network = this.injector.get(NetworkService);
    }

    const credenciais = await this.network.login(email, senha);

    if (credenciais) {
      this.setTokenPermissao(credenciais.token, credenciais.id, credenciais.permissao);
    }
  }

  logout(): void {

      localStorage.removeItem('token');
      localStorage.removeItem('id');
      localStorage.removeItem('permissao');
      this.autenticadoSubject.next(false);
      this.tokenSubject.next('');
      this.idSubject.next(null);
      this.permissaoSubject.next(null);

      console.log('Deslogado');
      this.router.navigate(['/login']);
   
  }
  setTokenPermissao(token: string, id: number, permissao: number): void {
    localStorage.setItem('token', token);
    localStorage.setItem('id', String(id));
    localStorage.setItem('permissao', String(permissao));
  
    this.tokenSubject.next(token);
    this.idSubject.next(id);
    this.permissaoSubject.next(permissao);
    this.autenticadoSubject.next(true);
  
    console.log('Token e permissão foram definidos:', { token, permissao });
  
    // Verifica se a rota atual é '/login'
    if (this.router.url === '/login') {
      Promise.resolve().then(() => {
        this.router.navigate(['/']); // Redireciona para a home
      });
    }
  }
  
  
}
