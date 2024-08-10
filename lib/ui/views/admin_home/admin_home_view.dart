import 'package:disertation/ui/views/admin_home/recent_activity_card.dart';
import 'package:disertation/ui/views/common_components/admin/admin_navigation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'admin_home_viewmodel.dart';
import 'key_metrics_card.dart';

class AdminHomeView extends StackedView<AdminHomeViewModel> {
  const AdminHomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdminHomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dashboard"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Key Metrics",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              KeyMetricsCard(metric: "Total Users", value: "1200"),
              KeyMetricsCard(metric: "Total Service Providers", value: "1000"),
              KeyMetricsCard(metric: "Total Bookings", value: "15000"),
              KeyMetricsCard(metric: "Active Bookings", value: "125"),
              SizedBox(height: 20),
              Text("Recent Activity",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              RecentActivityCard(
                title: "Booking:",
                content:
                    "Service Name: AC Servicing\nDate: 20/01/2024\nPrice: \$250\nStatus: Pending",
                buttonText: "View",
              ),
              RecentActivityCard(
                title: "Service Provider Added:",
                content:
                    "Business Name: Edwards Garage\nDate: 20/01/2024\nLocation: 10 Brooklyn St, Sheffield\nMobile Number: +44 897456321",
                buttonText: "View",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AdminBottomNavigationBar(),
    );
  }

  @override
  AdminHomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AdminHomeViewModel();
}
