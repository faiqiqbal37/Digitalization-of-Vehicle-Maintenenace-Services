import 'package:disertation/ui/views/common_components/customer/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'customer_booking_detail_viewmodel.dart';

class CustomerBookingDetailView
    extends StackedView<CustomerBookingDetailViewModel> {
  final String serviceName;
  final String serviceProviderName;
  final String price;
  final String phone;
  final String email;
  final String date;
  final String status;
  final String location;

  const CustomerBookingDetailView(
      {Key? key,
      required this.phone,
      required this.email,
      required this.price,
      required this.date,
      required this.serviceName,
      required this.serviceProviderName,
      required this.status,
      required this.location})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerBookingDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Detail'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child:
                Image.asset(
                  'assets/serviceProviderLogin.png',
                  fit: BoxFit.contain,
                  height: 150,
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Service Information',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        leading: Icon(Icons.build),
                        title:
                            Text(serviceName, style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.garage),
                        title: Text(serviceProviderName,
                            style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text('£$price', style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text(phone, style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text(email, style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text(location, style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Booking Details',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        leading: Icon(Icons.date_range),
                        title: Text(date, style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.check),
                        title: Text(status, style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                ),
              ),
              if (status == "completed") ...[
                SizedBox(height: 20),
                Text(
                  'Rate your experience:',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(height: 10),
                RatingBar(
                  initialRating: viewModel.rating,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  ratingWidget: RatingWidget(
                    full: Icon(Icons.star, color: Colors.amber),
                    half: Icon(Icons.star_half, color: Colors.amber),
                    empty: Icon(Icons.star_border, color: Colors.amber),
                  ),
                  onRatingUpdate: (rating) {
                    viewModel.setRating(rating);
                  },
                ),
              ],
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomerBottomNavigationBar(),
    );
  }

  @override
  CustomerBookingDetailViewModel viewModelBuilder(BuildContext context) =>
      CustomerBookingDetailViewModel();
}

class RatingBar extends StatelessWidget {
  final int itemCount;
  final RatingWidget ratingWidget;
  final double initialRating;
  final Axis direction;
  final bool allowHalfRating;
  final Function(double) onRatingUpdate;

  const RatingBar({
    Key? key,
    required this.itemCount,
    required this.ratingWidget,
    required this.initialRating,
    required this.direction,
    required this.allowHalfRating,
    required this.onRatingUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return IconButton(
          icon: index < initialRating ? ratingWidget.full : ratingWidget.empty,
          onPressed: () {
            onRatingUpdate((index + 1).toDouble());
          },
        );
      }),
    );
  }
}

class RatingWidget {
  final Widget full;
  final Widget half;
  final Widget empty;

  const RatingWidget({
    required this.full,
    required this.half,
    required this.empty,
  });
}
