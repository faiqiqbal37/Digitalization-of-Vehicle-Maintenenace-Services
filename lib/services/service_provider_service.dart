import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/serviceprovider/serviceprovider.dart';

class ServiceProviderService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<ServiceProvider> fetchServiceProviderById(String id) async {
    DocumentSnapshot doc =
        await _firestore.collection('serviceProviders').doc(id).get();
    return ServiceProvider.fromJson(doc.data() as Map<String, dynamic>);
  }

  Future<void> updateServiceProvider(
      String serviceProviderId,
      String firstname,
      String phoneNumber,
      String lastname,
      String businessName,
      String email,
      String? location) async {
    try {
      // Fetch the current customer data
      DocumentSnapshot docSnapshot = await _firestore
          .collection('serviceProviders')
          .doc(serviceProviderId)
          .get();
      ServiceProvider currentCustomer =
          ServiceProvider.fromJson(docSnapshot.data() as Map<String, dynamic>);

      // Create a new Customer object with updated fields using copyWith
      ServiceProvider updatedCustomer = currentCustomer.copyWith(
          firstname: firstname,
          lastname: lastname,
          phoneNumber: phoneNumber,
          email: email,
          location: location,
          businessName: businessName);

      // Update Firestore document with new customer data
      await _firestore
          .collection('serviceProviders')
          .doc(serviceProviderId)
          .update(updatedCustomer.toJson());
      print("Service Provider updated successfully!");
    } catch (e) {
      print("Error updating customer: $e");
      throw Exception("Failed to update customer");
    }
  }
}
