import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class AdminBottomNavigationBar extends StatefulWidget {
  @override
  _AdminBottomNavigationBarState createState() =>
      _AdminBottomNavigationBarState();
}

class _AdminBottomNavigationBarState extends State<AdminBottomNavigationBar> {
  static int _selectedIndex = 0;
  final _navigationService = locator<NavigationService>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 0) {
      _navigationService.replaceWithAdminHomeView();
    } else if (_selectedIndex == 1) {
      _navigationService.replaceWithAdminCustomersView();
    } else if (_selectedIndex == 2) {
      _navigationService.replaceWithAdminServiceProvidersView();
    } else if (_selectedIndex == 3) {
    } else if (_selectedIndex == 4) {
      _navigationService.replaceWithAdminBookingsView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2),
          label: 'Customer',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.build),
          label: 'Providers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.build_circle),
          label: 'Services',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Bookings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white, // Set background color to white
    );
  }
}
