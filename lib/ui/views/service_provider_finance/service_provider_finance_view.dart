import 'package:disertation/ui/views/common_components/service_provider/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'service_provider_finance_viewmodel.dart';

class ServiceProviderFinanceView extends StackedView<ServiceProviderFinanceViewModel> {
  const ServiceProviderFinanceView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, ServiceProviderFinanceViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finances'),
        centerTitle: true,
      ),
      body: viewModel.isBusy
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Icon(Icons.account_balance_wallet, size: 50),
            Text('Finance Summary:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('Total Earnings: \£${viewModel.totalEarnings.toStringAsFixed(2)}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Divider(height: 40, thickness: 2),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Booking Id')),
                  DataColumn(label: Text('Customer Name')),
                  DataColumn(label: Text('Service Name')),
                  DataColumn(label: Text('Amount')),
                ],
                rows: viewModel.financeData.map((finance) => DataRow(cells: [
                  DataCell(Text(finance['date'])),
                  DataCell(Text(finance['bookingId'])),
                  DataCell(Text(finance['customerName'])),
                  DataCell(Text(finance['serviceName'])),
                  DataCell(Text(finance['amount'])),
                ])).toList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  @override
  ServiceProviderFinanceViewModel viewModelBuilder(BuildContext context) => ServiceProviderFinanceViewModel();

  @override
  void onViewModelReady(ServiceProviderFinanceViewModel viewModel) {
    viewModel.fetchFinanceData();
    super.onViewModelReady(viewModel);
  }
}
