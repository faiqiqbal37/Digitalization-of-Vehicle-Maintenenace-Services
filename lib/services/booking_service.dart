import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/booking/booking.dart';

class BookingService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;


  Future<List<Booking>> fetchBookingsByCustomerId(String customerId) async {
    try {
      QuerySnapshot querySnapshot = await _firestore
          .collection('bookings')
          .where('customerId', isEqualTo: customerId)
          .get();

      List<Booking> bookings = querySnapshot.docs
          .map((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        // Safely handle the 'date' field conversion
        if (data['date'] != null && data['date'] is Timestamp) {
          data['date'] = (data['date'] as Timestamp).toDate(); // Safely convert Timestamp to DateTime
        } else {
          print('Unexpected date format or null in booking data: ${doc.id}');
        }
        return Booking.fromJson(data);
      })
          .toList();

      return bookings;
    } catch (e) {
      print('Error fetching bookings: $e');
      return [];
    }
  }

}
