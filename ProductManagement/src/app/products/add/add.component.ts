import { Component, AfterViewInit } from '@angular/core';
import { previewImage } from '../../utils';
import { RouterLink } from '@angular/router';
import { NetworkService } from '../../network.service';

declare var M: any;  // Declare o objeto global Materialize para evitar erros

@Component({
  selector: 'app-add',
  standalone: true,
  imports: [RouterLink],
  templateUrl: './add.component.html',
  styleUrl: './add.component.css'
})
export class AddComponent {

  constructor(private rede: NetworkService) {}

  nome: string = '';
  preco: number = 0;
  imagem: File | null = null; // Atributo para armazenar a imagem

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

  // Método para pré-visualizar a imagem
  previewImage(event: Event): void {
    const input = event.target as HTMLInputElement;

    if (input.files && input.files.length > 0) {
      this.imagem = input.files[0]; // Atribui a imagem ao atributo
      previewImage(event); // Chama a função utilitária para mostrar a imagem
    }
  }

  ngAfterViewInit() {
    // Força a atualização do label após a visualização ser carregada
    M.updateTextFields();
  }

  // Método para salvar o produto
  async adicionar(): Promise<void> {
    // Lógica para salvar o produto
    // Aqui você pode implementar a lógica para enviar os dados para um serviço

    await this.rede.adicionarProduto(this.nome, this.preco, this.imagem)
    
    // Redirecionar ou resetar os campos conforme necessário
  }

}
