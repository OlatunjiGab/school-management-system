import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { ServiceLoginProvider } from '../service-login/service-login';

/*
  Generated class for the ServiceUploadAttendenceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class ServiceUploadAttendenceProvider {
  //public URL="http://localhost/schoolapi/"; //for local use
  public URL="http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/"; //for hosting use
  // public URL="https://direct-school.000webhostapp.com/"; //for hosting

  constructor(public http: HttpClient,public one:ServiceLoginProvider) {
    console.log('Hello ServiceUploadAttendenceProvider Provider');
  }

  uploadAttFun(Attendence)
  {
    console.log("Attendence going to punched",Attendence);
    // console.log("Details",Details);
    var url=this.URL+"uploadAttendence.php";
    return this.getSDC(url,Attendence);
  
  }
  getSDC(url,Attendence)
  {
    //console.log("service call",sessionData);
    return new Promise(resolve=>{
      this.http.post(url,JSON.stringify(Attendence)).subscribe(data=>{
        if(data['statuscode']==1)
        {
          console.log(data);
          alert("Attendance Marked");
          
        }
        else
        {
          alert("Unable to mark Attendance");
        }        
        
         resolve(data);
  
      },error=>{
        console.log("Error",error);
      });
    });
  
  }

  updateAttFun(Attendence)
  {
    console.log("Attendence going to Updated",Attendence);
    var url=this.URL+"updateAttendance.php";
    return this.updateAtt(url,Attendence);
  
  }
  updateAtt(url,Attendence)
  {
    return new Promise(resolve=>{
      this.http.post(url,JSON.stringify(Attendence)).subscribe(data=>{
        if(data['statuscode']==1)
        {
          console.log(data);
          alert("Attendance Updated");
          
        }
        else
        {
          alert("Unable to Update Attendance");
        }        
        
         resolve(data);
  
      },error=>{
        console.log("Error",error);
      });
    });
  
  }
  
}
