import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController, ToastController } from 'ionic-angular';
import { ServiceGetClassMasterProvider } from '../../providers/service-get-class-master/service-get-class-master';
import { setZIndex } from 'ionic-angular/umd/navigation/nav-util';
import { ServiceUploadAttendenceProvider } from '../../providers/service-upload-attendence/service-upload-attendence';
import { get } from '@ionic-native/core';


@IonicPage()
@Component({
  selector: 'page-mark-attendance',
  templateUrl: 'mark-attendance.html',
})
export class MarkAttendancePage {
  
  
  public index:any;
  public class:any;
  public subject:any;
  public time:any;
  public date:any;
  public slot:any;
  public details:any={

    "REG_NO":"",
    "class":"",
    "subject":"",
    "date":"",
    "time":"",
    "slot":"",
    "status":""
  };

  public infos : any =
  {
    'attendance': '',
    'details':''
  }
  
  //public infos : any =[];
  public AA:any=[];
 

  constructor(public navCtrl: NavController, public navParams: NavParams,public GU:ServiceGetClassMasterProvider,
    public Upload:ServiceUploadAttendenceProvider,public alertCtrl:AlertController,public toastController:ToastController) {
      
      this.GU.class=this.navParams.get('class');
      this.GU.subject=this.navParams.get('subject');
      this.GU.date=this.navParams.get('date');
      this.GU.time=this.navParams.get('time');      
      this.GU.slot=this.navParams.get('slot');    
      this.AA=this.GU.attendence;
      console.log(this.AA,'array aa gya');
        
  }






  Submit(reg,status,index)
  {

    let  details:any={

      "REG_NO":"",
      "class":"",
      "subject":"",
      "date":"",
      "time":"",
      "slot":"",
      "status":"",
      "term":""
    };
    details['REG_NO']=reg;
    details['class']=this.GU.class;
    details['subject']=this.GU.subject;
    details['date']=this.GU.date;
    details['time']=this.GU.time;
    details['slot']=this.GU.slot;
    details['status']=status;
    details['term']=this.GU.term;
    if(status!=undefined)
    {
        this.GU.attendence[index].status = status;
        this.GU.attendence[index].class = this.details['class'];
        this.GU.attendence[index].subject = this.details['subject'];
        this.GU.attendence[index].date = this.details['date'];
        this.details['time'];      
        this.details['slot']=this.navParams.get('slot'); 
        console.log("Attendance",this.GU.attendence);
    
      
      details['status']="P";

    }
    else{
      details['status']="A";
    }
    this.AA[index] = details;
    console.log("Attendence wala copy",this.AA);
  }

  ViewAtt(){
    const confirm = this.alertCtrl.create({
      title: 'Upload Attendance',
      message: 'Do you want to Upload Attendance',
      buttons: [
        {
          text: 'Cancel',
          handler: () => {
                          this.navCtrl.pop();
                         }
        },
        {
         text: 'Okay',
         handler: () => {
                          //console.log(this.AA);
                          this.Upload.uploadAttFun(this.AA);
                          this.navCtrl.pop();
                        }
        }
      ]
    });
    confirm.present();
  }

  
  // Submit(reg,status,ind)
  // {
    
  //   //this.index=ind;
  //   //console.log("index",this.index);
  //   if(this.GU.attendence[ind].REG_NO == reg)
  //   {
  //       this.GU.attendence[ind].status = status;
  //       console.log("Attendance",this.GU.attendence);
  //   }

     
  //     //att[ind].Status=status;
  //     //this.attendence.push(att[ind]);
  //      }

  // ViewAtt()
  // {
  //  //console.log("class",this.class,"subject",this.subject,"slot",this.slot,"date",this.date,"time",this.time);
  //  //console.log("Details Associated with att.",this.details);
  //     var temp:any;
  //     for (var i in  this.GU.attendence)
  //       {
  //          this.GU.attendence[i].class = this.details['class'];
  //          this.GU.attendence[i].subject = this.details['subject'];
  //          this.GU.attendence[i].date = this.details['date'];
  //          this.GU.attendence[i].time = this.details['time'];      
  //          this.GU.attendence[i].slot = this.details['slot'];   
  //        // this.infos[i] = temp;
  //       }
  //  // this.infos = this.GU.attendence.concat(this.details);
  //  console.log( this.GU.attendence);
  //  this.Upload.uploadAttFun( this.GU.attendence);
  // }
}
