import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disertation/models/serviceprovider/serviceprovider.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:disertation/services/service_provider_service.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';

class ServiceProviderHomeScreenViewModel extends BaseViewModel {
  final _serviceProviderService = locator<ServiceProviderService>();
  final _authService = locator<AuthenticationService>();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String serviceProviderName = "";
  List<Map<String, dynamic>> financeData = [];
  double totalEarnings = 0;


  Future<void> fetchFinanceData() async {
    setBusy(true);
    try {
      QuerySnapshot bookingSnapshot = await _firestore
          .collection('bookings')
          .where('serviceProviderId', isEqualTo: _authService.serviceProvider!.id)
          .get();

      for (QueryDocumentSnapshot bookingDoc in bookingSnapshot.docs) {
        Map<String, dynamic> bookingData = bookingDoc.data() as Map<String, dynamic>;

        DocumentSnapshot serviceDoc = await _firestore
            .collection('services')
            .doc(bookingData['serviceId'])
            .get();
        Map<String, dynamic> serviceData = serviceDoc.data() as Map<String, dynamic>;

        DocumentSnapshot customerDoc = await _firestore
            .collection('customers')
            .doc(bookingData['customerId'])
            .get();
        Map<String, dynamic> customerData = customerDoc.data() as Map<String, dynamic>;

        financeData.add({
          'date': (bookingData['date'] as Timestamp).toDate().toLocal().toString().split(' ')[0],
          'bookingId': bookingData['id'],
          'customerName': '${customerData['firstname']} ${customerData['lastname']}',
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
