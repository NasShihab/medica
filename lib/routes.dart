import 'package:flutter/material.dart';
import 'package:medica/pages/home_page.dart';
import 'package:medica/pages/notification.dart';
import 'package:medica/pages/top_doctors.dart';
import 'package:medica/pages/chat_page.dart';
import 'package:medica/pages/messaging_consultation.dart';
import 'package:medica/pages/call_ringing_page.dart';
import 'package:medica/pages_widget/bottom_navigation_bar_page.dart';
import 'pages/login.dart';
import 'pages/welcome.dart';
import 'pages/create_new_pin.dart';
import 'pages/fill_profile.dart';
import 'pages/sign_up.dart';
import 'pages/fingerprint.dart';
import 'pages/create_new_password.dart';
import 'pages/forget_password.dart';
import 'pages/otp_code.dart';
import 'pages/favorite_doctors.dart';
import 'pages/book_appointment.dart';
import 'pages/select_package.dart';
import 'pages/patient_details.dart';
import 'pages/payments_page.dart';
import 'pages/add_new_card.dart';
import 'pages/payment_update_card.dart';
import 'pages/review_appointment_summary.dart';
import 'pages/booking_enter_pin.dart';
import 'pages/completed_appointment.dart';
import 'pages/canceled_appointment.dart';
import 'pages/my_appointment_view.dart';
import 'pages/reschedule_appoinment.dart';
import 'pages/canceled_reason.dart';
import 'pages/consultation_ended.dart';
import 'pages/call_running_page.dart';
import 'pages/calling_consultation.dart';
import 'pages/video_consultation.dart';
import 'pages/video_ringing_page.dart';
import 'pages/video_runnig_page.dart';
import 'pages/ended_review.dart';
import 'pages/doctors_profile.dart';
import 'pages/doctor_reviews_page.dart';

var myRoutes = <String, WidgetBuilder>{
  '/' : (context) => BottomNavigationBarPage(),
  '/welcome' : (context) => const Welcome(),
  '/login' : (context) => const Login(),
  '/sign_up' : (context) => const SignUp(),
  '/FillProfile' : (context) => const FillProfile(),
  '/fingerprint' : (context) => const Fingerprint(),
  '/create_pin' : (context) => const CreateNewPin(),
  '/forget_password' : (context) => const ForgetPassword(),
  '/OtpCode' : (context) => const OtpCode(),
  '/CreatePassword' : (context) => const CreateNewPassword(),
  '/HomePage' : (context) => const HomePage(),
  '/notification' : (context) =>  const NotificationPage(),
  '/favorite_doctors' : (context) =>  const FavoriteDoctors(),
  '/TopDoctors' : (context) =>  const TopDoctors(),
  '/DoctorsProfile' : (context) =>  const DoctorsProfile(),
  '/DoctorsReviews' : (context) =>  const DoctorReviewPage(),
  '/Book_Appointment' : (context) =>  const BookAppointment(),
  '/Select_Package' : (context) =>  const SelectPackage(),
  '/Patient_Details' : (context) =>  const PatientDetails(),
  '/Payments_Page' : (context) =>  const PaymentsPage(),
  '/Add_New_Card' : (context) =>  const AddNewCard(),
  '/Payment_UpdateCard' : (context) =>  const PaymentUpdateCard(),
  '/Review_Summary' : (context) =>  const ReviewAppointmentSummary(),
  '/Enter_Pin' : (context) =>  const BookingEnterPin(),
  '/My_Appointment' : (context) =>  const MyAppointmentView(),
  '/Completed_Appointment' : (context) =>  const CompletedAppointment(),
  '/Canceled_Appointment' : (context) =>  const CanceledAppointment(),
  '/Reschedule_Appointment' : (context) =>  const RescheduleAppointment(),
  '/Reschedule_Appointment2' : (context) =>  const RescheduleAppointment2(),
  '/Canceled_Reason' : (context) =>  const CanceledReason(),

  '/Messaging_Consultation' : (context) =>  const MessagingConsultation(),
  '/Chat_Page' : (context) =>  const ChatPage(),

  '/Calling_Consultation' : (context) =>  const CallingConsultation(),
  '/Call_Ringing_Page' : (context) =>  const CallRingingPage(),
  '/Call_Running_Page' : (context) =>  const CallRunningPage(),

  '/Video_Consultation' : (context) =>  const VideoConsultation(),
  '/Video_Ringing_Page' : (context) =>  const VideoRingingPage(),
  '/Video_Runnig_Page' : (context) =>  const VideoRunnigPage(),

  '/Consultation_Ended' : (context) =>  const ConsultationEnded(),
  '/Ended_Review' : (context) =>  const EndedReview(),
};