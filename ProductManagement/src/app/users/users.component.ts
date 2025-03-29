import { Component } from '@angular/core';
import { Usuarios } from './usuarios';
import { Route, Router, RouterLink } from '@angular/router';
import { CommonModule } from '@angular/common';
import { NetworkService } from '../network.service';

@Component({
  selector: 'app-users',
  standalone: true,
  imports: [RouterLink, CommonModule],
  templateUrl: './users.component.html',
  styleUrls: ['./users.component.css'] // Corrigido para styleUrls
})
export class UsersComponent {
  usuarios: Usuarios[] = [];
  id: number | null = null;
  permissao: number | null = null;

  constructor(private rede: NetworkService, private router: Router) {}

  async ngOnInit(): Promise<void> {
    this.usuarios = await this.rede.listarUsuarios();
    this.id = Number(localStorage.getItem('id'));

    const permissaoStr = localStorage.getItem('permissao');
    this.permissao = permissaoStr ? Number(permissaoStr) : null; // Converte para número

    if(this.permissao != 1){

      this.router.navigate(['/']);

    }

  }

  async excluir(id: number): Promise<void> {
    await this.rede.excluirUsuario(id);
    this.usuarios = await this.rede.listarUsuarios(); // Atualiza a lista após excluir
  }
}
