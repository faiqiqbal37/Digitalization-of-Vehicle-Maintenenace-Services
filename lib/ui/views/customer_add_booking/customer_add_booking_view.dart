import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../models/booking/booking.dart';
import '../../../models/payment/payment.dart';
import 'customer_add_booking_viewmodel.dart';

class CustomerAddBookingView extends StackedView<CustomerAddBookingViewModel> {
  final String? description;
  final String serviceName;
  final String serviceId;
  final String customerId;
  final String serviceProviderId;
  final String price;

  const CustomerAddBookingView(
      {Key? key,
      required this.description,
      required this.serviceName,
      required this.serviceProviderId,
      required this.serviceId,
      required this.customerId,
      required this.price})
      : super(key: key);

  @override
  void onViewModelReady(CustomerAddBookingViewModel viewModel) {
    viewModel.fetchCars(customerId);
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    CustomerAddBookingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Service'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: Colors.white,
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionTitle(context, 'Service Name'),
                SizedBox(height: 8.0),
                _buildTextValue(context, serviceName),
                SizedBox(height: 16.0),
                _buildSectionTitle(context, 'Service Description'),
                SizedBox(height: 8.0),
                _buildTextValue(
                    context, description ?? 'No description available'),
                SizedBox(height: 16.0),
                _buildSectionTitle(context, 'Select Car'),
                SizedBox(height: 8.0),
                _buildCarDropdown(context, viewModel),
                SizedBox(height: 16.0),
                _buildSectionTitle(context, 'Select Date'),
                SizedBox(height: 8.0),
                _buildDateSelector(context, viewModel),
                SizedBox(height: 16.0),
                _buildSectionTitle(context, 'Select Time'),
                SizedBox(height: 8.0),
                _buildTimeSelector(context, viewModel),
                SizedBox(height: 24.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () => _onBookPressed(context, viewModel),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 24.0),
                      child: Text(
                        'Book',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // Adjust the radius here
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _buildTextValue(BuildContext context, String value) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        value,
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }

  Widget _buildCarDropdown(
      BuildContext context, CustomerAddBookingViewModel viewModel) {
    return DropdownButtonFormField<String>(
      value: viewModel.selectedCarId,
      items: viewModel.cars.map((car) {
        return DropdownMenuItem<String>(
          value: car.id,
          child: Text('${car.vehicleMake} ${car.vehicleModel}'),
        );
      }).toList(),
      onChanged: (String? newValue) {
        viewModel.selectCar(newValue);
      },
      decoration: InputDecoration(
        hintText: 'Select a car',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      ),
      isExpanded: true,
    );
  }

  Widget _buildDateSelector(
      BuildContext context, CustomerAddBookingViewModel viewModel) {
    return GestureDetector(
      onTap: () => viewModel.pickDate(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          viewModel.selectedDate != null
              ? "${viewModel.selectedDate.toLocal()}".split(' ')[0]
              : 'Select a date',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }

  Widget _buildTimeSelector(
      BuildContext context, CustomerAddBookingViewModel viewModel) {
    return GestureDetector(
      onTap: () => viewModel.pickTime(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          viewModel.selectedTime != null
              ? viewModel.selectedTime.format(context)
              : 'Select a time',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }

  void _onBookPressed(
      BuildContext context, CustomerAddBookingViewModel viewModel) {
    if (viewModel.selectedDate == null ||
        viewModel.selectedTime == null ||
        viewModel.selectedCarId == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Please select date, time, and car'),
        backgroundColor: Colors.red,
      ));
      return;
    }
    String bookingId = DateTime.now().millisecondsSinceEpoch.toString();
    String paymentId = DateTime.now().millisecondsSinceEpoch.toString();
    Booking booking = Booking(
        id: bookingId,
        serviceProviderId: serviceProviderId,
        customerId: customerId,
        serviceId: serviceId,
        vehicleId: viewModel.selectedCarId,
        date: DateTime.now());
    Payment payment = Payment(
        id: paymentId,
        serviceProviderId: serviceProviderId,
        customerId: customerId,
        bookingId: bookingId,
        amount: int.parse(price),
        date: DateTime.now());
    viewModel.addBooking(booking, payment);
  }

  @override
  CustomerAddBookingViewModel viewModelBuilder(BuildContext context) =>
      CustomerAddBookingViewModel();
}
