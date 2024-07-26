import 'package:disertation/ui/views/service_provider_add_service/service_provider_add_service_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'service_provider_add_service_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'serviceName'),
  FormTextField(name: 'description'),
  FormTextField(name: 'price'),
  FormTextField(name: 'ETA'),
])
class ServiceProviderAddServiceView
    extends StackedView<ServiceProviderAddServiceViewModel>
    with $ServiceProviderAddServiceView {
  const ServiceProviderAddServiceView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderAddServiceViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a Service'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Service Name:',
                  border: OutlineInputBorder(),
                ),
                controller: serviceNameController,
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: viewModel.serviceType,
                decoration: InputDecoration(
                  labelText: 'Service Type:',
                  border: OutlineInputBorder(),
                ),
                items: <String>['Mechanical', 'Electrical', 'Bodywork']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String) => {},
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Description:',
                  border: OutlineInputBorder(),
                ),
                controller: descriptionController,
                maxLines: 3,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Price:',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                controller: priceController,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Estimated Finish Time:',
                  border: OutlineInputBorder(),
                ),
                controller: etaController,
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: viewModel.vehicleType,
                decoration: InputDecoration(
                  labelText: 'Vehicle Type:',
                  border: OutlineInputBorder(),
                ),
                onChanged: (String? newValue) {},
                items: <String>['SUV', 'Sedan', 'Coupe', 'Hatchback']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => {},
                child: Text('Add Service'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void onModelReady(ServiceProviderAddServiceViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  ServiceProviderAddServiceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderAddServiceViewModel();
}
