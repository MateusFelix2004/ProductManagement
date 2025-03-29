import { Component, OnInit, OnDestroy } from '@angular/core';
import { InterfaceService } from '../interface.service';
import { CommonModule } from '@angular/common';
import { Subscription } from 'rxjs';
import { AuthService } from '../auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-message',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './message.component.html',
  styleUrls: ['./message.component.css']
})
export class MessageComponent implements OnInit, OnDestroy {

  mostrarMensagem: boolean = false;
  tipo: string = '';
  mensagem: string = '';
  codigo: number | null = null; // Novo atributo para código

  private subscriptions: Subscription = new Subscription();

  constructor(private graphics: InterfaceService, private auth: AuthService, private router: Router) {}

  ngOnInit(): void {
    // Inscreve-se nas mudanças de mostrarMensagem
    this.subscriptions.add(this.graphics.mostrarMensagem$.subscribe(value => {
      this.mostrarMensagem = value;
    }));

    // Inscreve-se nas mudanças de tipoMensagem
    this.subscriptions.add(this.graphics.tipoMensagem$.subscribe(value => {
      this.tipo = value;
    }));

    // Inscreve-se nas mudanças de mensagem
    this.subscriptions.add(this.graphics.mensagem$.subscribe(value => {
      this.mensagem = value;
    }));

    // Inscreve-se nas mudanças do código
    this.subscriptions.add(this.graphics.codigo$.subscribe(value => {
      this.codigo = value; // Sincroniza o código com o InterfaceService
    }));
  }

  fechar(): void {

    if(this.codigo == 401){
   
      this.auth.logout();
      this.router.navigate(['/login']);

    } 

    this.graphics.fecharMensagem();

  }

  ngOnDestroy(): void {
    // Limpa as inscrições para evitar vazamentos de memória
    this.subscriptions.unsubscribe();
  }
}
