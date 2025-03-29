import { Component, OnInit } from '@angular/core';
import { RouterLink } from '@angular/router';
import { Product } from './product';
import { CommonModule } from '@angular/common';
import { NetworkService } from '../network.service';

@Component({
  selector: 'app-products',
  standalone: true,
  imports: [RouterLink, CommonModule],
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.css']
})
export class ProductsComponent implements OnInit {

  produtos: Product[] = [];

  // Injeção do serviço no construtor
  constructor(private rede: NetworkService) {}

  // Lifecycle hook para carregar os produtos
  async ngOnInit(): Promise<void> {
    this.produtos = await this.rede.listarProdutos();
  }

  async delete(id: number | null): Promise<void> {
   
    await this.rede.excluirProduto(id);

  }

}
