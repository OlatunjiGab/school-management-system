import { NgModule, ErrorHandler } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';
import { LoginPage } from '../pages/login/login';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { ResetpasswordPage } from '../pages/resetpassword/resetpassword';
import { TeacherHomePage } from '../pages/teacher-home/teacher-home';
import { StudentdashboardPage } from '../pages/studentdashboard/studentdashboard';
import { TeacherdashboardPage } from '../pages/teacherdashboard/teacherdashboard';
import { HttpClientModule } from '@angular/common/http';
import { StudentExamsPage } from '../pages/student-exams/student-exams';
import { StudentAttendancePage } from '../pages/student-attendance/student-attendance';
import { StudentAnnouncementsPage } from '../pages/student-announcements/student-announcements';
import { StudentTimeTablePage } from '../pages/student-time-table/student-time-table';
import { StudentResultPage } from '../pages/student-result/student-result';
import { AdminDashboardPage } from '../pages/admin-dashboard/admin-dashboard';
import { AdminHomePage } from '../pages/admin-home/admin-home';
import { SettingPage } from '../pages/setting/setting';
import { QuizServiceProvider } from '../providers/quiz-service/quiz-service';
import { StudentQuiz1Page } from '../pages/student-quiz1/student-quiz1';
import { AdminAddPage } from '../pages/admin-add/admin-add';
import { AdminViewPage } from '../pages/admin-view/admin-view';
import { AdminAnnouncementsPage } from '../pages/admin-announcements/admin-announcements';
import { AdminDeletePage } from '../pages/admin-delete/admin-delete';
import { AdminUpdatePage } from '../pages/admin-update/admin-update';
import { AdminMessagesPage } from '../pages/admin-messages/admin-messages';
import { AddUsersPage } from '../pages/add-users/add-users';
import { UserAddressPage } from '../pages/user-address/user-address';
import { ServiceLoginProvider } from '../providers/service-login/service-login';
import {TeacherProfilePage} from '../pages/teacher-profile/teacher-profile';
import { ServiceAddsubjectProvider } from '../providers/service-addsubject/service-addsubject';
import {AdminProfilePage} from '../pages/admin-profile/admin-profile';
import { ServiceAdduserProvider } from '../providers/service-adduser/service-adduser';
import { StudentQuizPage } from '../pages/student-quiz/student-quiz';
import { StudentProfilePage } from '../pages/student-profile/student-profile';
import { AddSubjectsPage } from '../pages/add-subjects/add-subjects';
import { NativeStorage } from '@ionic-native/native-storage';
import { AddSessionPage } from '../pages/add-session/add-session';
import { ServiceAddSessionProvider } from '../providers/service-add-session/service-add-session';
import { ServiceAdminAnnouncements } from '../providers/service-AdminAnnoucement/service-announcement';

 @NgModule({ 
  declarations: [
    MyApp,
    HomePage,
    LoginPage,
    ResetpasswordPage,
    TeacherHomePage,
    TeacherProfilePage,
    StudentdashboardPage,
    TeacherdashboardPage,
    StudentExamsPage,
    StudentAttendancePage,
    StudentAnnouncementsPage,
    StudentTimeTablePage,
    StudentResultPage,
    AdminDashboardPage,
    AdminProfilePage,
    StudentQuizPage,
    StudentQuiz1Page,
    AdminHomePage,
    SettingPage,
    StudentProfilePage,
    AdminAddPage,
    AdminViewPage,
    AdminAnnouncementsPage,
    AdminDeletePage,
    AdminUpdatePage,
    AdminMessagesPage,
    AddUsersPage,
    UserAddressPage,
    AddSubjectsPage,
    SettingPage,
    StudentProfilePage,
    AddSessionPage
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp),
    HttpClientModule
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    LoginPage,
    ResetpasswordPage,
    TeacherHomePage,
    StudentdashboardPage,
    TeacherdashboardPage,
    TeacherProfilePage,
    StudentExamsPage,
    StudentQuizPage,
    StudentQuiz1Page,
    StudentAttendancePage,
    StudentAnnouncementsPage,
    StudentTimeTablePage,
    StudentResultPage,
    AdminDashboardPage,
    AdminProfilePage,
    AdminHomePage,
    SettingPage,
    StudentProfilePage,
    AdminAddPage,
    AdminViewPage,
    AdminAnnouncementsPage,
    AdminDeletePage,
    AdminUpdatePage,
    AdminMessagesPage,
    AddUsersPage,
    UserAddressPage,
    AddSubjectsPage,
    SettingPage,
    StudentProfilePage,
    AddSessionPage,
  ],
  providers: [
    StatusBar,
    //SQLite,
    //SQLiteObject,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    ServiceLoginProvider,
    ServiceAdduserProvider,
    NativeStorage,
    ServiceAddSessionProvider
    QuizServiceProvider,
    ServiceAddsubjectProvider,
    ServiceAdduserProvider,
    ServiceAdminAnnouncements,
  ]
})
export class AppModule {}