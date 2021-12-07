// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, constant_identifier_names, unnecessary_new

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:guard_dog_app/models/guard_user.dart';
import 'package:guard_dog_app/ui_xd/xd_main_menu_map.dart';
import 'xd_component201.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_report_screen.dart';

class XDReportSucess extends StatefulWidget {
  // The app user
  GuardUser? _guardUser;

  XDReportSucess(GuardUser? user) {
    _guardUser = user;
  }

  @override
  State<XDReportSucess> createState() => _XDReportSucessState();
}

class _XDReportSucessState extends State<XDReportSucess> {
  @override
  Widget build(BuildContext context) {
    incident test = new incident();

    if (test.dangerlevel == "High") {

      high_threat childclass = new high_threat();
      childclass.addincident();
      childclass.email_campus_security();
      childclass.call911();
    }

    if (test.dangerlevel == "Medium") {
      medium_threat childclass = new medium_threat();
      childclass.addincident();
      childclass.email_campus_security();
      Future.delayed(Duration.zero, () async {
        // set up the button
        Widget okButton = TextButton(
          child: Text("OK"),
          onPressed: () => Navigator.of(context).pop(),
        );
        // set up the AlertDialog
        AlertDialog alert = AlertDialog(
          title: Text("Stay Safe"),
          content: Text(childclass.help_numbers()),
          actions: [
            okButton,
          ],
        );
        // show the dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      });
    }

    if (test.dangerlevel == "Low") {
      low_threat childclass = new low_threat();
      childclass.addincident();
      childclass.email_campus_security();
      Future.delayed(Duration.zero, () async {

        // set up the button
        Widget okButton = TextButton(
          child: Text("OK"),
          onPressed: () => Navigator.of(context).pop(),
        );

        // set up the AlertDialog
        AlertDialog alert = AlertDialog(
          title: Text("Stay Safe"),
          content: Text(childclass.help_numbers()),
          actions: [
            okButton,
          ],
        );

        // show the dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      });
    }

    return Scaffold(
      backgroundColor: const Color(0xffecf0f3),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 20.0, end: 15.0),
            Pin(size: 128.0, start: 77.0),
            child: Text(
              'Incident Reported   \n\nThank you!',
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
            Pin(size: 390.0, start: 110.0),
            Pin(size: 105.0, middle: 0.36),
            child: PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDMainMenuMap(widget._guardUser),
                ),
              ],
              child: XDComponent201(),
            ),
          ),

          Pinned.fromPins(
            Pin(start: 53.0, end: 56.0),
            Pin(size: 48.0, middle: 0.3524),
            child: Text(
              'Return to Menu',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 40,
                color: const Color(0xfffbfcff),
                fontWeight: FontWeight.w700,
                height: 1,
              ),
              textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

}

