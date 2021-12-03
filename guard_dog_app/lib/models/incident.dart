//A class for incidents

import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Incident {

  int submitterage = 0;
  var userfirstname ;
  var userlastname ;
  var dangerlevel ;
  var usereventdec ;
  var userphysdec ;
  var clothingother ;
  var locationlat  ;
  var locationlong  ;



  // var userfirstname, var userlastname,var dangerlevel, var usereventdec, var clothingother,
  // var userphysdec, var locationlat, var locationlong, int submitterage

  Incident({var userfirstname, var userlastname, var dangerlevel, var usereventdec,
    var userphysdec, var clothingother, var locationlat, var locationlong, int submitterage=0}) {

    setsubmitterage();
    setfirstname();
    setlastname();
    setuserage();
    setdangerlevel();
    setdescriptions();
    setlocation();
  }




  void setsubmitterage() {
    this.submitterage = submitterage;
  }

  void setfirstname() {
    this.userfirstname = userfirstname;
  }

  void setlastname() {
    this.userlastname = userlastname;
  }

  void setuserage() {
    this.submitterage = submitterage;
  }

  void setdangerlevel() {
    this.dangerlevel = dangerlevel;
  }

  void setdescriptions() {
    this.usereventdec = usereventdec;
    this.userphysdec = userphysdec;
    this.clothingother = clothingother;
  }

  void setlocation(){
    this.locationlat = locationlat;
    this.locationlong = locationlong;
  }

  String getfullname(String firstname, String lastname) {
    String fullname = userfirstname + " " + userlastname;
    return fullname;
  }

  void printall() {
    print("""
    First Name: $userfirstname
    Last Name: $userlastname
    Full Name: $getfullname($userfirstname, $userlastname)
    Age: $submitterage
    Event Description: $usereventdec
    Physical Description: $userphysdec
    Clothing/Other Description: $clothingother
    Threat Level: $dangerlevel
    Lattitude: $locationlat
    Longitude: $locationlong
    """);
  }




  Future<void> addIncident()  async {
    // added async to allow for us to call getlocation which an async function
    //although we are calling an async function, we have to wait for the position before we move on.
    Position position =  await _getGeoLocationPosition();
    var currentUser = FirebaseAuth.instance.currentUser;


    String formattedDate =
    DateFormat('kk:mm:ss \n EEE d MMM').format(DateTime.now());
    // Call the user's CollectionReference to add a new user
    CollectionReference Incidentlist =
    FirebaseFirestore.instance.collection('Incidents');
    Incidentlist
        .add({
      'First Name': this.userfirstname,
      'Last Name': this.userlastname,
      'Full Name': getfullname(this.userfirstname, this.userlastname),
      'Age': this.submitterage,
      'Danger Level': this.dangerlevel,
      'Event Description': this.usereventdec,
      'Physical Description': this.userphysdec,
      'Clothing/Other Description': this.clothingother,
      'Time Submitted': formattedDate,
      'UserID': currentUser!.uid,
      'locationlat': position.latitude.toString(),
      'locationlong': position.longitude.toString()

    })
        .then((value) => print("Incident added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {

        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

}

