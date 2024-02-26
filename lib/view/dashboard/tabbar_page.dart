import 'package:flutter/material.dart';
import 'package:hotel_booking_app/app/routes/app_routes.dart';
import 'package:hotel_booking_app/view/dashboard/car_rental_page.dart';
import 'package:hotel_booking_app/view/dashboard/home_view.dart';
import 'package:hotel_booking_app/view/dashboard/stays_page.dart';
import 'package:hotel_booking_app/view/dashboard/taxi_page.dart';
import 'package:hotel_booking_app/view/welcome/otp_page.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  // final ThemeData theme = Theme.of(context);
  List<String> titles =<String>['Stays','Car rental','Taxi','Attractions'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Bhumibeds')),
          actions: [
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.add_alert),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: const Icon(Icons.bed),
                text: titles[0],
              ),
              Tab(
                icon: const Icon(Icons.car_rental),
                text: titles[1],
              ),
              Tab(
                icon: const Icon(Icons.local_taxi),
                text: titles[2],
              ),
              Tab(
                icon: const Icon(Icons.attractions),
                text: titles[3],
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            StaysPage(),
            CarRentalPage(),
            TaxiPage(),
            TaxiPage(),
          ],
        ),
      ),
    );

  }
}
