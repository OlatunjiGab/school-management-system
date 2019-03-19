import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { UpdateUserPage } from '../update-user/update-user';
import { UpdateSubjectsPage } from '../update-subjects/update-subjects';
import { UpdateTermPage } from '../update-term/update-term';

/**
 * Generated class for the AdminUpdatePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-admin-update',
  templateUrl: 'admin-update.html',
})
export class AdminUpdatePage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad AdminUpdatePage');
  }

  // update user
  updateUser()
  {
    this.navCtrl.push(UpdateUserPage);
  }
  updateSubject()
  {
    this.navCtrl.push(UpdateSubjectsPage);
  }
  updateTerm()
  {
    this.navCtrl.push(UpdateTermPage);
  }
}
