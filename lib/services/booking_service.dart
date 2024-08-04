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

      List<Booking> bookings = querySnapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        // Safely handle the 'date' field conversion
        if (data['date'] != null && data['date'] is Timestamp) {
          data['date'] = (data['date'] as Timestamp)
              .toDate(); // Safely convert Timestamp to DateTime
        } else {
          print('Unexpected date format or null in booking data: ${doc.id}');
        }
        return Booking.fromJson(data);
      }).toList();

      return bookings;
    } catch (e) {
      print('Error fetching bookings: $e');
      return [];
    }
  }

  Future<Booking?> fetchMostRecentBookingByCustomerId(String customerId) async {
    try {
      // Query the bookings collection, filtering by customerId and sorting by date in descending order
      QuerySnapshot querySnapshot = await _firestore
          .collection('bookings')
          .where('customerId', isEqualTo: customerId)
          .orderBy('date', descending: true)
          .limit(1)  // Only retrieve the most recent booking
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        DocumentSnapshot doc = querySnapshot.docs.first;
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        // Safely handle the 'date' field conversion
        if (data['date'] != null && data['date'] is Timestamp) {
          data['date'] = (data['date'] as Timestamp).toDate(); // Convert Timestamp to DateTime
        } else {
          print('Unexpected date format or null in booking data: ${doc.id}');
          return null;  // Return null if date is not properly formatted or missing
        }
        return Booking.fromJson(data);
      } else {
        print('No bookings found for the customer.');
        return null;  // Return null if no bookings are found
      }
    } catch (e) {
      print('Error fetching the most recent booking: $e');
      return null;  // Return null in case of any exceptions
    }
  }

}
