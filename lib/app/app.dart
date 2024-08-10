import 'package:disertation/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:disertation/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:disertation/ui/views/home/home_view.dart';
import 'package:disertation/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:disertation/ui/views/login/login_view.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:disertation/ui/views/service_provider_home_screen/service_provider_home_screen_view.dart';
import 'package:disertation/ui/views/service_provider_register/service_provider_register_view.dart';
import 'package:disertation/ui/views/customer_register/customer_register_view.dart';
import 'package:disertation/ui/views/initial_selection_screen/initial_selection_screen_view.dart';
import 'package:disertation/ui/views/login_service_provider/login_service_provider_view.dart';
import 'package:disertation/ui/views/service_provider_profile/service_provider_profile_view.dart';
import 'package:disertation/ui/views/service_provider_services/service_provider_services_view.dart';
import 'package:disertation/ui/views/service_provider_add_service/service_provider_add_service_view.dart';
import 'package:disertation/ui/views/service_provider_bookings_listing/service_provider_bookings_listing_view.dart';
import 'package:disertation/ui/views/service_provider_bookingdetail/service_provider_bookingdetail_view.dart';
import 'package:disertation/services/registration_service.dart';
import 'package:disertation/services/services_service.dart';
import 'package:disertation/ui/views/customer_home/customer_home_view.dart';
import 'package:disertation/ui/views/customer_cars/customer_cars_view.dart';
import 'package:disertation/ui/views/customer_add_cars/customer_add_cars_view.dart';
import 'package:disertation/services/cars_service_service.dart';
import 'package:disertation/services/booking_service.dart';
import 'package:disertation/ui/views/customer_bookings/customer_bookings_view.dart';
import 'package:disertation/ui/views/customer_profile/customer_profile_view.dart';
import 'package:disertation/ui/views/customer_services/customer_services_view.dart';
import 'package:disertation/ui/views/customer_booking_detail/customer_booking_detail_view.dart';
import 'package:disertation/ui/views/customer_add_booking/customer_add_booking_view.dart';
import 'package:disertation/ui/views/customer_payment/customer_payment_view.dart';
import 'package:disertation/services/customer_service.dart';
import 'package:disertation/ui/views/customer_edit_profile/customer_edit_profile_view.dart';
import 'package:disertation/ui/views/service_provider_edit_profile/service_provider_edit_profile_view.dart';
import 'package:disertation/services/service_provider_service.dart';
import 'package:disertation/ui/views/service_provider_service_detail/service_provider_service_detail_view.dart';
import 'package:disertation/ui/views/service_provider_edit_service/service_provider_edit_service_view.dart';
import 'package:disertation/ui/views/admin_home/admin_home_view.dart';
import 'package:disertation/ui/views/customer_service_detail/customer_service_detail_view.dart';
import 'package:disertation/ui/views/customer_service_detail/customer_service_detail_view.dart';
import 'package:disertation/ui/views/service_provider_finance/service_provider_finance_view.dart';
import 'package:disertation/ui/views/admin_customers/admin_customers_view.dart';
import 'package:disertation/ui/views/admin_service_providers/admin_service_providers_view.dart';
import 'package:disertation/ui/views/admin_bookings/admin_bookings_view.dart';
import 'package:disertation/ui/views/admin_finances/admin_finances_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: ServiceProviderHomeScreenView),
    MaterialRoute(page: ServiceProviderRegisterView),
    MaterialRoute(page: CustomerRegisterView),
    MaterialRoute(page: InitialSelectionScreenView),
    MaterialRoute(page: LoginServiceProviderView),
    MaterialRoute(page: ServiceProviderProfileView),
    MaterialRoute(page: ServiceProviderServicesView),
    MaterialRoute(page: ServiceProviderAddServiceView),
    MaterialRoute(page: ServiceProviderBookingsListingView),
    MaterialRoute(page: ServiceProviderBookingdetailView),
    MaterialRoute(page: CustomerHomeView),
    MaterialRoute(page: CustomerCarsView),
    MaterialRoute(page: CustomerAddCarsView),
    MaterialRoute(page: CustomerBookingsView),
    MaterialRoute(page: CustomerProfileView),
    MaterialRoute(page: CustomerServicesView),
    MaterialRoute(page: CustomerBookingDetailView),
    MaterialRoute(page: CustomerAddBookingView),
    MaterialRoute(page: CustomerPaymentView),
    MaterialRoute(page: CustomerEditProfileView),
    MaterialRoute(page: ServiceProviderEditProfileView),
    MaterialRoute(page: ServiceProviderServiceDetailView),
    MaterialRoute(page: ServiceProviderEditServiceView),
    MaterialRoute(page: AdminHomeView),
    MaterialRoute(page: CustomerServiceDetailView),
    MaterialRoute(page: CustomerServiceDetailView),
    MaterialRoute(page: ServiceProviderFinanceView),
    MaterialRoute(page: AdminCustomersView),
    MaterialRoute(page: AdminServiceProvidersView),
    MaterialRoute(page: AdminBookingsView),
    MaterialRoute(page: AdminFinancesView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: RegistrationService),
    LazySingleton(classType: ServicesService),
    LazySingleton(classType: CarsServiceService),
    LazySingleton(classType: BookingService),
    LazySingleton(classType: CustomerService),
    LazySingleton(classType: ServiceProviderService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
