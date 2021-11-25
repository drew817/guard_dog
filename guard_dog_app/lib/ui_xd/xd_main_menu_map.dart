// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_main_menu_ems.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_main_menu_alerts.dart';
//import './xd_main_menu_report.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import './xd_report_screen.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:geolocator/geolocator.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';

class XDMainMenuMap extends StatefulWidget {
  const XDMainMenuMap({Key? key}) : super(key: key);

  @override
  _XDMainMenuMapState createState() => _XDMainMenuMapState();
}

class _XDMainMenuMapState extends State<XDMainMenuMap> {
  late Position _currentPosition; //user location from geolocation

  //user location for Flutter Map
  late CenterOnLocationUpdate _centerOnLocationUpdate;
  late StreamController<double> _centerCurrentLocationStreamController;

  @override
  //Flutter map
  void initState() {
    super.initState();
    _centerOnLocationUpdate = CenterOnLocationUpdate.always;
    _centerCurrentLocationStreamController = StreamController<double>();
  }

  //Flutter map
  @override
  void dispose() {
    _centerCurrentLocationStreamController.close();
    super.dispose();
  }

  Widget build(BuildContext context) {
    //  var userLoc = LocationMarkerPlugin(); //local variable to store user location
    return Scaffold(
      // backgroundColor: const Color(0xffd2d3dc),

      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            // This should be the map area
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 95.0),
            child: Scaffold(
              //floating buttons to be used for alarm and displaying areas that have had recent incidents.
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton: Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FloatingActionButton(
                      heroTag: "alarmButton",
                      onPressed: _getCurrentLocation,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(
                          "assets/images/alarm.png",
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      heroTag: "incidentButton",
                      onPressed: _getCurrentLocation,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(
                          "assets/images/gd_button.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //MAPBOX WIDGET
              body: FlutterMap(
                options: MapOptions(
                    center: latLng.LatLng(43.474041,
                        -80.527809), //load at Laurier university location until user loc is  avail
                    zoom: 13,
                    maxZoom: 18,
                    plugins: [
                      LocationMarkerPlugin(), //get a marker with user location ready
                    ],
                    // Stop centering the location marker on the map if user interacted with the map.
                    onPositionChanged: (MapPosition position, bool hasGesture) {
                      if (hasGesture) {
                        setState(() => _centerOnLocationUpdate =
                            CenterOnLocationUpdate.never);
                      }
                    }),
                layers: [
                  //details to access Mapbox API credentials
                  TileLayerOptions(
                    urlTemplate:
                        "https://api.mapbox.com/styles/v1/potentplot/ckwe4tkz011bn14lbckrks7gp/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicG90ZW50cGxvdCIsImEiOiJja3Z2ZndyMnQ1aGsxMnBtbDZqeXp0dTZyIn0.K8zAymmMlDwmTWrdgjFeQQ",
                    subdomains: ['a', 'b', 'c'],
                    maxZoom: 19,
                    additionalOptions: {
                      'accessToken':
                          'pk.eyJ1IjoicG90ZW50cGxvdCIsImEiOiJja3Z2ZndyMnQ1aGsxMnBtbDZqeXp0dTZyIn0.K8zAymmMlDwmTWrdgjFeQQ',
                      'id': 'mapbox.mapbox-streets-v8'
                    },
                    attributionBuilder: (_) {
                      return Text("© OpenStreetMap contributors");
                    },
                  ),
                  LocationMarkerLayerOptions(), // create location marker on the map using user locations
                  //LocationMarkerLayerOptions(), //display location marker

                  // MarkerLayerOptions(
                  //   markers: [
                  //     Marker(
                  //       width: 80.0,
                  //       height: 80.0,
                  //       point: latLng.LatLng(43.474041, -80.527809), //map opens at Laurier University
                  //       builder: (ctx) =>
                  //           Container(
                  //             child: FlutterLogo(),
                  //           ),
                  //     ),
                  //   ],
                  // ),
                ],
                children: <Widget>[
                  LocationMarkerLayerWidget(
                    plugin: LocationMarkerPlugin(
                      centerCurrentLocationStream:
                          _centerCurrentLocationStreamController.stream,
                      centerOnLocationUpdate: _centerOnLocationUpdate,
                    ),
                  ),
                  Positioned(
                    // center the map on the user's location
                    right: 20,
                    bottom: 20,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Automatically center the location marker on the map when location updated until user interact with the map.
                        setState(() => _centerOnLocationUpdate =
                            CenterOnLocationUpdate.always);
                        // Center the location marker on the map and zoom on the map.
                        _centerCurrentLocationStreamController.add(18);
                      },
                      child: Icon(
                        Icons.my_location,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // <<<<<<<<<<<<<<<<<<<<<<NAVIGATION<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
          Pinned.fromPins(
            Pin(start: 0.0, end: -28.0),
            Pin(size: 95.0, end: 0.0),
            child:
                // Adobe XD layer: 'Group Navigation' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 27.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff002e5d),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 14.0, start: 42.0),
                  Pin(size: 20.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'ic_location_on_24px' (shape)
                      SvgPicture.string(
                    _svg_lczz38,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.3753),
                  Pin(size: 18.0, middle: 0.5195),
                  child:
                      // Adobe XD layer: 'ic_contact_phone_24…' (shape)
                      SvgPicture.string(
                    _svg_puswc,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 22.0, middle: 0.5789),
                  Pin(size: 19.0, middle: 0.4934),
                  child:
                      // Adobe XD layer: 'ic_warning_24px' (shape)
                      SvgPicture.string(
                    _svg_p56umm,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.8164),
                  Pin(size: 22.0, middle: 0.4932),
                  child:
                      // Adobe XD layer: 'ic_content_paste_24…' (shape)
                      SvgPicture.string(
                    _svg_hqoeh,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Transform.translate(
                  offset: Offset(61.0, 38.0),
                  child: SizedBox(
                    width: 64.0,
                    height: 18.0,
                    child: Text(
                      'Map',
                      style: TextStyle(
                        fontFamily: 'Century',
                        fontSize: 15,
                        color: const Color(0xffffffff),
                        letterSpacing: 3.4050000000000002,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 84.0, middle: 0.4629),
                  Pin(size: 18.0, middle: 0.4935),
                  child: Text(
                    'EMSCall',
                    style: TextStyle(
                      fontFamily: 'Century',
                      fontSize: 15,
                      color: Colors.transparent,
                      letterSpacing: 3.4050000000000002,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 60.0, middle: 0.7784),
                  Pin(size: 18.0, middle: 0.5065),
                  child: Text(
                    'Alerts',
                    style: TextStyle(
                      fontFamily: 'Century',
                      fontSize: 15,
                      color: Colors.transparent,
                      letterSpacing: 3.4050000000000002,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 64.0, end: 0.0),
                  Pin(size: 18.0, middle: 0.5065),
                  child: Text(
                    'Report',
                    style: TextStyle(
                      fontFamily: 'Century',
                      fontSize: 15,
                      color: Colors.transparent,
                      letterSpacing: 3.4050000000000002,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 73.0, middle: 0.4438),
            Pin(size: 38.0, end: 27.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDMainMenuEms(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1.0, color: Colors.transparent),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 73.0, middle: 0.6969),
            Pin(size: 38.0, end: 28.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDMainMenuAlerts(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1.0, color: Colors.transparent),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 73.0, end: 8.0),
            Pin(size: 38.0, end: 28.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDReportScreen(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1.0, color: Colors.transparent),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //function to immediately get user location
  // set the global var to the most up to date location
  // get location when an incident is reported or alarm is pressed.
  _getCurrentLocation() {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }
}

const String _svg_lczz38 =
    '<svg viewBox="42.0 793.5 14.0 20.0" ><path transform="translate(37.0, 791.5)" d="M 12 2 C 8.130000114440918 2 5 5.130000114440918 5 9 C 5 14.25 12 22 12 22 C 12 22 19 14.25 19 9 C 19 5.130000114440918 15.86999988555908 2 12 2 Z M 12 11.5 C 10.61999988555908 11.5 9.5 10.38000011444092 9.5 9 C 9.5 7.619999885559082 10.61999988555908 6.5 12 6.5 C 13.38000011444092 6.5 14.5 7.619999885559082 14.5 9 C 14.5 10.38000011444092 13.38000011444092 11.5 12 11.5 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_puswc =
    '<svg viewBox="149.0 796.0 24.0 18.0" ><path transform="translate(149.0, 793.0)" d="M 22 3 L 2 3 C 0.8999999761581421 3 0 3.900000095367432 0 5 L 0 19 C 0 20.10000038146973 0.8999999761581421 21 2 21 L 22 21 C 23.10000038146973 21 23.98999977111816 20.10000038146973 23.98999977111816 19 L 24 5 C 24 3.900000095367432 23.10000038146973 3 22 3 Z M 8 6 C 9.659999847412109 6 11 7.340000152587891 11 9 C 11 10.65999984741211 9.659999847412109 12 8 12 C 6.340000152587891 12 5 10.65999984741211 5 9 C 5 7.340000152587891 6.340000152587891 6 8 6 Z M 14 18 L 2 18 L 2 17 C 2 15 6 13.89999961853027 8 13.89999961853027 C 10 13.89999961853027 14 15 14 17 L 14 18 Z M 17.85000038146973 14 L 19.48999977111816 14 L 21 16 L 19.01000022888184 17.98999977111816 C 17.70000076293945 17.01000022888184 16.72999954223633 15.60999965667725 16.28000068664551 14 C 16.10000038146973 13.35999965667725 16 12.69000053405762 16 12 C 16 11.30999946594238 16.10000038146973 10.64000034332275 16.28000068664551 10 C 16.73000144958496 8.380000114440918 17.70000076293945 6.989999771118164 19.01000022888184 6.010000228881836 L 21 8 L 19.48999977111816 10 L 17.85000038146973 10 C 17.63000106811523 10.63000011444092 17.5 11.30000019073486 17.5 12 C 17.5 12.69999980926514 17.6299991607666 13.36999988555908 17.85000038146973 14 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_p56umm =
    '<svg viewBox="231.0 793.5 22.0 19.0" ><path transform="translate(230.0, 791.5)" d="M 1 21 L 23 21 L 12 2 L 1 21 Z M 13 18 L 11 18 L 11 16 L 13 16 L 13 18 Z M 13 14 L 11 14 L 11 10 L 13 10 L 13 14 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hqoeh =
    '<svg viewBox="329.0 792.0 18.0 22.0" ><path transform="translate(326.0, 792.0)" d="M 19 2 L 14.81999969482422 2 C 14.39999961853027 0.8399999737739563 13.30000019073486 0 12 0 C 10.69999980926514 0 9.600000381469727 0.8399999737739563 9.180000305175781 2 L 5 2 C 3.900000095367432 2 3 2.900000095367432 3 4 L 3 20 C 3 21.10000038146973 3.900000095367432 22 5 22 L 19 22 C 20.10000038146973 22 21 21.10000038146973 21 20 L 21 4 C 21 2.900000095367432 20.10000038146973 2 19 2 Z M 12 2 C 12.55000019073486 2 13 2.450000047683716 13 3 C 13 3.549999952316284 12.55000019073486 4 12 4 C 11.44999980926514 4 11 3.549999952316284 11 3 C 11 2.450000047683716 11.44999980926514 2 12 2 Z M 19 20 L 5 20 L 5 4 L 7 4 L 7 7 L 17 7 L 17 4 L 19 4 L 19 20 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
