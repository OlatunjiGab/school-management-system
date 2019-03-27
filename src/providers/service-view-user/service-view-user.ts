import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

/*
  Generated class for the ServiceViewUserProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class ServiceViewUserProvider {

  public data:any;
  //public URL="http://localhost/schoolapi/";
  public URL="http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/";
  recdata: any;

  constructor(public http: HttpClient) {
    console.log('Hello ServiceViewUserProvider Provider');
  }

  postData(url,data1){
    //console.log(data1);

    // Passing Header

    return new Promise(resolve=>{
      this.http.post(url,JSON.stringify(data1)).subscribe(data=>{
        console.log(data);
                 
        if(data['statuscode'] == 1)
         {
            this.recdata=data; 
            console.log(this.recdata);
         }else
         {
           
           alert("Registration Number Doesn't exist");
         }
         resolve(data);

      },error=>{
        console.log(" error : data not sent");
        alert(" error : data not sent");
      });
    });
  }

  postUserID(data){
    console.log(data);
    var url=this.URL+"view_user.php";
    return this.postData(url,data);
  }

}
