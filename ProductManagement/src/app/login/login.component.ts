import { Component } from '@angular/core';
import { AuthService } from '../auth.service';
import { NetworkService } from '../network.service';
import { Credenciais } from './credenciais';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [],
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent {

  constructor(private auth: AuthService, private rede: NetworkService, private router: Router) {


    let token: string | null = localStorage.getItem('token');
    let id: string | null = localStorage.getItem('id');
    let permissao: string | null = localStorage.getItem('permissao');

    if(token && id && permissao){

      this.router.navigate(['/'])

    }

  }

  async login(email: string, senha: string): Promise<void> {

    let credenciais: Credenciais | undefined = await this.rede.login(email, senha);

    if(credenciais){

      this.auth.setTokenPermissao(credenciais.token, credenciais.id, credenciais.permissao);

    }

  }
}
