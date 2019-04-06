import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams,ToastController } from 'ionic-angular';
import { BarcodeScanner } from '@ionic-native/barcode-scanner';

/**
 * Generated class for the ShopPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-shop',
  templateUrl: 'shop.html',
})
export class ShopPage {

  constructor(public navCtrl: NavController, 
    public navParams: NavParams,
    public toastCtrl: ToastController,
    private barcodeScanner: BarcodeScanner) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ShopPage');
  }

  addVoice() {
    let toast = this.toastCtrl.create({
      message: "not yet",
      duration: 3000,
      position: 'top'
    });
    toast.present();
  }

  addBarcode() {
    this.barcodeScanner.scan().then(barcodeData => {
      
      console.log('Barcode data', barcodeData);
     }).catch(err => {
         console.log('Error', err);
     });

    // let toast = this.toastCtrl.create({
    //   message: "not yet",
    //   duration: 3000,
    //   position: 'top'
    // });
    // toast.present();
  }


}
