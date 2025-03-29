import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { ProductsComponent } from './products/products.component';
import { EditComponent } from './products/edit/edit.component';
import { ViewComponent } from './products/view/view.component';
import { HeaderComponent } from './header/header.component';
import { CommonModule } from '@angular/common';
import { HomeComponent } from './home/home.component';
import { StockComponent } from './stock/stock.component';
import { StockEditComponent } from './stock/stock-edit/stock-edit.component';
import { LoadingComponent } from './loading/loading.component';
import { UsersComponent } from './users/users.component';
import { NewComponent } from './users/new/new.component';
import { AddComponent } from './products/add/add.component';
import { MessageComponent } from './message/message.component';
// Importe o registerLocaleData e o locale pt
import { registerLocaleData } from '@angular/common';
import localePt from '@angular/common/locales/pt';
import { SettingsComponent } from './settings/settings.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [
    RouterOutlet, CommonModule, HomeComponent,LoginComponent,
    StockComponent, StockEditComponent,ProductsComponent, ViewComponent,
    EditComponent, HeaderComponent, LoadingComponent, UsersComponent,
    NewComponent, AddComponent, MessageComponent, SettingsComponent
  ],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'ProductManagement';
  
  constructor(){

    // Registre o locale 'pt-BR'
    registerLocaleData(localePt);

  }
  
}
