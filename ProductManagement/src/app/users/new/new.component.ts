import { Component } from '@angular/core';
import { RouterLink } from '@angular/router';
import { NetworkService } from '../../network.service';

@Component({
  selector: 'app-new',
  standalone: true,
  imports: [RouterLink],
  templateUrl: './new.component.html',
  styleUrl: './new.component.css'
})
export class NewComponent {

  email: string = '';

  senha: string = '';

  constructor(private rede: NetworkService) {}

  async adicionar(): Promise<void> {

    await this.rede.adicionarUsuario(this.email, this.senha)

  }

}
