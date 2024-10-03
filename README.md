

# Vehicle Maintenance Service Platform (Flutter Mobile Application)

This repository contains the source code and project documentation for the **Vehicle Maintenance Service Platform**, a mobile application developed as part of my MSc Dissertation in Advanced Computer Science at the University of Sheffield. The project explores the use of technology to create a digital platform that connects vehicle maintenance service providers with customers. The application was built using Flutter, leveraging Firebase for the backend, and includes a machine learning model for vehicle maintenance prediction.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Architecture](#architecture)
- [Tech Stack](#tech-stack)
- [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots)
  - [Customer End](#customer-end)
  - [Service Provider End](#service-provider-end)
- [Machine Learning Model](#machine-learning-model)
- [Methodologies](#methodologies)
- [Firebase Configuration](#firebase-configuration)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The **Vehicle Maintenance Service Platform** is a mobile application designed to streamline the process of connecting customers with vehicle maintenance service providers. Customers can search for and book services, while providers can list their services and manage appointments. A key feature of the app is its machine learning model that predicts when a vehicle requires maintenance based on various vehicle parameters.

This project was developed using **Lean Startup Methodology** for the business ideation phase and **Agile Methodology** for the iterative development of the mobile application. The app follows the **Stacked MVVM (Model-View-ViewModel)** architecture for scalability and maintainability.

## Features

- **Service Provider and Customer Management**: Users can register as either service providers or customers.
- **Service Listing**: Service providers can list and manage various vehicle maintenance services.
- **Booking System**: Customers can browse available services and book appointments with service providers.
- **Vehicle Maintenance Prediction**: A machine learning model predicts whether a vehicle requires maintenance based on input vehicle features.
- **Real-time Data**: All data is stored and retrieved in real-time using Firebase.
- **Push Notifications**: Notifications for appointment confirmations, reminders, and updates.

## Architecture

The application follows the **Stacked MVVM Architecture**, which ensures clean separation of concerns and facilitates scalability. The layers include:

- **Model**: Business logic and data management, including communication with Firebase and the machine learning model.
- **View**: The UI components built using Flutter widgets.
- **ViewModel**: Acts as an intermediary between the model and the view, handling user input and updating the UI.

The architecture ensures maintainability and testability by separating business logic from UI components.

## Tech Stack

The key technologies and frameworks used in this project are:

- **Flutter**: Cross-platform framework for mobile application development.
- **Firebase**: Backend-as-a-Service (BaaS) for real-time data storage, authentication, and push notifications.
- **Dart**: Programming language used for developing Flutter applications.
- **Stacked (MVVM)**: Architecture pattern for structuring Flutter apps.
- **TensorFlow**: Used for training the machine learning model.
- **Firebase ML Kit**: Integrated machine learning model within the app.

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/faiqiqbal37/Digitalization-of-Vehicle-Maintenenace-Services.git
   cd vehicle-maintenance-app
   ```

2. **Install dependencies**:
   Ensure that Flutter and Dart SDK are installed on your system. Then run:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   Use the following command to launch the app on your device/emulator:
   ```bash
   flutter run
   ```

## Usage

Once installed, the app allows users to register as either customers or service providers.

- **Customer Workflow**:
  1. Register and log in.
  2. Add details of your vehicle.
  3. Browse available services from registered service providers.
  4. Book appointments for vehicle maintenance.
  5. Get maintenance predictions based on your vehicle details.

- **Service Provider Workflow**:
  1. Register and log in.
  2. Add, update, or remove service listings.
  3. Manage customer appointments.
  4. Provide real-time updates on service status.

## Screenshots

### Customer End

Here are some screenshots showcasing the customer interface:

| Screen | Description |
|--------|-------------|
| ![Customer Login](https://github.com/user-attachments/assets/1294fdeb-4d2d-4bc7-8caf-b6a3a1e2a03f) | **Login Screen**: Customers can register or log in to the app to start booking services. |
| ![Customer Dashboard](https://github.com/user-attachments/assets/386c77bc-46a3-416c-b443-acd9a850b045) | **Customer Dashboard**: Customers can view an overview of the app on the dashboard. |
| ![Service Listing](https://github.com/user-attachments/assets/68e36c4d-0e56-49f9-9357-d0f5a5ed4c76) | **Service Listing**: Customers can browse the available services offered by nearby service providers. |
| ![Booking Screen](https://github.com/user-attachments/assets/b419e167-b508-4a1b-bea8-7ee01e5ddfd9) | **Booking Screen**: Customers can view details of selected services and confirm bookings. |

### Service Provider End

Here are some screenshots showcasing the service provider interface:

| Screen | Description |
|--------|-------------|
| ![Provider Login](https://github.com/user-attachments/assets/95566713-1f55-434f-8677-60aed9f45ea9) | **Login Screen**: Service providers can register or log in to manage their services. |
| ![Service Management](https://github.com/user-attachments/assets/d966092a-d9c8-44b9-9968-81380fa23c5e) | **Service Management**: Service providers can add, update, or remove services from their listings. |
| ![Appointments](https://github.com/user-attachments/assets/2becf77c-aa7b-44b9-bbd4-1775cdb49db8) | **Bookings**: Providers can view and manage customer bookings in real-time. |
| ![Finance Dashboard](https://github.com/user-attachments/assets/e21fdb6d-bdb9-4a77-b08f-f59f8cb551d3) | **Finance Summary**: Providers can view financial details. |

## Machine Learning Model

The machine learning model is designed to predict when a vehicle might need maintenance based on various features such as:

- Age of the vehicle
- Mileage
- Engine type
- Last service date
- Any reported issues

The model was trained using **TensorFlow** and is not yet integrated into the app. It provides a binary classification on whether a vehicle requires maintenance (yes/no).

### Model Training

The training data was composed of vehicle features and historical maintenance records. The model was trained using supervised learning techniques to classify maintenance requirements.

## Methodologies

### Lean Startup Methodology

The business idea for the Vehicle Maintenance Service Platform was developed using the **Lean Startup Methodology**. This approach allowed for rapid validation of the business concept by building a minimum viable product (MVP) and continuously iterating based on user feedback.

### Agile Development

The app was developed using **Agile Methodology** with frequent sprints and regular feedback loops. This iterative process helped ensure that the app met the evolving needs of stakeholders and users, while enabling faster delivery of new features and bug fixes.


Feel free to reach out for any queries regarding the project or setup.

**Author**: Faiq Iqbal  
**Email**: faiqiqbal37@gmail.com  
**University of Sheffield**  
**MSc Advanced Computer Science Dissertation Project**

