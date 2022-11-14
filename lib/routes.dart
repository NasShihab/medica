import 'package:flutter/material.dart';
import 'package:medica/opening_screens/screen_5.dart';
import 'package:medica/opening_screens/screen_6.dart';
import 'package:medica/opening_screens/screen_8.dart';
import 'package:medica/dashboard/notification.dart';
import 'package:medica/dashboard/top_doctors.dart';
import 'package:medica/dashboard/bottom_navigation_bar_page.dart';
import 'auth/login.dart';
import 'dashboard/appointment_view/consultation/call_doctor/call_ringing_page.dart';
import 'dashboard/appointment_view/consultation/call_doctor/call_running_page.dart';
import 'dashboard/appointment_view/consultation/call_doctor/calling_consultation.dart';
import 'dashboard/appointment_view/consultation/message_doctor/chat_page.dart';
import 'dashboard/appointment_view/consultation/message_doctor/messaging_consultation.dart';
import 'dashboard/appointment_view/consultation/video_call_doctor/video_consultation.dart';
import 'dashboard/appointment_view/consultation/video_call_doctor/video_ringing_page.dart';
import 'dashboard/appointment_view/consultation/video_call_doctor/video_runnig_page.dart';
import 'opening_screens/screen_1.dart';
import 'opening_screens/screen_2.dart';
import 'opening_screens/screen_3.dart';
import 'opening_screens/screen_4.dart';
import 'opening_screens/screen_7.dart';
import 'opening_screens/welcome.dart';
import 'auth/sign_up/create_pin.dart';
import 'auth/sign_up/fill_profile.dart';
import 'auth/sign_up/sign_up.dart';
import 'auth/sign_up/fingerprint.dart';
import 'auth/forget_password/create_new_password.dart';
import 'auth/forget_password/forget_password.dart';
import 'auth/forget_password/otp_code_verification.dart';
import 'dashboard/favorite_doctors.dart';
import 'dashboard/doctors_profile/book_appointment/book_appointment.dart';
import 'dashboard/doctors_profile/book_appointment/select_package/select_package.dart';
import 'dashboard/doctors_profile/book_appointment/select_package/patient_details/patient_details.dart';
import 'dashboard/doctors_profile/book_appointment/select_package/patient_details/payment/payments_page.dart';
import 'dashboard/doctors_profile/book_appointment/select_package/patient_details/payment/add_new_card.dart';
import 'dashboard/doctors_profile/book_appointment/select_package/patient_details/payment/payment_update_card.dart';
import 'dashboard/doctors_profile/book_appointment/select_package/patient_details/payment/review_summary/review_appointment_summary.dart';
import 'dashboard/doctors_profile/book_appointment/select_package/patient_details/payment/review_summary/booking_enter_pin.dart';
import 'dashboard/appointment_view/completed/completed_appointment.dart';
import 'dashboard/appointment_view/canceled/canceled_appointment.dart';
import 'dashboard/appointment_view/appointment_view.dart';
import 'dashboard/appointment_view/reschedule_appoinment.dart';
import 'dashboard/appointment_view/canceled_reason.dart';
import 'dashboard/appointment_view/consultation/consultation_ended.dart';
import 'dashboard/appointment_view/consultation/ended_review.dart';
import 'dashboard/doctors_profile/doctors_profile.dart';
import 'dashboard/appointment_view/consultation/doctor_reviews_page.dart';

var myRoutes = <String, WidgetBuilder>{
  '/': (context) => const Screen1(),
  '/screen_1': (context) => const Screen1(),
  '/screen_2': (context) => const Screen2(),
  '/screen_3': (context) => const Screen3(),
  '/screen_4': (context) => const Screen4(),
  '/screen_5': (context) => const Screen5(),
  '/screen_6': (context) => const Screen6(),
  '/screen_7': (context) => const Screen7(),
  '/screen_8': (context) => const Screen8(),
  '/welcome': (context) => const Welcome(),
  '/login': (context) => const Login(),
  '/sign_up': (context) => const SignUp(),
  '/FillProfile': (context) => const FillProfile(),
  '/fingerprint': (context) => const Fingerprint(),
  '/create_pin': (context) => const CreateNewPin(),
  '/forget_password': (context) => const ForgetPassword(),
  '/OtpCode': (context) => const OtpCodeVerification(),
  '/CreatePassword': (context) => const CreateNewPassword(),
  '/bottom_bar_page': (context) => const BottomNavigationBarPage(),

  '/notification': (context) => const NotificationPage(),
  '/favorite_doctors': (context) => const FavoriteDoctors(),
  '/TopDoctors': (context) => const TopDoctors(),
  '/DoctorsProfile': (context) => const DoctorsProfile(),
  '/DoctorsReviews': (context) => const DoctorReviewPage(),
  '/Book_Appointment': (context) => const BookAppointment(),
  '/Select_Package': (context) => const SelectPackage(),
  '/Patient_Details': (context) => const PatientDetails(),
  '/Payments_Page': (context) => const PaymentsPage(),
  '/Add_New_Card': (context) => const AddNewCard(),
  '/Payment_UpdateCard': (context) => const PaymentUpdateCard(),
  '/Review_Summary': (context) => const ReviewAppointmentSummary(),
  '/Enter_Pin': (context) => const BookingEnterPin(),
  '/My_Appointment': (context) => const MyAppointmentView(),
  '/Completed_Appointment': (context) => const CompletedAppointment(),
  '/Canceled_Appointment': (context) => const CanceledAppointment(),
  '/Reschedule_Appointment': (context) => const RescheduleAppointment(),
  '/Reschedule_Appointment2': (context) => const RescheduleAppointment2(),
  '/Canceled_Reason': (context) => const CanceledReason(),
  '/Messaging_Consultation': (context) => const MessagingConsultation(),
  '/Chat_Page': (context) => const ChatPage(),
  '/Calling_Consultation': (context) => const CallingConsultation(),
  '/Call_Ringing_Page': (context) => const CallRingingPage(),
  '/Call_Running_Page': (context) => const CallRunningPage(),
  '/Video_Consultation': (context) => const VideoConsultation(),
  '/Video_Ringing_Page': (context) => const VideoRingingPage(),
  '/Video_Runnig_Page': (context) => const VideoRunnigPage(),
  '/Consultation_Ended': (context) => const ConsultationEnded(),
  '/Ended_Review': (context) => const EndedReview(),
};
