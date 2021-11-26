// A class for the user of the app
import 'package:firebase_auth/firebase_auth.dart';

class GuardUser {
  String? uid;
  GuardUser(User fb_user) {
    uid = fb_user.uid;
  }
}
