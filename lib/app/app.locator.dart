// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_services/src/bottom_sheet/bottom_sheet_service.dart';
import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_shared/stacked_shared.dart';

import '../services/authentication_service.dart';
import '../services/booking_service.dart';
import '../services/cars_service_service.dart';
import '../services/customer_service.dart';
import '../services/registration_service.dart';
import '../services/service_provider_service.dart';
import '../services/services_service.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => RegistrationService());
  locator.registerLazySingleton(() => ServicesService());
  locator.registerLazySingleton(() => CarsServiceService());
  locator.registerLazySingleton(() => BookingService());
  locator.registerLazySingleton(() => CustomerService());
  locator.registerLazySingleton(() => ServiceProviderService());
}
