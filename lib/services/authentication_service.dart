import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/customer/customer.dart';
import '../models/serviceprovider/serviceprovider.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  late ServiceProvider? serviceProvider; // Example ID
  late Customer? customer; // Example ID


  Future<ServiceProvider?> fetchServiceProviderByUid(String uid) async {
    try {
      DocumentSnapshot docSnapshot =
          await _db.collection('serviceProviders').doc(uid).get();

      if (docSnapshot.exists) {
        ServiceProvider serviceProvider = ServiceProvider.fromJson(
            docSnapshot.data() as Map<String, dynamic>);
        print(serviceProvider.email);
        return serviceProvider;
      } else {
        print('No document found for UID: $uid');
        return null;
      }
    } catch (e) {
      print('Error fetching document by UID: $e');
      return null;
    }
  }

  Future<Customer?> fetchCustomerByUid(String uid) async {
    try {
      DocumentSnapshot docSnapshot =
      await _db.collection('customers').doc(uid).get();

      if (docSnapshot.exists) {
        Customer customer = Customer.fromJson(
            docSnapshot.data() as Map<String, dynamic>);
        print(customer.email);
        return customer;
      } else {
        print('No document found for UID: $uid');
        return null;
      }
    } catch (e) {
      print('Error fetching document by UID: $e');
      return null;
    }
  }



  void authStateChanges(void Function(User? user) onAuthStateChanged) {
    _firebaseAuth.authStateChanges().listen(onAuthStateChanged);
  }

  // Method to sign out the user
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      serviceProvider = null;
      customer = null;
    } catch (e) {
      print("Error signing out: $e");
      throw Exception('Failed to sign out');
    }
  }

  Future<User?> loginUser(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      serviceProvider =
          await fetchServiceProviderByUid(userCredential.user!.uid);
      print("The User Id is: ${serviceProvider?.id}");
      return userCredential
          .user; // Return the user object upon successful login
    } catch (e) {
      print('Login Error: $e');
      throw Exception('Login failed: $e');
    }
  }

  Future<User?> loginCustomer(String email, String password) async {
    try {
      UserCredential userCredential =
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      customer =
      await fetchCustomerByUid(userCredential.user!.uid);
      print("The User Id is: ${serviceProvider?.id}");
      return userCredential
          .user; // Return the user object upon successful login
    } catch (e) {
      print('Login Error: $e');
      throw Exception('Login failed: $e');
    }
  }
}
