// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, constant_identifier_names, unnecessary_new, unnecessary_this

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:geolocator/geolocator.dart';
import 'package:guard_dog_app/models/guard_user.dart';
import 'package:guard_dog_app/ui_xd/xd_logo.dart';
import 'package:guard_dog_app/ui_xd/xd_main_menu_map.dart';
import 'xd_component201.dart';
import 'xd_component211.dart';
import 'xd_component16.dart';
import 'package:guard_dog_app/models/guard_user.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './xd_report_sucess.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import './xd_main_menu_map.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:flutter_email_sender/flutter_email_sender.dart';

import 'package:guard_dog_app/ui_xd/xd_main_menu_map.dart';
import 'package:firebase_auth/firebase_auth.dart';

TextEditingController firstname = new TextEditingController();
TextEditingController lastname = new TextEditingController();
TextEditingController age = new TextEditingController();
TextEditingController sevlevel = new TextEditingController();
TextEditingController relationship = new TextEditingController();
TextEditingController eventdesc = new TextEditingController();
TextEditingController physicaldesc = new TextEditingController();
TextEditingController clothingo = new TextEditingController();

String? dropdownvalue = 'High';
var items = ['High','Medium','Low'];



class XDReportScreen extends StatefulWidget {
  // The app user
  GuardUser? _guardUser;

  XDReportScreen(GuardUser? user, {Key? key}) : super(key: key) {
    _guardUser = user;
    print("Welcome to XDReportScreen user:");
    print(_guardUser?.uid);
  }

  @override
  State<XDReportScreen> createState() => _XDReportScreenState();
}

var currentUser = FirebaseAuth.instance.currentUser;

class incident {
  int submitterage = int.parse(age.text);
  var userfirstname = firstname.text.toString();
  var userlastname = lastname.text.toString();
  var dangerlevel = dropdownvalue;
  var usereventdec = eventdesc.text.toString();
  var userphysdec = physicaldesc.text.toString();
  var clothingother = clothingo.text.toString();

  incident() {
    setfirstname();
    setlastname();
    setuserage();
    setdangerlevel();
    setdescriptions();
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
    Event Description: $eventdesc
    Physical Description: $physicaldesc
    Clothing/Other Description: $clothingother
    Threat Level: $sevlevel
    """);
  }

  Future<void> addincident() async {
    // added async to allow for us to call getlocation which an async function
    //although we are calling an async function, we have to wait for the position before we move on.
    Position position =  await _getGeoLocationPosition();

    String formattedDate =
        DateFormat('kk:mm:ss \n EEE d MMM').format(DateTime.now());
    // Call the user's CollectionReference to add a new user
    CollectionReference incidentlist =
        FirebaseFirestore.instance.collection('Incidents');
    incidentlist
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
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }


  Future<void> email_campus_security() async {
    // final Email email = Email(
    //   body: "Description: " + eventdesc.toString() + "\n" +
    //       "Suspect Description: " + physicaldesc.toString() + "\n" +
    //       "Location:  "+ "",
    //   subject: 'Guard Dog - ' + dangerlevel.toString() + " : " + eventdesc.toString(),
    //   recipients: ['campussecurity@wlu.com'],
    //   cc: ['guardogadmin@guardog.com'],
    //   isHTML: false,
    // );

    //await FlutterEmailSender.send(email);
  }

}

class high_threat extends incident{

  void call911(){
    //UrlLauncher.launch("tel://21213123123");
  }

}


class medium_threat extends incident{

  String help_numbers() {
    return """Please call this number if the situation is not an emergency:
    
Non-Emergency Number: 519-570-9777
    """;
  }
}

class low_threat extends incident{

  String help_numbers() {
    return """Please note that even low level incidents are taken seriously, thank you for using Guard Dog.
    """;
  }



}

class _XDReportScreenState extends State<XDReportScreen> {
  // late Position _currentPosition; //user location from geolocation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffd2d3dc),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 350.0, end: 5.0),
            Pin(size: 48.0, start: 7.0),
            child: Text(
              'Incident Report',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 40,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
              Pin(size: 75.0, start: 5.0), Pin(size: 58.0, start: 7),
              child: XDLogo()),
          Pinned.fromPins(
            Pin(size: 60.0, start: 35.0),
            Pin(size: 15.0, start: 96.0),
            child: Text(
              'First Name',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 12,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 3.3333333333333335,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 72.0, middle: 0.4984),
            Pin(size: 15.0, start: 96.0),
            child: Text(
              'Last Name',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 12,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 3.3333333333333335,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Container(),
          Pinned.fromPins(
            Pin(size: 100.0, start: 22.0),
            Pin(size: 20.0, start: 120.0),
            child: TextField(
              controller: firstname,
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 10,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 3.33,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter First Name',
                hintStyle:
                    TextStyle(fontSize: 9.0, color: Colors.black, height: 2),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 58.0, end: 44.0),
            Pin(size: 15.0, start: 96.0),
            child: Text(
              'Age',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 12,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 3,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, middle: 0.4951),
            Pin(size: 20.0, start: 120.0),
            child: TextField(
              controller: lastname,
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 10,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 2,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter last Name',
                hintStyle:
                    TextStyle(fontSize: 9.0, color: Colors.black, height: 0.5),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, end: 25.0),
            Pin(size: 20.0, start: 120.0),
            child: TextField(
              controller: age,
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 10,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 2,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter age',
                hintStyle:
                    TextStyle(fontSize: 9.0, color: Colors.black, height: 0.5),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 128.0, start: 31.0),
            Pin(size: 15.0, middle: 0.2380),
            child: Text(
              'Relationship to Victim? ',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 12,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 3.3333333333333335,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, start: 40.0),
            Pin(size: 20.0, middle: 0.2700),
            child: TextField(
              controller: relationship,
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 10,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 2,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'friend, stranger, etc',
                hintStyle:
                    TextStyle(fontSize: 8.0, color: Colors.black, height: 0.5),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 96.0, end: 54.0),
            Pin(size: 15.0, middle: 0.2380),
            child: Text(
              'Level of Danger? ',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 12,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 3.3333333333333335,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, end: 50.0),
            Pin(size: 20.0, middle: 0.2700),
            child: DropdownButton(
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                style:
                    TextStyle(fontSize: 16.0, color: Colors.black, height: 0.5),
                items: items.map((String items) {
                  return DropdownMenuItem(value: items, child: Text(items));
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                }),
          ),
          Pinned.fromPins(
            Pin(size: 200.0, middle: 0.4835),
            Pin(size: 17.0, start: 73.0),
            child: Text(
              'Preliminary Details',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 14,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                height: 2.857142857142857,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 184.0, middle: 0.4689),
            Pin(size: 17.0, middle: 0.325),
            child: Text(
              'Suspect & Event Description ',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 14,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                height: 2.857142857142857,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 52.0, end: 55.0),
            Pin(size: 15.0, middle: 0.3800),
            child: Text(
              'To the best of your ability please describe the event:',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 12,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 3.3333333333333335,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            //MediaQuery.of(context).size.width * 0.5,MediaQuery.of(context).size.height * 0.91
            Pin(size: 366.0, middle: 0.5),
            Pin(size: 515.0, middle: 1.65),
            child: TextField(
              controller: eventdesc,
              keyboardType: TextInputType.multiline,
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 10,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 2,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter event description',
                hintStyle:
                    TextStyle(fontSize: 10.0, color: Colors.black, height: 0.5),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 19.0, end: 20.0),
            Pin(size: 15.0, middle: 0.5368),
            child: Text(
              'Please describe the Suspect\'s Facial Features and Physical Traits:',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 12,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 3.3333333333333335,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 366.0, middle: 0.4691),
            Pin(size: 515.0, middle: 2.3),
            child: TextField(
              controller: physicaldesc,
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 10,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 2,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Physical/facial features',
                hintStyle:
                    TextStyle(fontSize: 10.0, color: Colors.black, height: 0.5),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 39.0, end: 40.0),
            Pin(size: 15.0, middle: 0.7200),
            child: Text(
              'Please describe the Suspect\'s Clothing and Other Details:',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 12,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 3.3333333333333335,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 366.0, middle: 0.4691),
            Pin(size: 515.0, middle: 3),
            child: TextField(
              controller: clothingo,
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 10,
                color: const Color(0xff193566),
                fontWeight: FontWeight.w700,
                height: 2,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter clothing and other suspect details',
                hintStyle:
                    TextStyle(fontSize: 10, color: Colors.black, height: 0.5),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0),
            Pin(start: 585.0, end: 0),
            child: XDComponent16(),
          ),
          Transform.translate(
            offset: Offset(MediaQuery.of(context).size.width * 0.05,
                MediaQuery.of(context).size.height * 0.91),
            child: SizedBox(
              width: 160.0,
              height: 45.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => XDMainMenuMap(widget._guardUser),
                  ),
                ],
                child: XDComponent211(),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 55.0, end: 305.0),
            Pin(size: 15.0, middle: 0.951),
            child: Text(
              'Cancel',
              style: TextStyle(
                fontFamily: 'Century',
                fontSize: 12,
                color: const Color(0xffffffff),
                letterSpacing: 2.724,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Transform.translate(
            offset: Offset(MediaQuery.of(context).size.width * 0.55,
                MediaQuery.of(context).size.height * 0.91),
            child: SizedBox(
              width: 160.0,
              height: 45.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => XDReportSucess(widget._guardUser),
                  ),
                ],
                child: XDComponent201(),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 117, end: 35.0),
            Pin(size: 15.0, middle: 0.951),
            child: Text(
              'Submit Report',
              style: TextStyle(
                fontFamily: 'Century',
                fontSize: 12,
                color: const Color(0xffffffff),
                letterSpacing: 2.724,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Transform.translate(
            offset: Offset(MediaQuery.of(context).size.width * 0.58,
                MediaQuery.of(context).size.height * 0.922),
            child: SizedBox(
              width: 18.0,
              height: 22.0,
              child: SvgPicture.string(
                _svg_zkjt,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_zkjt =
    '<svg viewBox="223.0 792.0 18.0 22.0" ><path transform="translate(220.0, 792.0)" d="M 19 2 L 14.81999969482422 2 C 14.39999961853027 0.8399999737739563 13.30000019073486 0 12 0 C 10.69999980926514 0 9.600000381469727 0.8399999737739563 9.180000305175781 2 L 5 2 C 3.900000095367432 2 3 2.900000095367432 3 4 L 3 20 C 3 21.10000038146973 3.900000095367432 22 5 22 L 19 22 C 20.10000038146973 22 21 21.10000038146973 21 20 L 21 4 C 21 2.900000095367432 20.10000038146973 2 19 2 Z M 12 2 C 12.55000019073486 2 13 2.450000047683716 13 3 C 13 3.549999952316284 12.55000019073486 4 12 4 C 11.44999980926514 4 11 3.549999952316284 11 3 C 11 2.450000047683716 11.44999980926514 2 12 2 Z M 19 20 L 5 20 L 5 4 L 7 4 L 7 7 L 17 7 L 17 4 L 19 4 L 19 20 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
