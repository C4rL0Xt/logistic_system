import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AuthRoutingModule } from './auth-routing.module';
import { AuthPageComponent } from './pages/auth-page/auth-page.component';
import { LogoutPageComponent } from './pages/logout-page/logout-page/logout-page.component';
import { SharedModule } from '../../shared/shared.module';
import { LoginPageComponent } from './pages/login-page/login-page.component';
import { MenuComponent } from './pages/menu/menu.component';



@NgModule({
  declarations: [
    AuthPageComponent,
    LogoutPageComponent,
    LoginPageComponent,
    MenuComponent
  ],
  imports: [
    CommonModule,
    AuthRoutingModule,
    SharedModule
  ]
})
export class AuthModule { }
