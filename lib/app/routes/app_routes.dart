
import 'package:hotel_booking_app/view/dashboard/car_rental_page.dart';
import 'package:hotel_booking_app/view/dashboard/home_view.dart';
import 'package:hotel_booking_app/view/dashboard/main_page.dart';
import 'package:hotel_booking_app/view/dashboard/stays_page.dart';
import 'package:hotel_booking_app/view/dashboard/tabbar_page.dart';
import 'package:hotel_booking_app/view/dashboard/taxi_page.dart';
import 'package:hotel_booking_app/view/dashboard/user_profile_page.dart';
import 'package:hotel_booking_app/view/date_time.dart';
import 'package:hotel_booking_app/view/forms/form.dart';
import 'package:hotel_booking_app/view/splash.dart';
import 'package:hotel_booking_app/view/splash_screen.dart';
import 'package:hotel_booking_app/view/splash_view.dart';
import 'package:hotel_booking_app/view/welcome/otp_page.dart';
import 'package:hotel_booking_app/view/welcome/signup_page.dart';
import 'package:hotel_booking_app/view/welcome/welcome_screen.dart';

// import '../../view/dashboard/test.dart';
import '../../view/welcome/confirm_otp_page.dart';
import '../../view/welcome/login_page.dart';

class AppRoute{
  AppRoute._();
  static const String splashRoute='/splash';
  static const String splashRoute12='/splash12';
  static const String welcomeRoute='/welcome';
  static const String signupRoute='/registration';
  static const String loginRoute='/login';
  static const String otpRoute='/otp';
  // static const String homeRoute='/home';
  static const String datetimeRoute='/datetime';
  static const String mainpageRoute='/mainpage';
  static const String bookingFormRoute ='/bookingForm';
  static const String tabbarRoute ='/tabbar';
  static const String staysRoute ='/stays';
  static const String carRentanRoute ='/carRental';
  static const String taxiRoute='/taxi';
  static const String confirmOTP='/confirmOtp';
  static const String userProfileRoute='/userProfile';
  // static const String testRoute="/test";



  static getApplicationRoute(){
    return{
      splashRoute:(context) => const SplashScreen(),
      welcomeRoute:(context)=> const WelcomeScreen(),
      // registrationRoute:(context)=>const RegistrationPage(),
      loginRoute:(context)=> const LoginPage(),
      signupRoute:(context)=> const SignupPage(),
      otpRoute:(context)=> const LoginScreenOTP(),
      confirmOTP:(context)=> const LoginScreenConfirmOTP(),
      // homeRoute:(context)=> const Home(),
      splashRoute12:(context)=>const SplashView(),
      datetimeRoute:(context)=> const DateTimeView(),
      mainpageRoute:(context)=> const MainPage(),
      bookingFormRoute:(context)=> const FormView(),
      tabbarRoute:(context)=>const TabBarPage(),
      staysRoute:(context)=> const StaysPage(),
      carRentanRoute:(context)=> const CarRentalPage(),
      taxiRoute:(context)=> const TaxiPage(),
      userProfileRoute:(context)=>UserProfileScreen(),
      // testRoute:(context)=>const MyHomePage(),
    };
  }


}
