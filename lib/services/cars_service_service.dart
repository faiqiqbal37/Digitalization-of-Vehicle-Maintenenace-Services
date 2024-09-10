import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disertation/models/car/car.dart';

class CarsServiceService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addCar(Car car) async {
    try {
      await _firestore.collection('cars').doc(car.id).set(car.toJson());
      print("car added successfully!");
    } catch (e) {
      print("Error adding car: $e");
      throw Exception("Failed to add car");
    }
  }

  Future<List<Car>> fetchCarsByCustomerId(String customerId) async {
    try {
      QuerySnapshot querySnapshot = await _firestore
          .collection('cars')
          .where('customerId', isEqualTo: customerId)
          .get();

      List<Car> cars = querySnapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        return Car.fromJson(data);
      }).toList();

      return cars;
    } catch (e) {
      print('Error fetching bookings: $e');
      return [];
    }
  }

  Future<void> deleteServiceById(String carId) async {
    try {
      await _firestore.collection('cars').doc(carId).delete();
      print("car deleted successfully!");
    } catch (e) {
      print("Error deleting car: $e");
      throw Exception("Failed to delete car");
    }
  }
}
