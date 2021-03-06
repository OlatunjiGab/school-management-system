import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { ServiceLoginProvider } from '../service-login/service-login';

/*
  Generated class for the ServiceChangepasswordProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class ServiceChangepasswordProvider {

  public URL=this.one.URL;

  constructor(public http: HttpClient,public one:ServiceLoginProvider) {
    console.log('Hello ServiceChangepasswordProvider Provider');
  }

  postChangeData(NewPasswordData)
  {
    var url=this.URL+"ChangePassword.php";
    return this.postData(url,NewPasswordData);
  }

  postData(url,NewPasswordData)
  {
    console.log("passing data",NewPasswordData);
    return new Promise(resolve=>{
    
      this.http.post(url,JSON.stringify(NewPasswordData)).subscribe(data=>{
        console.log(JSON.stringify(data));
        if(data['statuscode'] == 1)
        {
          alert(data['msg']);
          
        }
        else
        {
          alert(data['msg']);
        }
        resolve(data);
      },error=>{
        console.log(NewPasswordData);
        console.log("data not transferred",error);
      });
    });
  }

}
