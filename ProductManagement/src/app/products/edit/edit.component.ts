import { Component, OnInit, AfterViewInit } from '@angular/core';
import { ActivatedRoute, RouterLink } from '@angular/router';
import { NetworkService } from '../../network.service';
import { Product } from '../product';

declare var M: any;  // Declare o objeto global Materialize para evitar erros

@Component({
  selector: 'app-edit',
  standalone: true,
  imports: [RouterLink],
  templateUrl: './edit.component.html',
  styleUrls: ['./edit.component.css']
})
export class EditComponent implements OnInit, AfterViewInit {
  id: number = 0; // Inicializa como zero
  produto: Product | null = null; // Inicializa como null para evitar erros
  preco: number = 0; // Inicializa a variável preco
  foto: File | null = null;

  constructor(private rede: NetworkService, private route: ActivatedRoute) {}

  ngOnInit(): void {
    this.route.params.subscribe(params => {
      this.id = +params['id']; // Obtém a id do parâmetro da rota
      this.obterDetalhesDoProduto(this.id);
    });

    this.ngAfterViewInit()
  }

  private async obterDetalhesDoProduto(id: number): Promise<void> {
    try {
      this.produto = await this.rede.detalharProduto(id); // Chama o método de serviço
      if (this.produto) {
        this.preco = this.produto.preco; // Define o preço com base no produto retornado
        this.id = this.produto.id; // Atualiza a id com base no retorno
      }
    } catch (error) {
      console.error('Erro ao obter detalhes do produto:', error);
    }
  }

  // Atualiza o valor do atributo preco com base no evento do input
  public processInput(event: Event): void {
    const inputElement = event.target as HTMLInputElement;
    const value = inputElement.value;

    // Remove caracteres não numéricos
    const numericValue = value.replace(/[^0-9]/g, '');

    // Atualiza o valor de preco com o novo valor numérico
    this.preco = numericValue ? parseFloat(numericValue) / 100 : 0;
    
    // Atualiza o valor do campo para refletir o valor formatado como moeda
    inputElement.value = this.formatAsCurrency(this.preco);
  }

  // Formata o valor como moeda
  public formatAsCurrency(value: number): string {
    return new Intl.NumberFormat('pt-BR', {
      style: 'currency',
      currency: 'BRL',
    }).format(value);
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

  ngAfterViewInit() {
    // Força a atualização do label após a visualização ser carregada
    M.updateTextFields();
  }

  async salvar(): Promise<void> {
    console.log(this.preco)
    if (this.produto) {
      // Verifica se o id é válido antes de chamar o método
      if (this.produto.id) {
        await this.rede.editarProduto(
          this.produto.id, 
          this.produto.nome, 
          this.preco, 
          this.foto
        );
      } else {
        console.error('ID do produto é inválido:', this.produto.id);
      }
    } else {
      console.error('Produto não carregado.');
    }
  }
  
}
