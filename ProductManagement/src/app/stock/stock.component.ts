import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { Stock } from './stock';
import { Router, RouterLink } from '@angular/router';

@Component({
  selector: 'app-stock',
  standalone: true,
  imports: [RouterLink, CommonModule],
  templateUrl: './stock.component.html',
  styleUrl: './stock.component.css'
})
export class StockComponent {

  estoques: Stock[] = [];
  permissao: number | null = null;

  constructor(private router: Router) {}

  async ngOnInit(): Promise<void> {
    const permissaoStr = localStorage.getItem('permissao');
    this.permissao = permissaoStr ? Number(permissaoStr) : null; // Converte para número

    if(this.permissao != 1){

      this.router.navigate(['/']);

    }

  }

}
