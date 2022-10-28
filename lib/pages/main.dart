import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/pages/04_Home/home_page.dart';
import 'package:medica/pages/05_notification/notification.dart';
import 'package:medica/pages/07_TopDoctors/top_doctors.dart';
import 'package:medica/pages/09_DoctorsProfile/Appointment/J_Consultation/a_Messaging_Consultation/Chart_Page/chat_page.dart';
import 'package:medica/pages/09_DoctorsProfile/Appointment/J_Consultation/a_Messaging_Consultation/messaging_consultation.dart';
import 'package:medica/pages/09_DoctorsProfile/Appointment/J_Consultation/b_Calling_Consultation/Call_Ringing_Page.dart';
import '01_login/login.dart';
import '01_login/welcome.dart';
import '02_signUp/create_pin.dart';
import '02_signUp/fill_profile.dart';
import '02_signUp/sign_up.dart';
import '02_signUp/fingerprint.dart';
import '03_forget_password/create_password.dart';
import '03_forget_password/forget_password.dart';
import '03_forget_password/otp_code.dart';
import '06_FavoriteDoctors/favorite_doctors.dart';
import '09_DoctorsProfile/Appointment/A_Book_Appointment/book_appointment.dart';
import '09_DoctorsProfile/Appointment/B_Select_Package/select_package.dart';
import '09_DoctorsProfile/Appointment/C_Patient_Details/patient_details.dart';
import '09_DoctorsProfile/Appointment/D_Payments/payments_page.dart';
import '09_DoctorsProfile/Appointment/E_Add_New_Card/add_new_card.dart';
import '09_DoctorsProfile/Appointment/F_Payment_UpdateCard/payment_update_card.dart';
import '09_DoctorsProfile/Appointment/G_Review_Summary/review_summary.dart';
import '09_DoctorsProfile/Appointment/H_Enter_Pin/booking_enter_pin.dart';
import '09_DoctorsProfile/Appointment/I_My_Appointment/completed_appointment.dart';
import '09_DoctorsProfile/Appointment/I_My_Appointment/canceled_appointment.dart';
import '09_DoctorsProfile/Appointment/I_My_Appointment/my_appointment_view.dart';
import '09_DoctorsProfile/Appointment/I_My_Appointment/reschedule_appoinment.dart';
import '09_DoctorsProfile/Appointment/I_My_Appointment/canceled_reason.dart';import '09_DoctorsProfile/Appointment/J_Consultation/Consultation_Ended.dart';
import '09_DoctorsProfile/Appointment/J_Consultation/b_Calling_Consultation/Call_Running_Page.dart';
import '09_DoctorsProfile/Appointment/J_Consultation/b_Calling_Consultation/Calling_Consultation.dart';
import '09_DoctorsProfile/Appointment/J_Consultation/c_Video_Consultation/Video_Consultation.dart';
import '09_DoctorsProfile/Appointment/J_Consultation/c_Video_Consultation/Video_Ringing_Page.dart';
import '09_DoctorsProfile/Appointment/J_Consultation/c_Video_Consultation/Video_Runnig_Page.dart';
import '09_DoctorsProfile/Appointment/J_Consultation/z_Ended_Review.dart';
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
          '/' : (context) => const MyAppointmentView(),
          '/welcome' : (context) => const Welcome(),
          '/login' : (context) => const Login(),
          '/sign_up' : (context) => const SignUp(),
          '/FillProfile' : (context) => const FillProfile(),
          '/fingerprint' : (context) => const Fingerprint(),
          '/create_pin' : (context) => const CreatePin(),
          '/forget_password' : (context) => const ForgetPassword(),
          '/OtpCode' : (context) => const OtpCode(),
          '/CreatePassword' : (context) => const CreatePassword(),
          '/HomePage' : (context) => const HomePage(),
          '/notification' : (context) =>  const NotificationPage(),
          '/favorite_doctors' : (context) =>  const FavoriteDoctors(),
          '/TopDoctors' : (context) =>  const TopDoctors(),
          '/DoctorsProfile' : (context) =>  const DoctorsProfile(),
          '/DoctorsReviews' : (context) =>  const DoctorsReviews(),
          '/Book_Appointment' : (context) =>  const BookAppointment(),
          '/Select_Package' : (context) =>  const SelectPackage(),
          '/Patient_Details' : (context) =>  const PatientDetails(),
          '/Payments_Page' : (context) =>  const PaymentsPage(),
          '/Add_New_Card' : (context) =>  const AddNewCard(),
          '/Payment_UpdateCard' : (context) =>  const PaymentUpdateCard(),
          '/Review_Summary' : (context) =>  const ReviewSummary(),
          '/Enter_Pin' : (context) =>  const BookingEnterPin(),
          '/My_Appointment' : (context) =>  const MyAppointmentView(),
          '/Completed_Appointment' : (context) =>  const CompletedAppointment(),
          '/Canceled_Appointment' : (context) =>  const CanceledAppointment(),
          '/Reschedule_Appointment' : (context) =>  const RescheduleAppointment(),
          '/Reschedule_Appointment2' : (context) =>  const RescheduleAppointment2(),
          '/Canceled_Reason' : (context) =>  const CanceledReason(),

          '/Messaging_Consultation' : (context) =>  const MessagingConsultation(),
          '/Chat_Page' : (context) =>  const ChatPage(),

          '/Calling_Consultation' : (context) =>  const Calling_Consultation(),
          '/Call_Ringing_Page' : (context) =>  const Call_Ringing_Page(),
          '/Call_Running_Page' : (context) =>  const Call_Running_Page(),

          '/Video_Consultation' : (context) =>  const Video_Consultation(),
          '/Video_Ringing_Page' : (context) =>  const Video_Ringing_Page(),
          '/Video_Runnig_Page' : (context) =>  const Video_Runnig_Page(),

          '/Consultation_Ended' : (context) =>  const Consultation_Ended(),
          '/Ended_Review' : (context) =>  const Ended_Review(),

        },
        theme: ThemeData(fontFamily: 'Roboto',
        primarySwatch: Colors.indigo),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(428, 926),
    );
  }
}