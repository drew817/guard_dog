// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, constant_identifier_names, unnecessary_new
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:guard_dog_app/ui_xd/xd_main_menu_map.dart';
import 'xd_component201.dart';
//import './xd_main_menu.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_report_screen.dart';

class XDReportSucess extends StatelessWidget {
  XDReportSucess({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    incident test = new incident(
        int.parse(age.text),
        firstname.text.toString(),
        lastname.text.toString(),
        sevlevel.text.toString(),
        eventdesc.text.toString(),
        physicaldesc.text.toString(),
        clothingo.text.toString());
    test.addincident();

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
            Pin(size: 430.0, start: 90.0),
            Pin(size: 105.0, middle: 0.3405),
            child: PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDMainMenuMap(),
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
