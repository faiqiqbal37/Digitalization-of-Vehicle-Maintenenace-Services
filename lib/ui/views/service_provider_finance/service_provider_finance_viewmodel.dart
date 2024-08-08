import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disertation/app/app.locator.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:stacked/stacked.dart';

class ServiceProviderFinanceViewModel extends BaseViewModel {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final _authService = locator<AuthenticationService>();
  List<Map<String, dynamic>> financeData = [];
  double totalEarnings = 0;

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
}
