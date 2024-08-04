import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/booking/booking.dart';
import '../models/service/service.dart';
import '../models/serviceprovider/serviceprovider.dart';

class BookingService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Booking>> streamBookings(String customerId) {
    return _db
        .collection('bookings')
        .where('customerId', isEqualTo: customerId)
        .snapshots()
        .map((snapshot) {
      var bookings = snapshot.docs
          .map((doc) => Booking.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      print(
          "Fetched bookings: ${bookings.length}"); // Update to log the count of bookings
      return bookings;
    });
  }

  Future<ServiceProvider> getServiceProvider(String id) async {
    var snapshot = await _db.collection('serviceProviders').doc(id).get();
    var serviceProvider =
        ServiceProvider.fromJson(snapshot.data()! as Map<String, dynamic>);
    print(
        "Fetched service provider: $serviceProvider"); // Logging the service provider
    return serviceProvider;
  }

  Future<Service> getService(String id) async {
    var snapshot = await _db.collection('services').doc(id).get();
    var service = Service.fromJson(snapshot.data()! as Map<String, dynamic>);
    print("Fetched service: $service"); // Logging the service
    return service;
  }
}
