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
                      'assets/ad_banner1.jpg',
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30),
            Text('Service Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  categoryButton(viewModel, 'Electrical'),
                  categoryButton(viewModel, 'Paint'),
                  categoryButton(viewModel, 'Bodywork'),
                  categoryButton(viewModel, 'Mechanical'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text('Services',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...viewModel.servicesNew.map((service) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomerServiceCard(
                        serviceProviderName: service.serviceName,
                        serviceName: service.serviceType,
                        price: service.price,
                        eta: service.eta,
                        vehicleType: service.vehicleType,
                        description: service.description,
                        customerId: viewModel.customer.id,
                        serviceId: service.id,
                        serviceProviderId: service.serviceProviderId,
                        onButtonPressed: viewModel.notifyListeners,
                      ),
                    );
                  }).toList(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement the navigation to the full list of services
                        viewModel.navigateToServices();
                      },
                      child: Text('View All'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue ,
                        shadowColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0), // Adjust the radius here
                        ),
                        side: BorderSide(
                          color: Colors.blue, // Border color
                          width: 1.5, // Border width
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // Upcoming bookings section
            FutureBuilder<List<Map<String, dynamic>>>(
              future: viewModel.loadPendingBookings(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                    return Column(
                      children: [
                        Text('Upcoming Bookings',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            var booking = snapshot.data![index];
                            return BookingCard(
                              serviceProviderName:
                              booking['serviceProviderName'],
                              serviceName: booking['serviceName'],
                              date: booking['date'],
                              status: booking['status'],
                              email: booking['email'],
                              phone: booking['phone'],
                              price: booking['price'],
                              location: booking['location'],
                            );
                          },
                        ),
                      ],
                    );
                  } else if (snapshot.hasData && snapshot.data!.isEmpty) {
                    return Center(
                      child: Text('No upcoming bookings.'),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  }
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
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
    viewModel.loadPendingBookings(); // Load upcoming bookings
  }

  @override
  CustomerHomeViewModel viewModelBuilder(BuildContext context) =>
      CustomerHomeViewModel();
}

Widget categoryButton(CustomerHomeViewModel viewModel, String category) {
  return Padding(
    padding:
        const EdgeInsets.symmetric(horizontal: 5.0), // Add horizontal padding
    child: ElevatedButton(
      onPressed: () => viewModel.selectCategory(category),
      child: Text(category),
      style: TextButton.styleFrom(
        foregroundColor:
            viewModel.selectedCategory == category ? Colors.white : Colors.blue,
        backgroundColor:
            viewModel.selectedCategory == category ? Colors.blue : Colors.white,
        shadowColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Adjust the radius here
        ),
        side: BorderSide(
          color: Colors.blue, // Border color
          width: 1.5, // Border width
        ),
      ),
    ),
  );
}
