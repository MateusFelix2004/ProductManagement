import { Component, OnInit } from '@angular/core';
import { RouterLink } from '@angular/router';
import { AuthService } from '../auth.service';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-header',
  standalone: true,
  imports: [RouterLink, CommonModule],
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  usuarioAutenticado: boolean = false;

  constructor(private auth: AuthService) {}

  ngOnInit(): void {
    this.auth.autenticado$.subscribe(auth => {
      this.usuarioAutenticado = auth;
    });
  }

  logout(): void {
    this.auth.logout();
  }
}
