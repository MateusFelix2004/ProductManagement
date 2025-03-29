import { CanActivateFn, Router } from '@angular/router';
import { inject } from '@angular/core';
import { AuthService } from './auth.service';

export const autenticacaoGuard: CanActivateFn = (route, state) => {
  const router = inject(Router); // Injeta o Router
  const auth = inject(AuthService); // Injeta o AuthService

  const token = localStorage.getItem('token');
  const id = localStorage.getItem('id');
  const permissao = localStorage.getItem('permissao');

  console.log('Token:', token);
  console.log('ID:', id);
  console.log('Permissão:', permissao);

  // Verifica se algum dos valores está faltando
  if (!token || !id || !permissao) {
    auth.logout(); // Atualiza o estado de autenticação
    router.navigate(['/login']);
    return false; // Bloqueia o acesso
  }

  // Se todos os valores existirem, atualiza o AuthService
  auth.setTokenPermissao(token, Number(id), Number(permissao));
  console.log('Acesso permitido');

  // Permite o acesso
  return true;
};
