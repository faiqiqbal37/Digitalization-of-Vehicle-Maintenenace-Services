import 'package:disertation/ui/views/common_components/admin/admin_navigation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'admin_finances_viewmodel.dart';

class AdminFinancesView extends StackedView<AdminFinancesViewModel> {
  const AdminFinancesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdminFinancesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: viewModel.isBusy
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  Center(
                    child: Column(
                      children: [
                        Icon(Icons.account_balance_wallet, size: 50),
                        SizedBox(height: 10),
                        Text(
                          'Finance Summary',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Total Earnings: \£${viewModel.totalEarnings.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[700]),
                    ),
                  ),
                  Divider(height: 40, thickness: 2),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      headingRowColor: MaterialStateColor.resolveWith(
                          (states) => Colors.blue[200]!),
                      columnSpacing: 16.0,
                      columns: [
                        DataColumn(
                            label: Text('Date',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Booking Id',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Customer Name',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Service Provider Name',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Service Name',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Amount',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                      ],
                      rows: viewModel.financeData.map((finance) {
                        return DataRow(
                          cells: [
                            DataCell(Text(finance['date'],
                                style: TextStyle(fontSize: 14))),
                            DataCell(Text(finance['bookingId'],
                                style: TextStyle(fontSize: 14))),
                            DataCell(Text(finance['customerName'],
                                style: TextStyle(fontSize: 14))),
                            DataCell(Text(finance['serviceProviderName'],
                                style: TextStyle(fontSize: 14))),
                            DataCell(Text(finance['serviceName'],
                                style: TextStyle(fontSize: 14))),
                            DataCell(Text(finance['amount'],
                                style: TextStyle(
                                    fontSize: 14, color: Colors.green[700]))),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
      bottomNavigationBar: AdminBottomNavigationBar(),
    );
  }

  @override
  void onViewModelReady(AdminFinancesViewModel viewModel) {
    viewModel.fetchAllFinanceData();
    super.onViewModelReady(viewModel);
  }

  @override
  AdminFinancesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AdminFinancesViewModel();
}
