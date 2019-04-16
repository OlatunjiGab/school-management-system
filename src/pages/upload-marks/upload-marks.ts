import { Component } from '@angular/core';
import { ToastController,IonicPage, NavController, NavParams, AlertController } from 'ionic-angular';
import { ServiceGetClassMasterProvider } from '../../providers/service-get-class-master/service-get-class-master';
import { ServiceUploadMarksProvider } from '../../providers/service-upload-marks/service-upload-marks';

@IonicPage()
@Component({
  selector: 'page-upload-marks',
  templateUrl: 'upload-marks.html',
})
export class UploadMarksPage {
  public Marks_array:any=[];
  public CLASS:any=[];
  public SUBJECT:any;
  public TEST:any;
  public status:boolean=false;
  public temp=0;
  public rows:number;


  constructor(public navCtrl: NavController, public navParams: NavParams,public GU:ServiceGetClassMasterProvider,
    public alertCtrl:AlertController,public UM:ServiceUploadMarksProvider,public toastController: ToastController
    ) {
  this.CLASS=navParams.get('class');
  this.SUBJECT=navParams.get('subject');
  this.TEST=navParams.get('test');
  console.log(this.CLASS,this.SUBJECT,this.TEST);
  this.status=false;
   
  this.rows=this.GU.rows;
  console.log("number of rows is",this.rows);


  }

  test()
  {
    console.log("focused");
  }

  Save(reg,Marks,index)
  {

    let mk={
      "REG_NO":"",
      "TEST":"",
      "MARKS":"",
    };
    mk['REG_NO']=reg;
    mk['TEST']=this.TEST;
    mk['MARKS']=Marks;
    if(Marks!=undefined && Marks!="" &&this.status==true)
    {
      if(Marks>=0 && Marks<=100)

      {
        this.Marks_array[index] = mk;
        this.temp=this.temp+1;
      console.log(this.Marks_array);

      }
      else{
        alert("Marks should be in between 0 and 100");
      }
      
        

    }
    else{
      
      // const toast = this.toastController.create({
      //   message: 'Please fill all the fields',
      //   showCloseButton: true,
      //   position: 'top',
      //   closeButtonText: 'Done'
      // });
      // toast.present();
    }

  }

Submit(){
  console.log("temp's value",this.temp)
  if(this.temp-this.rows==0)
  {
    const confirm = this.alertCtrl.create({
      title: 'Upload Marks',
      message: 'Do you want to Upload Marks?',
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
                          console.log(this.Marks_array);
                          this.UM.UploadFun(this.Marks_array);
                          this.navCtrl.pop();
                        }
        }
      ]
    });
    confirm.present();
  }
  else{
    alert("please fill all fields");
  }
   
  }

  //Validation
  check(event:any)
  {
    let newValue=event.target.value;
    let regExp= RegExp('[0-9]+$');
    if(regExp.test(newValue))
    {
     this.status=true;
    }
    else
    {
      this.status=false;

      const toast = this.toastController.create({
        message: 'Please Enter Numbers Only',
        showCloseButton: true,
        position: 'bottom',
        closeButtonText: 'Ok'
      });
      toast.present();
    }
  }

}
