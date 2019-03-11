import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

/*
  Generated class for the ServiceAddsubjectProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class ServiceAddsubjectProvider {

  //public data:any;
  public URL="http://localhost/schoolapi/";
  constructor(public http: HttpClient) {
    console.log('Hello ServiceAddsubjectProvider Provider');
  }
  postData(url,data1)
  {
    return new Promise(resolve=>{
      this.http.post(url,JSON.stringify(data1)).subscribe(data=>{
        // if(data['statuscode'] == 1)
        // {
        //   //console.log("Inserted successfully");
        // }
        // else
        // {
        //   //console.log("Insertion unsuccessfull");
        // }
        resolve(data);
      },error=>{
        //console.log(data1);
        console.log("data not transferred",error);
      });
    });
  }


  postSubject(subject)
  {
    //console.log(subject);
    var url=this.URL+"addSubject.php";
    return this.postData(url,subject);
  }
}
