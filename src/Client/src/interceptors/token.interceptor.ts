import { Injectable } from "@angular/core";
import { Storage } from '@ionic/storage';
import { HttpInterceptor, HttpRequest, HttpHandler, HttpEvent, HttpErrorResponse } from "@angular/common/http";
import { App } from "ionic-angular";
import { Observable } from 'rxjs';
import { from } from 'rxjs/observable/from';
import { IAuthUser } from "../providers/auth/IAuthUser";

@Injectable()
export class TokenInterceptor implements HttpInterceptor {

  constructor(private app: App, private storage: Storage){}

  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    if(request.url.startsWith('./assets/'))
      return next.handle(request);

    return from(this.storage.get('user'))
      .map((user: IAuthUser) => {
        if(user){
          return request.clone({
            setHeaders: {
              'Authorization': user.token || ''
            }
          })
        }
        return request;
      })
      .switchMap(req => next.handle(req))
      .catch((error: HttpErrorResponse) => {
        if (error.status === 401) {
          this.app.getActiveNav().setRoot("LoginPage")
        }
        return Observable.throw(error);
      });
  }
}
