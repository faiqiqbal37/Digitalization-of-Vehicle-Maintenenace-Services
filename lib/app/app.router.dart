// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:disertation/ui/views/customer_add_cars/customer_add_cars_view.dart'
    as _i17;
import 'package:disertation/ui/views/customer_bookings/customer_bookings_view.dart'
    as _i18;
import 'package:disertation/ui/views/customer_cars/customer_cars_view.dart'
    as _i16;
import 'package:disertation/ui/views/customer_home/customer_home_view.dart'
    as _i15;
import 'package:disertation/ui/views/customer_profile/customer_profile_view.dart'
    as _i19;
import 'package:disertation/ui/views/customer_register/customer_register_view.dart'
    as _i7;
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
import 'package:disertation/ui/views/service_provider_home_screen/service_provider_home_screen_view.dart'
    as _i5;
import 'package:disertation/ui/views/service_provider_profile/service_provider_profile_view.dart'
    as _i10;
import 'package:disertation/ui/views/service_provider_register/service_provider_register_view.dart'
    as _i6;
import 'package:disertation/ui/views/service_provider_services/service_provider_services_view.dart'
    as _i11;
import 'package:disertation/ui/views/startup/startup_view.dart' as _i3;
import 'package:flutter/material.dart' as _i21;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i22;

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
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.ServiceProviderHomeScreenView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.ServiceProviderHomeScreenView(),
        settings: data,
      );
    },
    _i6.ServiceProviderRegisterView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.ServiceProviderRegisterView(),
        settings: data,
      );
    },
    _i7.CustomerRegisterView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.CustomerRegisterView(),
        settings: data,
      );
    },
    _i8.InitialSelectionScreenView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.InitialSelectionScreenView(),
        settings: data,
      );
    },
    _i9.LoginServiceProviderView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.LoginServiceProviderView(),
        settings: data,
      );
    },
    _i10.ServiceProviderProfileView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.ServiceProviderProfileView(),
        settings: data,
      );
    },
    _i11.ServiceProviderServicesView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.ServiceProviderServicesView(),
        settings: data,
      );
    },
    _i12.ServiceProviderAddServiceView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.ServiceProviderAddServiceView(),
        settings: data,
      );
    },
    _i13.ServiceProviderBookingsListingView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.ServiceProviderBookingsListingView(),
        settings: data,
      );
    },
    _i14.ServiceProviderBookingdetailView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.ServiceProviderBookingdetailView(),
        settings: data,
      );
    },
    _i15.CustomerHomeView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.CustomerHomeView(),
        settings: data,
      );
    },
    _i16.CustomerCarsView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.CustomerCarsView(),
        settings: data,
      );
    },
    _i17.CustomerAddCarsView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.CustomerAddCarsView(),
        settings: data,
      );
    },
    _i18.CustomerBookingsView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.CustomerBookingsView(),
        settings: data,
      );
    },
    _i19.CustomerProfileView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.CustomerProfileView(),
        settings: data,
      );
    },
    _i20.CustomerServicesView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.CustomerServicesView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i22.NavigationService {
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

  Future<dynamic> navigateToServiceProviderBookingdetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.serviceProviderBookingdetailView,
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

  Future<dynamic> replaceWithServiceProviderBookingdetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.serviceProviderBookingdetailView,
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
}
