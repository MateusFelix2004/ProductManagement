import { Component, OnInit } from '@angular/core';
import { NetworkService } from '../network.service';
import { Usuarios } from '../users/usuarios';

@Component({
  selector: 'app-settings',
  standalone: true,
  imports: [],
  templateUrl: './settings.component.html',
  styleUrls: ['./settings.component.css']
})
export class SettingsComponent implements OnInit {
  id: string | null = null
  user: Usuarios | null = null; // Usando a interface Usuario
  foto: File | null = null;

  constructor(private rede: NetworkService) {}

  ngOnInit(): void {

    this.id = localStorage.getItem('id');

    this.obterDetalhesDoUsuario(); // Obtém os detalhes do usuário ao inicializar

  }

  private async obterDetalhesDoUsuario(): Promise<void> {
    try {
      this.user = await this.rede.detalharUsuario(Number(this.id)); // Chama o método para obter os detalhes do usuário
    } catch (error) {
      console.error('Erro ao obter detalhes do usuário:', error);
    }
  }
  // Atualiza a imagem e a variável foto
  previewImage(event: Event): void {
    const input = event.target as HTMLInputElement;
    if (input.files && input.files[0]) {
      this.foto = input.files[0]; // Atribui o arquivo à variável foto
      const reader = new FileReader();
      reader.onload = (e) => {
        const imagePreview = document.getElementById('image-preview') as HTMLElement;
        imagePreview.style.backgroundImage = `url(${e.target?.result})`; // Atualiza a visualização da imagem
      };
      reader.readAsDataURL(input.files[0]); // Lê o arquivo como URL
    }
  }

  async salvar(): Promise<void> {
    if (this.user) {
      // Lógica para salvar as alterações
      // Chame um método no NetworkService para enviar as alterações para a API
      await this.rede.atualizarUsuario(this.user.id, this.foto);
    } else {
      console.error('Usuário não carregado.');
    }
  }
}
