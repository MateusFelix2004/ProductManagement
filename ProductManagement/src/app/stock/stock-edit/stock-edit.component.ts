import { Component, AfterViewInit } from '@angular/core';
import { RouterLink } from '@angular/router';  
import { ActivatedRoute } from '@angular/router'; 

declare var M: any;  // Declare o objeto global Materialize para evitar erros


@Component({
  selector: 'app-stock-edit',
  standalone: true,
  imports: [RouterLink],
  templateUrl: './stock-edit.component.html',
  styleUrl: './stock-edit.component.css'
})
export class StockEditComponent {

  nome: string = 'Biscoito Rosquinha Coco Isabela Pacote 300g';

  quantidade: number = 0;

  onQuantidadeChange(event: Event): void {
    const input = event.target as HTMLInputElement;
    this.quantidade = Number(input.value); // Converta o valor de string para número
  }

  ngAfterViewInit() {
    // Força a atualização do label após a visualização ser carregada
    M.updateTextFields();
  }

}
