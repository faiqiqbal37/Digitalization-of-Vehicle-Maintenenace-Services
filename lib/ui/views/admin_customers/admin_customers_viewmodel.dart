import 'package:disertation/models/customer/customer.dart';
import 'package:disertation/services/customer_service.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';

class AdminCustomersViewModel extends BaseViewModel {

 final _customersService  = locator<CustomerService>();
 late List<Customer> customersNew = [];


 Future<void> fetchCustomers() async {
  try {
   customersNew = await _customersService.fetchAllCustomers();
   for (Customer customer in customersNew) {
    print('Service Name: ${customer.firstname}');
   }
   notifyListeners();
  } catch (e) {
   print('Error fetching services: $e');
  }
 }

}
