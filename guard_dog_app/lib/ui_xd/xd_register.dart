import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import './xd_trees.dart';

class XDRegister extends StatelessWidget {
  XDRegister({
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
            Pin(size: 1274.9, start: -1441.9),
            child:
                // Adobe XD layer: 'Prints' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 42.8, end: 78.8),
                  Pin(size: 501.9, middle: 0.3691),
                  child: Transform.rotate(
                    angle: 0.192,
                    child:
                        // Adobe XD layer: 'AdobeStock_214587665' (shape)
                        BlendMask(
                      blendMode: BlendMode.multiply,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(
                                'assets/images/background_footprints.jpg'),
                            fit: BoxFit.fill,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.0), BlendMode.dstIn),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 62.8, end: 58.8),
                  Pin(size: 501.9, middle: 0.6579),
                  child: Transform.rotate(
                    angle: 2.9496,
                    child:
                        // Adobe XD layer: 'AdobeStock_214587665' (shape)
                        BlendMask(
                      blendMode: BlendMode.multiply,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(
                                'assets/images/background_footprints.jpg'),
                            fit: BoxFit.fill,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.0), BlendMode.dstIn),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 74.8, end: 46.8),
                  Pin(size: 501.9, end: 48.3),
                  child: Transform.rotate(
                    angle: 0.192,
                    child:
                        // Adobe XD layer: 'AdobeStock_214587665' (shape)
                        BlendMask(
                      blendMode: BlendMode.multiply,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(
                                'assets/images/background_footprints.jpg'),
                            fit: BoxFit.fill,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.0), BlendMode.dstIn),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 78.8, end: 42.8),
                  Pin(size: 501.9, start: 48.3),
                  child: Transform.rotate(
                    angle: 2.9496,
                    child:
                        // Adobe XD layer: 'AdobeStock_214587665' (shape)
                        BlendMask(
                      blendMode: BlendMode.multiply,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(
                                'assets/images/background_footprints.jpg'),
                            fit: BoxFit.fill,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.0), BlendMode.dstIn),
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
            offset: Offset(41.0, 55.0),
            child:
                // Adobe XD layer: 'Logo' (shape)
                Container(
              width: 79.0,
              height: 79.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(57.0),
                image: DecorationImage(
                  image: const AssetImage('assets/images/guard_dog_icon.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-15201.2, 80.0),
            child: SizedBox(
              width: 30797.0,
              child: Text(
                'Guard Dog',
                style: TextStyle(
                  fontFamily: 'Agency FB',
                  fontSize: 27,
                  color: const Color(0xff272636),
                  letterSpacing: 6.1290000000000004,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 17.0, end: -150.9),
            Pin(size: 142.8, middle: 0.1963),
            child:
                // Adobe XD layer: 'Trees' (component)
                XDTrees(),
          ),
          Transform.translate(
            offset: Offset(7.0, 338.0),
            child:
                // Adobe XD layer: 'signInWelcome' (text)
                SizedBox(
              width: 216.0,
              child: Text(
                'Signing Up',
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontSize: 40,
                  color: const Color(0xff272636),
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(17.0, 426.0),
            child:
                // Adobe XD layer: 'signUpEmail' (shape)
                Container(
              width: 311.0,
              height: 62.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(31.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 5.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(17.0, 517.0),
            child:
                // Adobe XD layer: 'signUpPassword' (shape)
                Container(
              width: 311.0,
              height: 62.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(31.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 5.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(113.0, 641.0),
            child: SizedBox(
              width: 142.0,
              height: 52.0,
              child:
                  // Adobe XD layer: 'signUpButtonRegister' (group)
                  Stack(
                children: <Widget>[
                  Container(
                    width: 142.0,
                    height: 52.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(23.0, 12.0),
                    child: SizedBox(
                      width: 96.0,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 24,
                          color: const Color(0xff383575),
                          fontWeight: FontWeight.w700,
                          height: 0.7916666666666666,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
