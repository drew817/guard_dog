// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import './xd_logo.dart';
import './xd_sign_in.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_trees.dart';

class XDStart extends StatelessWidget {
  XDStart({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd2d3dc),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -141.6, end: -141.6),
            Pin(start: -194.5, end: -229.5),
            child:
                // Adobe XD layer: 'Prints' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 16.0),
                  Pin(size: 821.8, middle: 0.523),
                  child: Stack(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(42.8, 48.3),
                        child: Transform.rotate(
                          angle: 0.192,
                          child:
                              // Adobe XD layer: 'AdobeStock_214587665' (shape)
                              BlendMask(
                            blendMode: BlendMode.multiply,
                            child: Container(
                              width: 554.7,
                              height: 501.9,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: const AssetImage(
                                      'assets/images/background_footprints.jpg'),
                                  fit: BoxFit.fill,
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.09),
                                      BlendMode.dstIn),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(62.8, 271.6),
                        child: Transform.rotate(
                          angle: 2.9496,
                          child:
                              // Adobe XD layer: 'AdobeStock_214587665' (shape)
                              BlendMask(
                            blendMode: BlendMode.multiply,
                            child: Container(
                              width: 554.7,
                              height: 501.9,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: const AssetImage(
                                      'assets/images/background_footprints.jpg'),
                                  fit: BoxFit.fill,
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.09),
                                      BlendMode.dstIn),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(74.8, 724.8),
                  child: Transform.rotate(
                    angle: 0.192,
                    child:
                        // Adobe XD layer: 'AdobeStock_214587665' (shape)
                        BlendMask(
                      blendMode: BlendMode.multiply,
                      child: Container(
                        width: 554.7,
                        height: 501.9,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(
                                'assets/images/background_footprints.jpg'),
                            fit: BoxFit.fill,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.09),
                                BlendMode.dstIn),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(78.8, 48.3),
                  child: Transform.rotate(
                    angle: 2.9496,
                    child:
                        // Adobe XD layer: 'AdobeStock_214587665' (shape)
                        BlendMask(
                      blendMode: BlendMode.multiply,
                      child: Container(
                        width: 554.7,
                        height: 501.9,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(
                                'assets/images/background_footprints.jpg'),
                            fit: BoxFit.fill,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.09),
                                BlendMode.dstIn),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 200.0, middle: 0.5026),
            Pin(size: 200.0, middle: 0.3733),
            child:
                // Adobe XD layer: 'shadow' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Shape shadow' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffecf0f3),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x7f97a7c3),
                          offset: Offset(10, 10),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                // Adobe XD layer: 'Shape light' (shape)
                Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffecf0f3),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xffffffff),
                        offset: Offset(-10, -10),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 194.0, middle: 0.5025),
            Pin(size: 43.0, middle: 0.5681),
            child: Text(
              'Guard Dog',
              style: TextStyle(
                fontFamily: 'Agency FB',
                fontSize: 38,
                color: const Color(0xff272636),
                letterSpacing: 8.626,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 153.0, middle: 0.5),
            Pin(size: 153.0, middle: 0.3825),
            child:
                // Adobe XD layer: 'Logo' (component)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDSignIn(),
                ),
              ],
              child: XDLogo(),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.6, end: -164.4),
            Pin(size: 142.8, end: 119.2),
            child:
                // Adobe XD layer: 'Trees' (component)
                XDTrees(),
          ),
        ],
      ),
    );
  }
}
