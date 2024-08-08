// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:disertation/ui/views/admin_home/admin_home_view.dart' as _i28;
import 'package:disertation/ui/views/customer_add_booking/customer_add_booking_view.dart'
    as _i22;
import 'package:disertation/ui/views/customer_add_cars/customer_add_cars_view.dart'
    as _i17;
import 'package:disertation/ui/views/customer_booking_detail/customer_booking_detail_view.dart'
    as _i21;
import 'package:disertation/ui/views/customer_bookings/customer_bookings_view.dart'
    as _i18;
import 'package:disertation/ui/views/customer_cars/customer_cars_view.dart'
    as _i16;
import 'package:disertation/ui/views/customer_edit_profile/customer_edit_profile_view.dart'
    as _i24;
import 'package:disertation/ui/views/customer_home/customer_home_view.dart'
    as _i15;
import 'package:disertation/ui/views/customer_payment/customer_payment_view.dart'
    as _i23;
import 'package:disertation/ui/views/customer_profile/customer_profile_view.dart'
    as _i19;
import 'package:disertation/ui/views/customer_register/customer_register_view.dart'
    as _i7;
import 'package:disertation/ui/views/customer_service_detail/customer_service_detail_view.dart'
    as _i29;
import 'package:disertation/ui/views/customer_services/customer_services_view.dart'
    as _i20;
import 'package:disertation/ui/views/home/home_view.dart' as _i2;
import 'package:disertation/ui/views/initial_selection_screen/initial_selection_screen_view.dart'
    as _i8;
import 'package:disertation/ui/views/login/login_view.dart' as _i4;
import 'package:disertation/ui/views/login_service_provider/login_service_provider_view.dart'
    as _i9;
import 'package:disertation/ui/views/service_provider_add_service/service_provider_add_service_view.dart'
    as _i12;
import 'package:disertation/ui/views/service_provider_bookingdetail/service_provider_bookingdetail_view.dart'
    as _i14;
import 'package:disertation/ui/views/service_provider_bookings_listing/service_provider_bookings_listing_view.dart'
    as _i13;
import 'package:disertation/ui/views/service_provider_edit_profile/service_provider_edit_profile_view.dart'
    as _i25;
import 'package:disertation/ui/views/service_provider_edit_service/service_provider_edit_service_view.dart'
    as _i27;
import 'package:disertation/ui/views/service_provider_finance/service_provider_finance_view.dart'
    as _i30;
import 'package:disertation/ui/views/service_provider_home_screen/service_provider_home_screen_view.dart'
    as _i5;
import 'package:disertation/ui/views/service_provider_profile/service_provider_profile_view.dart'
    as _i10;
import 'package:disertation/ui/views/service_provider_register/service_provider_register_view.dart'
    as _i6;
import 'package:disertation/ui/views/service_provider_service_detail/service_provider_service_detail_view.dart'
    as _i26;
import 'package:disertation/ui/views/service_provider_services/service_provider_services_view.dart'
    as _i11;
import 'package:disertation/ui/views/startup/startup_view.dart' as _i3;
import 'package:flutter/material.dart' as _i31;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i32;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const loginView = '/login-view';

  static const serviceProviderHomeScreenView =
      '/service-provider-home-screen-view';

  static const serviceProviderRegisterView = '/service-provider-register-view';

  static const customerRegisterView = '/customer-register-view';

  static const initialSelectionScreenView = '/initial-selection-screen-view';

  static const loginServiceProviderView = '/login-service-provider-view';

  static const serviceProviderProfileView = '/service-provider-profile-view';

  static const serviceProviderServicesView = '/service-provider-services-view';

  static const serviceProviderAddServiceView =
      '/service-provider-add-service-view';

  static const serviceProviderBookingsListingView =
      '/service-provider-bookings-listing-view';

  static const serviceProviderBookingdetailView =
      '/service-provider-bookingdetail-view';

  static const customerHomeView = '/customer-home-view';

  static const customerCarsView = '/customer-cars-view';

  static const customerAddCarsView = '/customer-add-cars-view';

  static const customerBookingsView = '/customer-bookings-view';

  static const customerProfileView = '/customer-profile-view';

  static const customerServicesView = '/customer-services-view';

  static const customerBookingDetailView = '/customer-booking-detail-view';

  static const customerAddBookingView = '/customer-add-booking-view';

  static const customerPaymentView = '/customer-payment-view';

  static const customerEditProfileView = '/customer-edit-profile-view';

  static const serviceProviderEditProfileView =
      '/service-provider-edit-profile-view';

  static const serviceProviderServiceDetailView =
      '/service-provider-service-detail-view';

  static const serviceProviderEditServiceView =
      '/service-provider-edit-service-view';

  static const adminHomeView = '/admin-home-view';

  static const customerServiceDetailView = '/customer-service-detail-view';

  static const serviceProviderFinanceView = '/service-provider-finance-view';

  static const all = <String>{
    homeView,
    startupView,
    loginView,
    serviceProviderHomeScreenView,
    serviceProviderRegisterView,
    customerRegisterView,
    initialSelectionScreenView,
    loginServiceProviderView,
    serviceProviderProfileView,
    serviceProviderServicesView,
    serviceProviderAddServiceView,
    serviceProviderBookingsListingView,
    serviceProviderBookingdetailView,
    customerHomeView,
    customerCarsView,
    customerAddCarsView,
    customerBookingsView,
    customerProfileView,
    customerServicesView,
    customerBookingDetailView,
    customerAddBookingView,
    customerPaymentView,
    customerEditProfileView,
    serviceProviderEditProfileView,
    serviceProviderServiceDetailView,
    serviceProviderEditServiceView,
    adminHomeView,
    customerServiceDetailView,
    serviceProviderFinanceView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.serviceProviderHomeScreenView,
      page: _i5.ServiceProviderHomeScreenView,
    ),
    _i1.RouteDef(
      Routes.serviceProviderRegisterView,
      page: _i6.ServiceProviderRegisterView,
    ),
    _i1.RouteDef(
      Routes.customerRegisterView,
      page: _i7.CustomerRegisterView,
    ),
    _i1.RouteDef(
      Routes.initialSelectionScreenView,
      page: _i8.InitialSelectionScreenView,
    ),
    _i1.RouteDef(
      Routes.loginServiceProviderView,
      page: _i9.LoginServiceProviderView,
    ),
    _i1.RouteDef(
      Routes.serviceProviderProfileView,
      page: _i10.ServiceProviderProfileView,
    ),
    _i1.RouteDef(
      Routes.serviceProviderServicesView,
      page: _i11.ServiceProviderServicesView,
    ),
    _i1.RouteDef(
      Routes.serviceProviderAddServiceView,
      page: _i12.ServiceProviderAddServiceView,
    ),
    _i1.RouteDef(
      Routes.serviceProviderBookingsListingView,
      page: _i13.ServiceProviderBookingsListingView,
    ),
    _i1.RouteDef(
      Routes.serviceProviderBookingdetailView,
      page: _i14.ServiceProviderBookingdetailView,
    ),
    _i1.RouteDef(
      Routes.customerHomeView,
      page: _i15.CustomerHomeView,
    ),
    _i1.RouteDef(
      Routes.customerCarsView,
      page: _i16.CustomerCarsView,
    ),
    _i1.RouteDef(
      Routes.customerAddCarsView,
      page: _i17.CustomerAddCarsView,
    ),
    _i1.RouteDef(
      Routes.customerBookingsView,
      page: _i18.CustomerBookingsView,
    ),
    _i1.RouteDef(
      Routes.customerProfileView,
      page: _i19.CustomerProfileView,
    ),
    _i1.RouteDef(
      Routes.customerServicesView,
      page: _i20.CustomerServicesView,
    ),
    _i1.RouteDef(
      Routes.customerBookingDetailView,
      page: _i21.CustomerBookingDetailView,
    ),
    _i1.RouteDef(
      Routes.customerAddBookingView,
      page: _i22.CustomerAddBookingView,
    ),
    _i1.RouteDef(
      Routes.customerPaymentView,
      page: _i23.CustomerPaymentView,
    ),
    _i1.RouteDef(
      Routes.customerEditProfileView,
      page: _i24.CustomerEditProfileView,
    ),
    _i1.RouteDef(
      Routes.serviceProviderEditProfileView,
      page: _i25.ServiceProviderEditProfileView,
    ),
    _i1.RouteDef(
      Routes.serviceProviderServiceDetailView,
      page: _i26.ServiceProviderServiceDetailView,
    ),
    _i1.RouteDef(
      Routes.serviceProviderEditServiceView,
      page: _i27.ServiceProviderEditServiceView,
    ),
    _i1.RouteDef(
      Routes.adminHomeView,
      page: _i28.AdminHomeView,
    ),
    _i1.RouteDef(
      Routes.customerServiceDetailView,
      page: _i29.CustomerServiceDetailView,
    ),
    _i1.RouteDef(
      Routes.customerServiceDetailView,
      page: _i29.CustomerServiceDetailView,
    ),
    _i1.RouteDef(
      Routes.serviceProviderFinanceView,
      page: _i30.ServiceProviderFinanceView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.ServiceProviderHomeScreenView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.ServiceProviderHomeScreenView(),
        settings: data,
      );
    },
    _i6.ServiceProviderRegisterView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.ServiceProviderRegisterView(),
        settings: data,
      );
    },
    _i7.CustomerRegisterView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.CustomerRegisterView(),
        settings: data,
      );
    },
    _i8.InitialSelectionScreenView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.InitialSelectionScreenView(),
        settings: data,
      );
    },
    _i9.LoginServiceProviderView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.LoginServiceProviderView(),
        settings: data,
      );
    },
    _i10.ServiceProviderProfileView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.ServiceProviderProfileView(),
        settings: data,
      );
    },
    _i11.ServiceProviderServicesView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.ServiceProviderServicesView(),
        settings: data,
      );
    },
    _i12.ServiceProviderAddServiceView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.ServiceProviderAddServiceView(),
        settings: data,
      );
    },
    _i13.ServiceProviderBookingsListingView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.ServiceProviderBookingsListingView(),
        settings: data,
      );
    },
    _i14.ServiceProviderBookingdetailView: (data) {
      final args = data.getArgs<ServiceProviderBookingdetailViewArguments>(
          nullOk: false);
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => _i14.ServiceProviderBookingdetailView(
            key: args.key,
            customerName: args.customerName,
            email: args.email,
            serviceName: args.serviceName,
            location: args.location,
            customerPhone: args.customerPhone,
            status: args.status,
            date: args.date,
            servceCategory: args.servceCategory,
            servicePrice: args.servicePrice),
        settings: data,
      );
    },
    _i15.CustomerHomeView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.CustomerHomeView(),
        settings: data,
      );
    },
    _i16.CustomerCarsView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.CustomerCarsView(),
        settings: data,
      );
    },
    _i17.CustomerAddCarsView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.CustomerAddCarsView(),
        settings: data,
      );
    },
    _i18.CustomerBookingsView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.CustomerBookingsView(),
        settings: data,
      );
    },
    _i19.CustomerProfileView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.CustomerProfileView(),
        settings: data,
      );
    },
    _i20.CustomerServicesView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.CustomerServicesView(),
        settings: data,
      );
    },
    _i21.CustomerBookingDetailView: (data) {
      final args =
          data.getArgs<CustomerBookingDetailViewArguments>(nullOk: false);
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => _i21.CustomerBookingDetailView(
            key: args.key,
            phone: args.phone,
            email: args.email,
            price: args.price,
            date: args.date,
            serviceName: args.serviceName,
            serviceProviderName: args.serviceProviderName,
            status: args.status),
        settings: data,
      );
    },
    _i22.CustomerAddBookingView: (data) {
      final args = data.getArgs<CustomerAddBookingViewArguments>(nullOk: false);
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => _i22.CustomerAddBookingView(
            key: args.key,
            description: args.description,
            serviceName: args.serviceName,
            serviceProviderId: args.serviceProviderId,
            serviceId: args.serviceId,
            customerId: args.customerId,
            price: args.price),
        settings: data,
      );
    },
    _i23.CustomerPaymentView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i23.CustomerPaymentView(),
        settings: data,
      );
    },
    _i24.CustomerEditProfileView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i24.CustomerEditProfileView(),
        settings: data,
      );
    },
    _i25.ServiceProviderEditProfileView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i25.ServiceProviderEditProfileView(),
        settings: data,
      );
    },
    _i26.ServiceProviderServiceDetailView: (data) {
      final args = data.getArgs<ServiceProviderServiceDetailViewArguments>(
          nullOk: false);
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => _i26.ServiceProviderServiceDetailView(
            key: args.key, serviceId: args.serviceId),
        settings: data,
      );
    },
    _i27.ServiceProviderEditServiceView: (data) {
      final args =
          data.getArgs<ServiceProviderEditServiceViewArguments>(nullOk: false);
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => _i27.ServiceProviderEditServiceView(
            key: args.key, serviceId: args.serviceId),
        settings: data,
      );
    },
    _i28.AdminHomeView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i28.AdminHomeView(),
        settings: data,
      );
    },
    _i29.CustomerServiceDetailView: (data) {
      final args =
          data.getArgs<CustomerServiceDetailViewArguments>(nullOk: false);
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => _i29.CustomerServiceDetailView(
            key: args.key, serviceId: args.serviceId),
        settings: data,
      );
    },
    _i30.ServiceProviderFinanceView: (data) {
      return _i31.MaterialPageRoute<dynamic>(
        builder: (context) => const _i30.ServiceProviderFinanceView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ServiceProviderBookingdetailViewArguments {
  const ServiceProviderBookingdetailViewArguments({
    this.key,
    required this.customerName,
    required this.email,
    required this.serviceName,
    required this.location,
    required this.customerPhone,
    required this.status,
    required this.date,
    required this.servceCategory,
    required this.servicePrice,
  });

  final _i31.Key? key;

  final String customerName;

  final String email;

  final String serviceName;

  final String location;

  final String customerPhone;

  final String status;

  final String date;

  final String servceCategory;

  final String servicePrice;

  @override
  String toString() {
    return '{"key": "$key", "customerName": "$customerName", "email": "$email", "serviceName": "$serviceName", "location": "$location", "customerPhone": "$customerPhone", "status": "$status", "date": "$date", "servceCategory": "$servceCategory", "servicePrice": "$servicePrice"}';
  }

  @override
  bool operator ==(covariant ServiceProviderBookingdetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.customerName == customerName &&
        other.email == email &&
        other.serviceName == serviceName &&
        other.location == location &&
        other.customerPhone == customerPhone &&
        other.status == status &&
        other.date == date &&
        other.servceCategory == servceCategory &&
        other.servicePrice == servicePrice;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        customerName.hashCode ^
        email.hashCode ^
        serviceName.hashCode ^
        location.hashCode ^
        customerPhone.hashCode ^
        status.hashCode ^
        date.hashCode ^
        servceCategory.hashCode ^
        servicePrice.hashCode;
  }
}

class CustomerBookingDetailViewArguments {
  const CustomerBookingDetailViewArguments({
    this.key,
    required this.phone,
    required this.email,
    required this.price,
    required this.date,
    required this.serviceName,
    required this.serviceProviderName,
    required this.status,
  });

  final _i31.Key? key;

  final String phone;

  final String email;

  final String price;

  final String date;

  final String serviceName;

  final String serviceProviderName;

  final String status;

  @override
  String toString() {
    return '{"key": "$key", "phone": "$phone", "email": "$email", "price": "$price", "date": "$date", "serviceName": "$serviceName", "serviceProviderName": "$serviceProviderName", "status": "$status"}';
  }

  @override
  bool operator ==(covariant CustomerBookingDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.phone == phone &&
        other.email == email &&
        other.price == price &&
        other.date == date &&
        other.serviceName == serviceName &&
        other.serviceProviderName == serviceProviderName &&
        other.status == status;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        phone.hashCode ^
        email.hashCode ^
        price.hashCode ^
        date.hashCode ^
        serviceName.hashCode ^
        serviceProviderName.hashCode ^
        status.hashCode;
  }
}

class CustomerAddBookingViewArguments {
  const CustomerAddBookingViewArguments({
    this.key,
    required this.description,
    required this.serviceName,
    required this.serviceProviderId,
    required this.serviceId,
    required this.customerId,
    required this.price,
  });

  final _i31.Key? key;

  final String? description;

  final String serviceName;

  final String serviceProviderId;

  final String serviceId;

  final String customerId;

  final String price;

  @override
  String toString() {
    return '{"key": "$key", "description": "$description", "serviceName": "$serviceName", "serviceProviderId": "$serviceProviderId", "serviceId": "$serviceId", "customerId": "$customerId", "price": "$price"}';
  }

  @override
  bool operator ==(covariant CustomerAddBookingViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.description == description &&
        other.serviceName == serviceName &&
        other.serviceProviderId == serviceProviderId &&
        other.serviceId == serviceId &&
        other.customerId == customerId &&
        other.price == price;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        description.hashCode ^
        serviceName.hashCode ^
        serviceProviderId.hashCode ^
        serviceId.hashCode ^
        customerId.hashCode ^
        price.hashCode;
  }
}

class ServiceProviderServiceDetailViewArguments {
  const ServiceProviderServiceDetailViewArguments({
    this.key,
    required this.serviceId,
  });

  final _i31.Key? key;

  final String serviceId;

  @override
  String toString() {
    return '{"key": "$key", "serviceId": "$serviceId"}';
  }

  @override
  bool operator ==(covariant ServiceProviderServiceDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.serviceId == serviceId;
  }

  @override
  int get hashCode {
    return key.hashCode ^ serviceId.hashCode;
  }
}

class ServiceProviderEditServiceViewArguments {
  const ServiceProviderEditServiceViewArguments({
    this.key,
    required this.serviceId,
  });

  final _i31.Key? key;

  final String serviceId;

  @override
  String toString() {
    return '{"key": "$key", "serviceId": "$serviceId"}';
  }

  @override
  bool operator ==(covariant ServiceProviderEditServiceViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.serviceId == serviceId;
  }

  @override
  int get hashCode {
    return key.hashCode ^ serviceId.hashCode;
  }
}

class CustomerServiceDetailViewArguments {
  const CustomerServiceDetailViewArguments({
    this.key,
    required this.serviceId,
  });

  final _i31.Key? key;

  final String serviceId;

  @override
  String toString() {
    return '{"key": "$key", "serviceId": "$serviceId"}';
  }

  @override
  bool operator ==(covariant CustomerServiceDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.serviceId == serviceId;
  }

  @override
  int get hashCode {
    return key.hashCode ^ serviceId.hashCode;
  }
}

extension NavigatorStateExtension on _i32.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToServiceProviderHomeScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.serviceProviderHomeScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToServiceProviderRegisterView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.serviceProviderRegisterView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomerRegisterView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.customerRegisterView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInitialSelectionScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.initialSelectionScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginServiceProviderView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginServiceProviderView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToServiceProviderProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.serviceProviderProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToServiceProviderServicesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.serviceProviderServicesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToServiceProviderAddServiceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.serviceProviderAddServiceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToServiceProviderBookingsListingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.serviceProviderBookingsListingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToServiceProviderBookingdetailView({
    _i31.Key? key,
    required String customerName,
    required String email,
    required String serviceName,
    required String location,
    required String customerPhone,
    required String status,
    required String date,
    required String servceCategory,
    required String servicePrice,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.serviceProviderBookingdetailView,
        arguments: ServiceProviderBookingdetailViewArguments(
            key: key,
            customerName: customerName,
            email: email,
            serviceName: serviceName,
            location: location,
            customerPhone: customerPhone,
            status: status,
            date: date,
            servceCategory: servceCategory,
            servicePrice: servicePrice),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomerHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.customerHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomerCarsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.customerCarsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomerAddCarsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.customerAddCarsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomerBookingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.customerBookingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomerProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.customerProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomerServicesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.customerServicesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomerBookingDetailView({
    _i31.Key? key,
    required String phone,
    required String email,
    required String price,
    required String date,
    required String serviceName,
    required String serviceProviderName,
    required String status,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.customerBookingDetailView,
        arguments: CustomerBookingDetailViewArguments(
            key: key,
            phone: phone,
            email: email,
            price: price,
            date: date,
            serviceName: serviceName,
            serviceProviderName: serviceProviderName,
            status: status),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomerAddBookingView({
    _i31.Key? key,
    required String? description,
    required String serviceName,
    required String serviceProviderId,
    required String serviceId,
    required String customerId,
    required String price,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.customerAddBookingView,
        arguments: CustomerAddBookingViewArguments(
            key: key,
            description: description,
            serviceName: serviceName,
            serviceProviderId: serviceProviderId,
            serviceId: serviceId,
            customerId: customerId,
            price: price),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomerPaymentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.customerPaymentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomerEditProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.customerEditProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToServiceProviderEditProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.serviceProviderEditProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToServiceProviderServiceDetailView({
    _i31.Key? key,
    required String serviceId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.serviceProviderServiceDetailView,
        arguments: ServiceProviderServiceDetailViewArguments(
            key: key, serviceId: serviceId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToServiceProviderEditServiceView({
    _i31.Key? key,
    required String serviceId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.serviceProviderEditServiceView,
        arguments: ServiceProviderEditServiceViewArguments(
            key: key, serviceId: serviceId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.adminHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomerServiceDetailView({
    _i31.Key? key,
    required String serviceId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.customerServiceDetailView,
        arguments:
            CustomerServiceDetailViewArguments(key: key, serviceId: serviceId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToServiceProviderFinanceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.serviceProviderFinanceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithServiceProviderHomeScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.serviceProviderHomeScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithServiceProviderRegisterView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.serviceProviderRegisterView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomerRegisterView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.customerRegisterView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithInitialSelectionScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.initialSelectionScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginServiceProviderView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginServiceProviderView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithServiceProviderProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.serviceProviderProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithServiceProviderServicesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.serviceProviderServicesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithServiceProviderAddServiceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.serviceProviderAddServiceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithServiceProviderBookingsListingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.serviceProviderBookingsListingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithServiceProviderBookingdetailView({
    _i31.Key? key,
    required String customerName,
    required String email,
    required String serviceName,
    required String location,
    required String customerPhone,
    required String status,
    required String date,
    required String servceCategory,
    required String servicePrice,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.serviceProviderBookingdetailView,
        arguments: ServiceProviderBookingdetailViewArguments(
            key: key,
            customerName: customerName,
            email: email,
            serviceName: serviceName,
            location: location,
            customerPhone: customerPhone,
            status: status,
            date: date,
            servceCategory: servceCategory,
            servicePrice: servicePrice),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomerHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.customerHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomerCarsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.customerCarsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomerAddCarsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.customerAddCarsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomerBookingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.customerBookingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomerProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.customerProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomerServicesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.customerServicesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomerBookingDetailView({
    _i31.Key? key,
    required String phone,
    required String email,
    required String price,
    required String date,
    required String serviceName,
    required String serviceProviderName,
    required String status,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.customerBookingDetailView,
        arguments: CustomerBookingDetailViewArguments(
            key: key,
            phone: phone,
            email: email,
            price: price,
            date: date,
            serviceName: serviceName,
            serviceProviderName: serviceProviderName,
            status: status),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomerAddBookingView({
    _i31.Key? key,
    required String? description,
    required String serviceName,
    required String serviceProviderId,
    required String serviceId,
    required String customerId,
    required String price,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.customerAddBookingView,
        arguments: CustomerAddBookingViewArguments(
            key: key,
            description: description,
            serviceName: serviceName,
            serviceProviderId: serviceProviderId,
            serviceId: serviceId,
            customerId: customerId,
            price: price),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomerPaymentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.customerPaymentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomerEditProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.customerEditProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithServiceProviderEditProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.serviceProviderEditProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithServiceProviderServiceDetailView({
    _i31.Key? key,
    required String serviceId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.serviceProviderServiceDetailView,
        arguments: ServiceProviderServiceDetailViewArguments(
            key: key, serviceId: serviceId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithServiceProviderEditServiceView({
    _i31.Key? key,
    required String serviceId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.serviceProviderEditServiceView,
        arguments: ServiceProviderEditServiceViewArguments(
            key: key, serviceId: serviceId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.adminHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomerServiceDetailView({
    _i31.Key? key,
    required String serviceId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.customerServiceDetailView,
        arguments:
            CustomerServiceDetailViewArguments(key: key, serviceId: serviceId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithServiceProviderFinanceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.serviceProviderFinanceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
