import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute, RouterLink } from '@angular/router';
import { NavigationService } from '../../navigation.service'; // Ajuste o caminho conforme necessário
import { CommonModule } from '@angular/common';
import { NetworkService } from '../../network.service';
import { Product } from '../product';

@Component({
  selector: 'app-view',
  standalone: true,
  imports: [CommonModule, RouterLink],
  templateUrl: './view.component.html',
  styleUrls: ['./view.component.css'] // Correção aqui (plural)
})
export class ViewComponent implements OnInit {

  id: number  = 0; // Inicializa como null para lidar com o tipo correto
  produto: Product | null = null; // Inicializa como null para evitar erros

  // Injetando ActivatedRoute no construtor
  constructor(
    private navigationService: NavigationService,
    private route: ActivatedRoute, // Adicionando o ActivatedRoute corretamente
    private rede: NetworkService
  ) {}

  // Obtendo o parâmetro da rota no ngOnInit
  async ngOnInit(): Promise<void> {
    // Usando paramMap para obter o parâmetro 'id'
    this.route.paramMap.subscribe(async params => {
      this.id = Number(params.get('id')); // 'id' é o nome do parâmetro na rota
      console.log(this.id); // Mostra o valor do parâmetro

      if (this.id) {
        this.produto = await this.rede.detalharProduto(this.id);
      }
    });
  }

  // Método para voltar à página anterior
  goBack(): void {
    this.navigationService.goBack();
  }

  async delete(id: number): Promise<void> {

    this.rede.excluirProduto(id);

  }
}
