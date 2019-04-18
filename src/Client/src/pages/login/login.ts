import { Component } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { IonicPage, NavController, ToastController, LoadingController } from 'ionic-angular';
import { MainPage } from '../';
import { FacebookAuth } from '../../providers/auth/FacebookAuth';

@IonicPage()
@Component({
  selector: 'page-login',
  templateUrl: 'login.html'
})
export class LoginPage {

  constructor(public navCtrl: NavController,
    private facebookAuth: FacebookAuth,
    public toastCtrl: ToastController,
		public loadingController: LoadingController,
    public translateService: TranslateService) {}

  async doFaceBookLogin(){
		const loading = await this.loadingController.create({
			content: 'Please wait...'
    });
    
    this.presentLoading(loading);

		this.facebookAuth.login()
      .then(() =>{
        this.navCtrl.push(MainPage);;
        loading.dismiss();
      }, error =>{
        console.log(error);
        let toast = this.toastCtrl.create({
          message: error,
          duration: 3000,
          position: 'top'
        });
        toast.present();
        loading.dismiss();
      })
	}

	async presentLoading(loading) {
		return await loading.present();
	}
}
