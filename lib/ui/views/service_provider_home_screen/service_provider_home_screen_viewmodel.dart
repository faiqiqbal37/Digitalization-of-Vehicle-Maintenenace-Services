import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disertation/app/app.router.dart';
import 'package:disertation/models/serviceprovider/serviceprovider.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:disertation/services/service_provider_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../models/service/service.dart';
import '../../../services/services_service.dart';

class ServiceProviderHomeScreenViewModel extends BaseViewModel {
  final _serviceProviderService = locator<ServiceProviderService>();
  final _authService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();
  final _servicesService = locator<ServicesService>();
  List<Service> servicesNew = [];


  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  int totalBookings = 0;
  int pendingBookings = 0;
  int completedBookings = 0;



  final FirebaseFirestore firestore = FirebaseFirestore.instance;



  String serviceProviderName = "";
  List<Map<String, dynamic>> financeData = [];
  double totalEarnings = 0;

  void navigateToServiceDetail(String serviceId) {
    _navigationService.navigateToServiceProviderServiceDetailView(
        serviceId: serviceId);
  }

  void navigateToEditDetail(String serviceId) {
    _navigationService.navigateToServiceProviderEditServiceView(
        serviceId: serviceId);
  }


  Future<void> fetchServices() async {
    try {
      servicesNew = await _servicesService
          .getServicesByProviderId(_authService.serviceProvider!.id);
      notifyListeners();

      for (Service service in servicesNew) {
        print('Service Name: ${service.serviceName}, Price: ${service.price}');
      }
    } catch (e) {
      print('Error fetching services: $e');
    }
  }

  Future<void> fetchBookingSummary() async {
    try {
      // Fetch all bookings for the service provider
      var snapshot = await firestore
          .collection('bookings')
          .where('serviceProviderId', isEqualTo: _authService.serviceProvider!.id)
          .get();

      // Calculate total bookings
      totalBookings = snapshot.docs.length;

      // Count pending and completed bookings
      pendingBookings = snapshot.docs
          .where((doc) => doc.data()['status'] == 'pending')
          .length;
      completedBookings = snapshot.docs
          .where((doc) => doc.data()['status'] == 'completed')
          .length;

      notifyListeners(); // Update UI
    } catch (e) {
      print('Error fetching booking summary: $e');
    }
  }

  Future<void> fetchFinanceData() async {
    setBusy(true);
    try {
      QuerySnapshot bookingSnapshot = await _firestore
          .collection('bookings')
          .where('serviceProviderId',
              isEqualTo: _authService.serviceProvider!.id)
          .get();

      for (QueryDocumentSnapshot bookingDoc in bookingSnapshot.docs) {
        Map<String, dynamic> bookingData =
            bookingDoc.data() as Map<String, dynamic>;

        DocumentSnapshot serviceDoc = await _firestore
            .collection('services')
            .doc(bookingData['serviceId'])
            .get();
        Map<String, dynamic> serviceData =
            serviceDoc.data() as Map<String, dynamic>;

        DocumentSnapshot customerDoc = await _firestore
            .collection('customers')
            .doc(bookingData['customerId'])
            .get();
        Map<String, dynamic> customerData =
            customerDoc.data() as Map<String, dynamic>;

        financeData.add({
          'date': (bookingData['date'] as Timestamp)
              .toDate()
              .toLocal()
              .toString()
              .split(' ')[0],
          'bookingId': bookingData['id'],
          'customerName':
              '${customerData['firstname']} ${customerData['lastname']}',
          'serviceName': serviceData['serviceName'],
          'amount': '\$${serviceData['price']}',
        });

        totalEarnings += double.parse(serviceData['price']);
      }
      notifyListeners();
    } catch (e) {
      print(e);
    }
    setBusy(false);
  }

  Future<void> getServiceProviderName() async {
    ServiceProvider serviceProvider = await _serviceProviderService
        .fetchServiceProviderById(_authService.serviceProvider!.id);
    notifyListeners();
    serviceProviderName = serviceProvider.businessName;
  }
}
