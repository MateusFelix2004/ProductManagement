import { Component, OnInit} from '@angular/core';
import { InterfaceService } from '../interface.service';
import { Subscription } from 'rxjs';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-loading',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './loading.component.html',
  styleUrl: './loading.component.css'
})
export class LoadingComponent implements OnInit {
  carregando: boolean = false;
  private subscriptions = new Subscription();

  constructor(private graphics: InterfaceService) {}

  ngOnInit(): void {
    // Inscreve-se nas mudanças de carregando
    this.subscriptions.add(this.graphics.carregando$.subscribe(value => {
      this.carregando = value;
    }));
  }

  ngOnDestroy(): void {
    this.subscriptions.unsubscribe(); // Limpa as inscrições para evitar vazamentos de memória
  }
}