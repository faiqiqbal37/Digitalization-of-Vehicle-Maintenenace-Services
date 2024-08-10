import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../common_components/customer/navigation_bar.dart';
import '../customer_bookings/booking_card.dart';
import '../customer_services/service_card.dart';
import 'booking_widget.dart';
import 'category_widget.dart';
import 'customer_home_viewmodel.dart';

class CustomerHomeView extends StackedView<CustomerHomeViewModel> {
  const CustomerHomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerHomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Hi ${viewModel.customerName}!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for Services.",
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Advertisement banners
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 400,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    color: Colors.grey[300],
                    child: Image.asset(
                      'assets/ad_banner1.jpg', // Example image URL
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30),
            // Category widgets
            Text('Service Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () =>
                        viewModel.fetchServicesBasedOnCategory("Electrical"),
                    // Action or navigation
                    child: Text('Electrical'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.white,
                      shadowColor: Colors.blueAccent,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        viewModel.fetchServicesBasedOnCategory("Paint"),
                    // Action or navigation
                    child: Text('Paint'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.white,
                      shadowColor: Colors.blueAccent,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        viewModel.fetchServicesBasedOnCategory("Bodywork"),
                    // Action or navigation
                    child: Text('Bodywork'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.white,
                      shadowColor: Colors.blueAccent,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        viewModel.fetchServicesBasedOnCategory("Mechanical"),
                    // Action or navigation
                    child: Text('Mechanical'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.white,
                      shadowColor: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            // New section: Services List
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: viewModel.servicesNew.length,
                itemBuilder: (context, index) {
                  return CustomerServiceCard(
                    serviceProviderName:
                        viewModel.servicesNew[index].serviceName,
                    serviceName: viewModel.servicesNew[index].serviceType,
                    price: viewModel.servicesNew[index].price,
                    eta: viewModel.servicesNew[index].eta,
                    vehicleType: viewModel.servicesNew[index].vehicleType,
                    description: viewModel.servicesNew[index].description,
                    customerId: viewModel.customer.id,
                    serviceId: viewModel.servicesNew[index].id,
                    serviceProviderId:
                        viewModel.servicesNew[index].serviceProviderId,
                    onButtonPressed: viewModel.notifyListeners,
                  );
                }),
            SizedBox(height: 30),
            // Upcoming bookings section
            Text('Upcoming Bookings',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
              height: 250,
              child: FutureBuilder(
                future: viewModel.loadCustomerBookings(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    var bookings = snapshot.data!
                        .where((booking) => booking['status'] == 'pending')
                        .toList();
                    if (bookings.isEmpty) {
                      return Center(child: Text('No pending bookings'));
                    }
                    return ListView.builder(
                        itemCount: bookings.length,
                        itemBuilder: (context, index) {
                          var booking = bookings[index];
                          return BookingCard(
                            serviceProviderName: booking['serviceProviderName'],
                            serviceName: booking['serviceName'],
                            date: booking['date'],
                            status: booking['status'],
                            email: booking['email'],
                            phone: booking['phone'],
                            price: booking['price'],
                          );
                        });
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomerBottomNavigationBar(),
    );
  }

  @override
  void onViewModelReady(CustomerHomeViewModel viewModel) {
    viewModel.getCustomerName();
    viewModel.fetchServices();
    viewModel.fetchCustomer();
  }

  @override
  CustomerHomeViewModel viewModelBuilder(BuildContext context) =>
      CustomerHomeViewModel();
}
