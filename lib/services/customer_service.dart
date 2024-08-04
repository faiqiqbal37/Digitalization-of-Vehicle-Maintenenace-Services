import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/customer/customer.dart';

class CustomerService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Customer> fetchCustomerById(String customerId) async {
    DocumentSnapshot doc =
        await _firestore.collection('customers').doc(customerId).get();
    return Customer.fromJson(doc.data() as Map<String, dynamic>);
  }

  Future<void> updateCustomer(
      String customerId,
      String firstname,
      String phoneNumber,
      String lastname,
      String email,
      String? location) async {
    try {
      // Fetch the current customer data
      DocumentSnapshot docSnapshot =
          await _firestore.collection('customers').doc(customerId).get();
      Customer currentCustomer =
          Customer.fromJson(docSnapshot.data() as Map<String, dynamic>);

      // Create a new Customer object with updated fields using copyWith
      Customer updatedCustomer = currentCustomer.copyWith(
          firstname: firstname,
          lastname: lastname,
          phoneNumber: phoneNumber,
          email: email,
          location: location);

      // Update Firestore document with new customer data
      await _firestore
          .collection('customers')
          .doc(customerId)
          .update(updatedCustomer.toJson());
      print("Customer updated successfully!");
    } catch (e) {
      print("Error updating customer: $e");
      throw Exception("Failed to update customer");
    }
  }
}
