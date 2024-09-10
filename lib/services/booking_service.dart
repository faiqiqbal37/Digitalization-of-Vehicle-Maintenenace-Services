import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/booking/booking.dart';
import '../models/payment/payment.dart';

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

  Future<List<Booking>> fetchBookingsByServiceProviderId(
      String serviceProviderId) async {
    try {
      QuerySnapshot querySnapshot = await _firestore
          .collection('bookings')
          .where('serviceProviderId', isEqualTo: serviceProviderId)
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

  Future<List<Booking>> fetchAllBookings() async {
    try {
      QuerySnapshot querySnapshot =
          await _firestore.collection('bookings').get();

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
          .limit(1) // Only retrieve the most recent booking
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        DocumentSnapshot doc = querySnapshot.docs.first;
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        // Safely handle the 'date' field conversion
        if (data['date'] != null && data['date'] is Timestamp) {
          data['date'] = (data['date'] as Timestamp)
              .toDate(); // Convert Timestamp to DateTime
        } else {
          print('Unexpected date format or null in booking data: ${doc.id}');
          return null; // Return null if date is not properly formatted or missing
        }
        return Booking.fromJson(data);
      } else {
        print('No bookings found for the customer.');
        return null; // Return null if no bookings are found
      }
    } catch (e) {
      print('Error fetching the most recent booking: $e');
      return null; // Return null in case of any exceptions
    }
  }

  // Method to add a payment record
  Future<void> addPayment(Payment payment) async {
    try {
      // Add the payment to the 'payments' collection in Firestore
      await _firestore
          .collection('payments')
          .doc(payment.id)
          .set(payment.toJson());
      print('Payment added successfully with ID: ${payment.id}');
    } catch (e) {
      print('Error adding payment: $e');
      throw Exception(
          'Failed to add payment'); // Optional: Provide more specific error handling
    }
  }

  Future<void> addBooking(Booking booking) async {
    try {
      // Add the payment to the 'payments' collection in Firestore
      print(booking.date);
      await _firestore
          .collection('bookings')
          .doc(booking.id)
          .set(booking.toJson());
      print('Payment added successfully with ID: ${booking.id}');
    } catch (e) {
      print('Error adding payment: $e');
      throw Exception(
          'Failed to add payment'); // Optional: Provide more specific error handling
    }
  }

  Future<void> toggleBookingStatus(String bookingId) async {
    try {
      // Retrieve the document reference for the specified booking ID
      DocumentReference bookingRef =
          _firestore.collection('bookings').doc(bookingId);

      // Get the current document to check the current status
      DocumentSnapshot snapshot = await bookingRef.get();
      if (!snapshot.exists) {
        print('Booking not found for ID: $bookingId');
        throw Exception('Booking not found');
      }

      Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
      String currentStatus =
          data['status'] ?? 'pending'; // Assume 'pending' if not set

      // Determine new status based on current status
      String newStatus = currentStatus == 'completed' ? 'pending' : 'completed';

      // Update the 'status' field of the booking
      await bookingRef.update({'status': newStatus});
      print(
          'Booking status updated from $currentStatus to $newStatus for booking ID: $bookingId');
    } catch (e) {
      print('Error toggling booking status: $e');
      throw Exception('Failed to toggle booking status');
    }
  }
}
