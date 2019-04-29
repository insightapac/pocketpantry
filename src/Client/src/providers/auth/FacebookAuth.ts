
//Hack: https://github.com/jeduan/cordova-plugin-facebook4/issues/445
declare let FB: any; 
import { Injectable } from '@angular/core';
import { Storage } from '@ionic/storage';
import { Facebook, FacebookLoginResponse } from '@ionic-native/facebook';
import { IAuthUser } from './IAuthUser';
import { Platform } from 'ionic-angular';


/**
 * A simple settings/config class for storing key/value pairs with persistence.
 */
@Injectable()
export class FacebookAuth implements IAuth {
  constructor(private facebook: Facebook, private storage: Storage, private platform: Platform,) { }

  async login() : Promise<IAuthUser> {
    FB.init({
      appId      : 391315068389926,
      xfbml      : true,
      version    : 'v2.7'
    });

    //the permissions your facebook app needs from the user
    const permissions = ["public_profile", "email"];

    return this.facebook.login(permissions)
      .then((response: FacebookLoginResponse) => {
        let userId = response.authResponse.userID;

        //Getting name and gender properties
        return this.facebook.api("/me?fields=name,email", permissions)
          .then(user => {
            user.picture = "https://graph.facebook.com/" + userId + "/picture?type=large";
            //now we have the users info, let's save it in the NativeStorage
            return this.storage.set('user',
              {
                name: user.name,
                email: user.email,
                picture: user.picture,
                token: response.authResponse.accessToken
              })
          });
      });
  }
}