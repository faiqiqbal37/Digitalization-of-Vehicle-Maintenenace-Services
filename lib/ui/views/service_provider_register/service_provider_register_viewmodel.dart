import 'package:disertation/models/serviceprovider/serviceprovider.dart';
import 'package:disertation/services/registration_service.dart';
import 'package:disertation/ui/views/service_provider_register/service_provider_register_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';

class ServiceProviderRegisterViewModel extends FormViewModel {

  final _registrationService = locator<RegistrationService>();

 void printMessage(){
   print(firstNameValue);
 }

 Future<void> registerUser() async {
   {
     try {
       ServiceProvider newServiceProvider = ServiceProvider(
         id: DateTime.now().millisecondsSinceEpoch, // or any other logic to generate a unique id
         firstname: firstNameValue.toString(),
         lastname: lastNameValue.toString(),
         businessName: businessNameValue.toString(),
         phoneNumber: phoneValue.toString(),
         email: emailValue.toString(),
         password: passwordValue.toString(),
       );

       await _registrationService.registerServiceProvider(newServiceProvider);

     } catch (e) {
     }
   }
 }

}
