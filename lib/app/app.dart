import 'package:flutter/material.dart';
import 'package:hotel_booking_app/app/routes/app_routes.dart';
import 'package:hotel_booking_app/theme/theme_data.dart';

import '../constants.dart';
import '../view/splash_screen.dart';
import '../view/splash_view.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Hostel Booking App',
      theme: getApplicationTheme(),
      initialRoute: AppRoute.welcomeRoute,
      routes: AppRoute.getApplicationRoute(),
    );
  }
}
