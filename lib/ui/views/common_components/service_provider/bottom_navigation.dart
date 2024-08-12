import 'package:disertation/services/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:badges/badges.dart' as badges;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  bool _hasNewBooking = false;
  int length = 0;


  @override
  void initState() {
    super.initState();
    _listenToNewBookings();
  }

  void _listenToNewBookings() async{
    _firestore
        .collection('bookings')
        .where('serviceProviderId', isEqualTo: _authService.serviceProvider!.id)
        .where('status', isEqualTo: 'pending')
        .snapshots()
        .listen((snapshot) {
      final newBooking = snapshot.docs.any((doc) {
        final data = doc.data();
        length = snapshot.docs.length;
        final bookingDate = (data['date'] as Timestamp).toDate();
        return bookingDate.isAfter(DateTime.now().subtract(Duration(days: 1)));
      });
      if (mounted) {
        setState(() {
          _hasNewBooking = true;
        });
      }
    });
    length = await _firestore
        .collection('bookings')
        .where('serviceProviderId', isEqualTo: _authService.serviceProvider!.id)
        .where('status', isEqualTo: 'pending')
        .snapshots().length;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 3) {
      // Assuming the bookings tab is index 3
      _hasNewBooking = false; // Reset the notification when viewed
    }
    switch (index) {
      case 0:
        _navigationService.replaceWithServiceProviderHomeScreenView();
        break;
      case 1:
        _navigationService.replaceWithServiceProviderFinanceView();
        break;
      case 2:
        _navigationService.replaceWithServiceProviderServicesView();
        break;
      case 3:
        _navigationService.replaceWithServiceProviderBookingsListingView();
        break;
      case 4:
        _navigationService.replaceWithServiceProviderProfileView();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money),
          label: 'Finances',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.build),
          label: 'Services',
        ),
        BottomNavigationBarItem(
          icon: badges.Badge(
            showBadge: _hasNewBooking,
            badgeContent: Text('${length}', style: TextStyle(color: Colors.white)),
            child: Icon(Icons.calendar_today),
          ),
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

  @override
  void dispose() {
    length = 0;
  }
}
