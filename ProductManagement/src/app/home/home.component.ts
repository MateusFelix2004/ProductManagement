import { Component, OnInit } from '@angular/core';
import { RouterLink } from '@angular/router';
import { InterfaceService } from '../interface.service';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [RouterLink],
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent implements OnInit {

  permissao: number | null = null;

  constructor(private gui: InterfaceService) {}

  ngOnInit(): void {
    const permissaoStr = localStorage.getItem('permissao');
    this.permissao = permissaoStr ? Number(permissaoStr) : null; // Converte para número
  }
}
