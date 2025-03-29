import { Injectable, OnInit } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
import { AuthService } from './auth.service';

@Injectable({
  providedIn: 'root'
})
export class InterfaceService implements OnInit {
  private mostrarMensagemSubject = new BehaviorSubject<boolean>(false);
  mostrarMensagem$ = this.mostrarMensagemSubject.asObservable();

  private tipoMensagemSubject = new BehaviorSubject<string>('');
  tipoMensagem$ = this.tipoMensagemSubject.asObservable();

  private mensagemSubject = new BehaviorSubject<string>('');
  mensagem$ = this.mensagemSubject.asObservable();

  private codigoSubject = new BehaviorSubject<number | null>(null); // Novo atributo
  codigo$ = this.codigoSubject.asObservable(); // Observable para código

  autenticado: boolean = false;
  permissao: number | null = null;

  private carregandoSubject = new BehaviorSubject<boolean>(false);
  carregando$ = this.carregandoSubject.asObservable();

  constructor(private auth: AuthService) {}

  ngOnInit(): void {
    // Inscreve-se para receber atualizações
    this.auth.autenticado$.subscribe(auth => {
      this.autenticado = auth;
    });

    this.auth.permissao$.subscribe(permissao => {
      this.permissao = permissao;
    });
  }

  fecharMensagem(): void {
    this.mostrarMensagemSubject.next(false);
    this.tipoMensagemSubject.next('');
    this.mensagemSubject.next('');
  }

  exibirMensagem(tipo: number, mensagem: string = ''): void {
    this.mostrarMensagemSubject.next(true);
    this.tipoMensagemSubject.next((tipo >= 200 && tipo < 300) ? 'sucesso' : 'erro');
    this.mensagemSubject.next(mensagem);
    this.codigoSubject.next(tipo); // Atualiza o código
  }

  setCarregando(value: boolean): void {
    this.carregandoSubject.next(value);
  }

  exibirCabecalho(): boolean {
    return this.autenticado;
  }
}
