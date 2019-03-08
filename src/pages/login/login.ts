import { Component } from '@angular/core';
import { NavController, AlertController, LoadingController } from 'ionic-angular';
import { MenuController } from 'ionic-angular';
import { ResetpasswordPage } from '../resetpassword/resetpassword';
import { StudentdashboardPage } from '../studentdashboard/studentdashboard';
import { TeacherdashboardPage } from '../teacherdashboard/teacherdashboard';
import { AdminDashboardPage } from '../admin-dashboard/admin-dashboard';
import { ServiceLoginProvider } from '../../providers/service-login/service-login';
import { NativeStorage } from '@ionic-native/native-storage';

@Component({
  selector: 'page-login',
  templateUrl: 'login.html'
})
export class LoginPage {
private REG_NO:any;
private PASSWORD:any;
public dataitem:any;
public user:any=
{
  "REG_NO":"",
  "PASSWORD":" "
};
  constructor(private nativeStorage: NativeStorage,public Menu: MenuController,public navCtrl: NavController,public alertCtrl:AlertController,public loadingCtrl: LoadingController,
    public service:ServiceLoginProvider) {
      this.Menu.enable(false);
  }
  
  ValidateLogin(REG_NO,PASSWORD)
  {
  

        this.user['REG_NO']=this.REG_NO;//get user name from login.html
        this.user['PASSWORD']=this.PASSWORD;//get password entered by user from login.html
        
        //calling services for login and sending data to API
        this.service.postlogin(this.user).then(data=>{

          this.dataitem = data; //getting response value from API
         console.log("response",data);

         if(data['statuscode'] === 1)
         {

          //Saving Registration Number and Password
          this.nativeStorage.setItem('LoginInfo', {RegistrationId: REG_NO, Password: PASSWORD, role: this.dataitem.data[0].ROLE})
          .then(
            () => console.log('Stored item!'),
            error => console.error('Error storing item', error)
          );

           //console.log("login sucessfully implimented");
           if(this.dataitem.data[0].ROLE=='student'|| this.dataitem.data[0].ROLE=='Student'|| this.dataitem.data[0].ROLE=='STUDENT')
           {
            //console.log("student");
            this.navCtrl.setRoot(StudentdashboardPage);
             //this.navCtrl.setRoot('StudentdashboardPage');//calling student dashboard
           }
           else if(this.dataitem.data[0].ROLE=='teacher'|| this.dataitem.data[0].ROLE=='Teacher'|| this.dataitem.data[0].ROLE=='TEACHER')
           {
            //console.log("teacher");
            this.navCtrl.setRoot(TeacherdashboardPage);
            //this.navCtrl.setRoot('TeacherdashboardPage');//calling teacher dashboardpage
           }
           else if(this.dataitem.data[0].ROLE=='admin'|| this.dataitem.data[0].ROLE=='Admin'|| this.dataitem.data[0].ROLE=='ADMIN')
           {
             //sending to Admin Page
             this.navCtrl.setRoot(AdminDashboardPage);
           }
         }
         else
         {
           //showing alert in case of wrong password and user 
          const alert = this.alertCtrl.create({
            title: 'Invaild User!',
            buttons: ['OK']
          });
          alert.present();
         }
});  //calling service function end
}

   


ResetPassword()
{
  this.navCtrl.push(ResetpasswordPage);
}
  
  
}


