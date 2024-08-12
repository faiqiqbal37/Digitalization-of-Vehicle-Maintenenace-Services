import 'package:disertation/ui/views/service_provider_edit_service/service_provider_edit_service_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'service_provider_edit_service_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'serviceName'),
  FormTextField(name: 'description'),
  FormTextField(name: 'price'),
  FormTextField(name: 'ETA'),
])
class ServiceProviderEditServiceView
    extends StackedView<ServiceProviderEditServiceViewModel>
    with $ServiceProviderEditServiceView {
  final String serviceId;
  const ServiceProviderEditServiceView({Key? key, required this.serviceId})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderEditServiceViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Service'),
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
                onChanged: (value) => {viewModel.serviceType = value},
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
                onChanged: (value) => {viewModel.vehicleType = value},
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
                onPressed: () => viewModel.editService(serviceId),
                child: Text('Edit Service'),
                style: ElevatedButton.styleFrom(foregroundColor: Colors.white,
                    backgroundColor: Colors.blue),

              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void onViewModelReady(ServiceProviderEditServiceViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  ServiceProviderEditServiceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderEditServiceViewModel();

  @override
  void onDispose(ServiceProviderEditServiceViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }
}
