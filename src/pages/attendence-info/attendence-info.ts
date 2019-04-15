import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { ServiceGetClassMasterProvider } from '../../providers/service-get-class-master/service-get-class-master';
import { MarkAttendancePage } from '../mark-attendance/mark-attendance';



@IonicPage()
@Component({
  selector: 'page-attendence-info',
  templateUrl: 'attendence-info.html',
})
export class AttendenceInfoPage {
  public classID:any;
  today = new Date();
  myDate: String = new Date().toISOString();
  myHour  = this.today.getHours();
  myMin  =  this.today.getMinutes();
  mytime : string = this.myHour.toString()+':'+ this.myMin.toString(); 



  constructor(public navCtrl: NavController, public navParams: NavParams,public GU:ServiceGetClassMasterProvider) {
  this.GU.getClassFun();
    
  // this.time=  new Date().toISOString();
  console.log(this.mytime);

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad AttendenceInfoPage');
  }

  Submit(SLOT,Class,Subject)
  {
    let DATE=this.myDate;
    let TIME=this.mytime
    //console.log("Date",DATE," Time",TIME,'TIME-SLOT',SLOT,"Class_ID",Class,"Subject",Subject)
    //console.log("class id as per students to be display",this.classID);
    if(DATE!=undefined && TIME!= undefined && SLOT!=undefined && Class!=undefined && Subject!=undefined)
    {
      this.navCtrl.push(MarkAttendancePage,{"date":DATE,"time":TIME,"slot":SLOT,"class":Class,"subject":Subject});
      //this.GU.getSDCfun(this.classID);
      this.GU.getSDCFun(this.classID);
    }
    else
    {
      alert("Please select required fields.")
    }
    
    console.log("class id as per students to be display",this.classID);
    this.navCtrl.push(MarkAttendancePage);
    //this.GU.getSDCfun(this.classID);
  }

  getSubject(Class)
  {
    this.classID=Class;
    //console.log(this.postId['classId']);
    this.GU.getAttSubjectFun(this.classID);
    this.GU.getAttTermfun(this.classID);
  }
}
