import 'package:disertation/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginViewModel extends FormViewModel {

  final _navigationService = locator<NavigationService>();

  void siginInWithGoogle(){

  }

  void siginInWithEmail(){

  }

  void navigateToHome(){
    _navigationService.navigateToHomeView();
  }
}
