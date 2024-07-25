import 'package:stacked/stacked.dart';

class ServiceProviderServicesViewModel extends BaseViewModel {
  final List<Map<String, dynamic>> services = [
    {
      'name': 'AC Servicing',
      'type': 'Electrical',
      'price': '\$250',
    },
    {
      'name': 'Engine Overhaul',
      'type': 'Mechanical',
      'price': '\$950',
    },

  ];
}
