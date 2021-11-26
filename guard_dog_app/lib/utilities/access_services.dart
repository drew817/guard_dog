// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:guard_dog_app/models/guard_user.dart';

class AccessServices {
  // Class attributes

  final FirebaseAuth _access =
      FirebaseAuth.instance; // getting a firebase auth instance

  // Register
  Future register(String email, String password) async {
    try {
      UserCredential result = await _access.createUserWithEmailAndPassword(
          email: email, password: password);
      User? fb_user = result.user;
      return fb_user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // Sign in
  Future signIn(String email, String password) async {
    GuardUser currentUser;

    try {
      UserCredential result = await _access.signInWithEmailAndPassword(
          email: email, password: password);
      User? fb_user = result.user;

      // Create a guard user
      if (fb_user != null) {
        currentUser = GuardUser(fb_user);
        return currentUser;
      }
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // Sign out
  Future signOut() async {
    try {
      return await _access.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
