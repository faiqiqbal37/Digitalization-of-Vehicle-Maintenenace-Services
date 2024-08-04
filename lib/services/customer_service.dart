import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/customer/customer.dart';

class CustomerService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> fetchCustomerById(String customerId) async {
    DocumentSnapshot doc =
        await _firestore.collection('customers').doc(customerId).get();
    return Customer.fromJson(doc.data() as Map<String, dynamic>).id;
  }
}
