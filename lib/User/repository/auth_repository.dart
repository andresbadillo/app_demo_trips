import 'package:firebase_auth/firebase_auth.dart';
import 'package:demo_trips_app/User/repository/firebase_auth_api.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<UserCredential> signInFirebase() => _firebaseAuthAPI.signIn();
}
