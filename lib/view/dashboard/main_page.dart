// import 'package:flutter/material.dart';
//
// class MainPage extends StatefulWidget {
//   const MainPage({super.key});
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   int currentPageIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     final ThemeData theme = Theme.of(context);
//     return Scaffold(
//       bottomNavigationBar: NavigationBar(
//         onDestinationSelected: (int index){
//       setState(() {
//         currentPageIndex = index;
//       });
//     },
//     indicatorColor: Colors.blueAccent.shade100,
//     backgroundColor: Colors.transparent,
//     selectedIndex: currentPageIndex,
//     destinations: const [
//     NavigationDestination(
//     icon: Icon(Icons.home),
//     label: 'Home',
//     selectedIcon: Icon(Icons.home),
//     ),
//     NavigationDestination(
//     icon: Icon(Icons.favorite),
//     label: 'favourite',
//     ),
//     NavigationDestination(
//     icon: Icon(Icons.person),
//     label: 'Profile',
//     ),
//     ],
//     ),
//       body: <Widget>[
//         Card(
//           shadowColor: Colors.transparent,
//           margin: const EdgeInsets.all(8.0),
//           child: SizedBox.expand(
//             child: Center(
//               child: Text(''
//                   'Home page',
//                 style: theme.textTheme.titleLarge,
//               ),
//             ),
//           ),
//
//         ),
//         Card(
//           shadowColor: Colors.transparent,
//           margin: const EdgeInsets.all(8.0),
//           child: SizedBox.expand(
//             child: Center(
//               child: Text(''
//                   'Favourite page',
//                 style: theme.textTheme.titleLarge,
//               ),
//             ),
//           ),
//         ),
//         Card(
//           shadowColor: Colors.transparent,
//           margin: const EdgeInsets.all(8.0),
//           child: SizedBox.expand(
//             child: Center(
//               child: Text(''
//                   'user profile',
//                 style: theme.textTheme.titleLarge,
//               ),
//             ),
//           ),
//         ),
//       ][currentPageIndex],
//
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/app/routes/app_routes.dart';
import 'package:hotel_booking_app/view/dashboard/home_view.dart';
import 'package:hotel_booking_app/view/dashboard/tabbar_page.dart';
import 'package:hotel_booking_app/view/dashboard/user_profile_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;

  Widget _buildHomePage() {
    return  const Center(
      child: TabBarPage(),
    );
  }

  Widget _buildFavoritePage() {
    return const Center(
      child: Text('booking detail Page'),
    );
  }

  Widget _buildProfilePage() {
    return  Center(
      child:UserProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: _buildPage(currentPageIndex),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return _buildHomePage();
      case 1:
        return _buildFavoritePage();
      case 2:
        return _buildProfilePage();
      default:
        return Container();
    }
  }
}

