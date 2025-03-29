import { Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { ProductsComponent } from './products/products.component';
import { ViewComponent } from './products/view/view.component';
import { EditComponent } from './products/edit/edit.component';
import { StockComponent } from './stock/stock.component';
import { StockEditComponent } from './stock/stock-edit/stock-edit.component';
import { LoginComponent } from './login/login.component';
import { UsersComponent } from './users/users.component';
import { NewComponent } from './users/new/new.component';
import { AddComponent } from './products/add/add.component';
import { autenticacaoGuard } from './autenticacao.guard'; // Ajuste o caminho conforme necessário
import { SettingsComponent } from './settings/settings.component';

export const routes: Routes = [
    { path: 'login', component: LoginComponent },
    { path: '', component: HomeComponent,  canActivate: [autenticacaoGuard]},
    { path: 'products', component: ProductsComponent, canActivate: [autenticacaoGuard] },
    { path: 'products/view/:id', component: ViewComponent, canActivate: [autenticacaoGuard] },
    { path: 'products/edit/:id', component: EditComponent, canActivate: [autenticacaoGuard] },
    { path: 'products/add', component: AddComponent, canActivate: [autenticacaoGuard] },
    { path: 'stock', component: StockComponent, canActivate: [autenticacaoGuard] },
    { path: 'stock/edit/:id', component: StockEditComponent, canActivate: [autenticacaoGuard] },
    { path: 'users', component: UsersComponent, canActivate: [autenticacaoGuard] },
    { path: 'users/new', component: NewComponent, canActivate: [autenticacaoGuard] },
    { path: 'settings', component: SettingsComponent, canActivate: [autenticacaoGuard]}
];
