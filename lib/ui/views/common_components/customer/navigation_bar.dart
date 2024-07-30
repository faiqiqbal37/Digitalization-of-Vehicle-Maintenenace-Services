import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class CustomerBottomNavigationBar extends StatefulWidget {
  @override
  _CustomerBottomNavigationBarState createState() =>
      _CustomerBottomNavigationBarState();
}

class _CustomerBottomNavigationBarState
    extends State<CustomerBottomNavigationBar> {
  static int _selectedIndex = 0;
  final _navigationService = locator<NavigationService>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 0) {
      _navigationService.replaceWithCustomerHomeView();
    } else if (_selectedIndex == 1) {
      _navigationService.replaceWithCustomerCarsView();
    } else if (_selectedIndex == 2) {
      _navigationService.replaceWithServiceProviderServicesView();
    } else if (_selectedIndex == 3) {
      _navigationService.replaceWithCustomerBookingsView();
    } else if (_selectedIndex == 4) {
      _navigationService.replaceWithServiceProviderProfileView();
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
          icon: Icon(Icons.directions_car),
          label: 'Cars',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.build),
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
    );
  }
}
