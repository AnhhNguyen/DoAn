import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ContentComponent } from './content.component';
import { RouterModule } from '@angular/router';
import { TransferHttpCacheModule } from '@nguniversal/common';
import { ApiService } from '../../common/api-service/api.service';
import { IMyProfileModule } from './c-my-profile/c-my-profile.module';

@NgModule({
  declarations: [ContentComponent],
  imports: [
    TransferHttpCacheModule,
    CommonModule,
    RouterModule.forChild([
      {
        // ng g module home-page/content/sellTicket --module content
        // ng g c home-page/content/sellTicket
        path: '',
        component: ContentComponent,
        children: [
          {
            path: 'my-profile',
            loadChildren: () =>
              import('./c-my-profile/c-my-profile.module').then(
                (m) => m.IMyProfileModule
              ),
          },
          {
            path: 'home',
            loadChildren: () =>
              import('./c0-home/home.module').then((m) => m.HomeModule),
          },
          {
            path: 'c1-account',
            loadChildren: () =>
              import('./c1-account/c1-account.module').then((m) => m.C1AccountModule),
          },
          {
            path: 'c2-menu',
            loadChildren: () =>
              import('./c2-menu/c2-menu.module').then((m) => m.C2MenuModule),
          },
          {
            path: 'c3-role',
            loadChildren: () =>
              import('./c3-role/c3-role.module').then((m) => m.C3RoleModule),
          },
          {
            path: 'c4-role-detail/:id',
            loadChildren: () =>
              import('./c4-role-detail/c4-role-detail.module').then((m) => m.C4RoleDetailModule),
          },

          {                                                               
            path: 'c5-CategoryType',                                               
            loadChildren: () =>                                           
              import('./c5-CategoryType/c5-CategoryType.module').then((m) => m.C5CategorytypeModule), 
          },                                          


        ],
      },
    ]),
    IMyProfileModule,
  ],
  providers: [ApiService],
  entryComponents: [],
})
export class ContentModule { }
