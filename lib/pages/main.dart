import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/04_Home/HomePage.dart';
import 'package:medica/pages/05_notification/notification.dart';
import 'package:medica/pages/07_TopDoctors/TopDoctors.dart';
import 'package:medica/pages/08_SearchDoctors/SearchPage.dart';
import '01_login/login.dart';
import '01_login/welcome.dart';
import '02_signUp/CreatePin.dart';
import '02_signUp/FillProfile.dart';
import '02_signUp/SignUp.dart';
import '02_signUp/fingerprint.dart';
import '03_forget_password/CreatePassword.dart';
import '03_forget_password/ForgetPassword.dart';
import '03_forget_password/OtpCode.dart';
import '06_FavoriteDoctors/favorite_doctors.dart';
import '09_DoctorsProfile/Appointment/01_Book_Appointment/Book_Appointment.dart';
import '09_DoctorsProfile/Appointment/02_Select_Package/Select_Package.dart';
import '09_DoctorsProfile/Appointment/03_Patient_Details/Patient_Details.dart';
import '09_DoctorsProfile/Appointment/04_Payments/Payments_Page.dart';
import '09_DoctorsProfile/Appointment/05_Add_New_Card/Add_New_Card.dart';
import '09_DoctorsProfile/Appointment/06_Payment_UpdateCard/Payment_UpdateCard.dart';
import '09_DoctorsProfile/Appointment/07_Enter_Pin/Enter_Pin.dart';
import '09_DoctorsProfile/Appointment/08_My_Appointment/c_Canceled_Appointment.dart';
import '09_DoctorsProfile/Appointment/08_My_Appointment/b_Completed_Appointment.dart';
import '09_DoctorsProfile/Appointment/08_My_Appointment/0_My_Appointment.dart';
import '09_DoctorsProfile/Appointment/08_My_Appointment/d_Reschedule_Appoinment.dart';
import '09_DoctorsProfile/Appointment/08_My_Appointment/e_Canceled_Reason.dart';
import '09_DoctorsProfile/Appointment/Review_Summary/Review_Summary.dart';
import '09_DoctorsProfile/DoctorsProfile.dart';
import '09_DoctorsProfile/Review/DoctorsReviews.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) => MaterialApp(

        initialRoute: '/',
        routes: {
          '/' : (context) => const welcome(),
          '/welcome' : (context) => const welcome(),
          '/login' : (context) => const login(),
          '/sign_up' : (context) => const SignUp(),
          '/FillProfile' : (context) => const FillProfile(),
          '/fingerprint' : (context) => const fingerprint(),
          '/create_pin' : (context) => const CreatePin(),
          '/forget_password' : (context) => const ForgetPassword(),
          '/OtpCode' : (context) => const OtpCode(),
          '/CreatePassword' : (context) => const CreatePassword(),
          '/HomePage' : (context) => const HomePage(),
          '/notification' : (context) =>  notification(),
          '/favorite_doctors' : (context) =>  const FavoriteDoctors(),
          '/TopDoctors' : (context) =>  const TopDoctors(),
          '/SearchPage' : (context) =>  const SearchPage(),
          '/DoctorsProfile' : (context) =>  const DoctorsProfile(),
          '/DoctorsReviews' : (context) =>  const DoctorsReviews(),
          '/Book_Appointment' : (context) =>  const Book_Appointment(),
          '/Select_Package' : (context) =>  const Select_Package(),
          '/Patient_Details' : (context) =>  const Patient_Details(),
          '/Payments_Page' : (context) =>  const Payments_Page(),
          '/Add_New_Card' : (context) =>  const Add_New_Card(),
          '/Payment_UpdateCard' : (context) =>  const Payment_UpdateCard(),
          '/Review_Summary' : (context) =>  const Review_Summary(),
          '/Enter_Pin' : (context) =>  const Enter_Pin(),
          '/My_Appointment' : (context) =>  const My_Appointment(),
          '/Completed_Appointment' : (context) =>  const Completed_Appointment(),
          '/Canceled_Appointment' : (context) =>  const Canceled_Appointment(),
          '/Reschedule_Appointment' : (context) =>  const Reschedule_Appointment(),
          '/Reschedule_Appointment2' : (context) =>  const Reschedule_Appointment2(),
          '/Canceled_Reason' : (context) =>  const Canceled_Reason(),

        },
        theme: ThemeData(fontFamily: 'Roboto',
        primarySwatch: Colors.indigo),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(428, 926),
    );
  }
}