import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  void authStateChanges(void Function(User? user) onAuthStateChanged) {
    _firebaseAuth.authStateChanges().listen(onAuthStateChanged);
  }

  // Method to sign out the user
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      print("Error signing out: $e");
      throw Exception('Failed to sign out');
    }
  }

  Future<User?> loginUser(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential
          .user; // Return the user object upon successful login
    } catch (e) {
      print('Login Error: $e');
      throw Exception('Login failed: $e');
    }
  }
}
