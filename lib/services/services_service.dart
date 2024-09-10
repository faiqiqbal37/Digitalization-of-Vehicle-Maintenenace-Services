import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disertation/models/service/service.dart';

import '../models/serviceprovider/serviceprovider.dart';

class ServicesService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addService(Service service) async {
    try {
      await _firestore
          .collection('services')
          .doc(service.id)
          .set(service.toJson());
      print("Service added successfully!");
    } catch (e) {
      print("Error adding service: $e");
      throw Exception("Failed to add service");
    }
  }

  Future<List<Service>> getServicesByProviderId(
      String serviceProviderId) async {
    CollectionReference services =
        FirebaseFirestore.instance.collection('services');

    // Query the collection for services with the matching serviceProviderId
    QuerySnapshot querySnapshot = await services
        .where('serviceProviderId', isEqualTo: serviceProviderId)
        .get();

    // Map the documents to Service objects
    List<Service> serviceList = querySnapshot.docs
        .map((doc) => Service.fromJson(doc.data() as Map<String, dynamic>))
        .toList();

    return serviceList;
  }

  Future<ServiceProvider> getServiceProviderInfo(
      String serviceProviderId) async {
    CollectionReference serviceProviders =
        FirebaseFirestore.instance.collection('serviceProviders');

    // Query the collection for services with the matching serviceProviderId
    QuerySnapshot querySnapshot =
        await serviceProviders.where('id', isEqualTo: serviceProviderId).get();

    // Map the documents to Service objects

    return ServiceProvider.fromJson(
        querySnapshot.docs.first as Map<String, dynamic>);
  }

  Future<List<Service>> getAllServices() async {
    try {
      QuerySnapshot querySnapshot =
          await _firestore.collection('services').get();
      List<Service> servicesList = querySnapshot.docs
          .map((doc) => Service.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      return servicesList;
    } catch (e) {
      throw Exception('Failed to fetch services: $e');
    }
  }

  Future<Service> getServiceById(String serviceId) async {
    try {
      DocumentSnapshot docSnapshot =
          await _firestore.collection('services').doc(serviceId).get();

      if (docSnapshot.exists) {
        return Service.fromJson(docSnapshot.data() as Map<String, dynamic>);
      } else {
        throw Exception('Service not found');
      }
    } catch (e) {
      throw Exception('Failed to fetch service: $e');
    }
  }

  Future<List<Service>> getServicesByType(String serviceType) async {
    try {
      // Query the 'services' collection for documents where 'serviceType' matches the provided type
      QuerySnapshot querySnapshot = await _firestore
          .collection('services')
          .where('serviceType', isEqualTo: serviceType)
          .get();

      // Map the documents to Service objects
      List<Service> serviceList = querySnapshot.docs
          .map((doc) => Service.fromJson(doc.data() as Map<String, dynamic>))
          .toList();

      return serviceList;
    } catch (e) {
      print("Error fetching services by type: $e");
      throw Exception('Failed to fetch services by type');
    }
  }

  Future<void> deleteServiceById(String serviceId) async {
    try {
      await _firestore.collection('services').doc(serviceId).delete();
      print("Service deleted successfully!");
    } catch (e) {
      print("Error deleting service: $e");
      throw Exception("Failed to delete service");
    }
  }

  Future<void> editService(String serviceId, Service service) async {
    try {
      // Get a reference to the document with the specified ID
      DocumentReference serviceDoc =
          _firestore.collection('services').doc(serviceId);

      // Update the document with the given fields
      await serviceDoc.update(service.toJson());
      print("Service updated successfully!");
    } catch (e) {
      print("Error updating service: $e");
      throw Exception("Failed to update service");
    }
  }
}
