// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import './xd_trees.dart';
import './x_dentrybox_down.dart';
import './xd_icon_awesome_eye_slash.dart';
import './x_dentrybox_up.dart';
import './xd_icon_awesome_check_circle.dart';

class XDSignUpTransition extends StatelessWidget {
  XDSignUpTransition({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd2d3dc),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -342.0, end: -343.0),
            Pin(start: -157.0, end: -70.0),
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
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Shape light' (shape)
                      Container(
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
                ),
              ],
            ),
          ),
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
          Pinned.fromPins(
            Pin(size: 79.0, start: 41.0),
            Pin(size: 79.0, start: 55.0),
            child:
                // Adobe XD layer: 'Logo' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(57.0),
                image: DecorationImage(
                  image: const AssetImage('assets/images/guard_dog_icon.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 138.0, middle: 0.502),
            Pin(size: 30.0, start: 80.0),
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
          Pinned.fromPins(
            Pin(start: 17.0, end: -150.9),
            Pin(size: 142.8, middle: 0.1963),
            child:
                // Adobe XD layer: 'Trees' (component)
                XDTrees(),
          ),
          Pinned.fromPins(
            Pin(start: -443.0, end: -84.0),
            Pin(start: -124.0, end: -159.0),
            child:
                // Adobe XD layer: 'Text fields' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 169.0, start: 3.0),
                  Pin(size: 48.0, middle: 0.4153),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 40,
                      color: const Color(0xff193566),
                      fontWeight: FontWeight.w700,
                      height: 1,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 119.0, start: 3.0),
                  Pin(size: 23.0, middle: 0.4536),
                  child: Text(
                    'Let\'s get started',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18,
                      color: const Color(0xff586e90),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 83.0, start: 1.0),
                  Pin(size: 15.0, middle: 0.6282),
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 12,
                      color: const Color(0xff193566),
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 311.0, start: 0.0),
                  Pin(size: 62.0, middle: 0.5103),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 104.0, start: 25.0),
                        Pin(size: 20.0, middle: 0.5238),
                        child: Text(
                          'your email here',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 16,
                            color: const Color(0xffa9b6c9),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'DOWN' (component)
                            XDentrybox_down(),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 311.0, start: 0.0),
                  Pin(size: 62.0, middle: 0.5868),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 131.0, start: 25.0),
                        Pin(size: 20.0, middle: 0.5238),
                        child: Text(
                          'your password here',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 16,
                            color: const Color(0xffa9b6c9),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'DOWN' (component)
                            XDentrybox_down(),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2993),
                  Pin(size: 15.0, middle: 0.5845),
                  child:
                      // Adobe XD layer: 'Icon awesome-eye-sl…' (component)
                      XDIconAwesomeEyeSlash(),
                ),
                Pinned.fromPins(
                  Pin(size: 62.0, middle: 0.162),
                  Pin(size: 22.0, middle: 0.7599),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 18,
                      color: const Color(0xb2193566),
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      height: 0.8888888888888888,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 195.0, start: 58.0),
                  Pin(size: 62.0, middle: 0.7006),
                  child:
                      // Adobe XD layer: 'UP' (component)
                      XDentrybox_up(),
                ),
                Pinned.fromPins(
                  Pin(size: 74.0, start: 126.0),
                  Pin(size: 29.0, middle: 0.6959),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 24,
                      color: const Color(0xff193566),
                      fontWeight: FontWeight.w700,
                      height: 0.7916666666666666,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 169.0, middle: 0.6218),
                  Pin(size: 48.0, middle: 0.4153),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 40,
                      color: const Color(0xff193566),
                      fontWeight: FontWeight.w700,
                      height: 1,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 119.0, middle: 0.5768),
                  Pin(size: 23.0, middle: 0.4536),
                  child: Text(
                    'Let\'s get started',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18,
                      color: const Color(0xff586e90),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 145.0, middle: 0.6323),
                  Pin(size: 15.0, middle: 0.6282),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 12,
                        color: const Color(0xff193566),
                      ),
                      children: [
                        TextSpan(
                          text: 'Accept ',
                        ),
                        TextSpan(
                          text: 'Terms and Conditions',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 311.0, end: 127.0),
                  Pin(size: 62.0, middle: 0.5103),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 104.0, start: 25.0),
                        Pin(size: 20.0, middle: 0.5238),
                        child: Text(
                          'your email here',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 16,
                            color: const Color(0xffa9b6c9),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'DOWN' (component)
                            XDentrybox_down(),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 311.0, end: 127.0),
                  Pin(size: 62.0, middle: 0.5868),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 131.0, start: 25.0),
                        Pin(size: 20.0, middle: 0.5238),
                        child: Text(
                          'your password here',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 16,
                            color: const Color(0xffa9b6c9),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'DOWN' (component)
                            XDentrybox_down(),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 152.0),
                  Pin(size: 15.0, middle: 0.5845),
                  child:
                      // Adobe XD layer: 'Icon awesome-eye-sl…' (component)
                      XDIconAwesomeEyeSlash(),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, middle: 0.5177),
                  Pin(size: 16.0, middle: 0.6288),
                  child:
                      // Adobe XD layer: 'Icon awesome-check-…' (component)
                      XDIconAwesomeCheckCircle(),
                ),
                Pinned.fromPins(
                  Pin(size: 54.0, middle: 0.6894),
                  Pin(size: 22.0, middle: 0.7599),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 18,
                      color: const Color(0xb2193566),
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      height: 0.8888888888888888,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 195.0, middle: 0.7448),
                  Pin(size: 62.0, middle: 0.7006),
                  child:
                      // Adobe XD layer: 'UP' (component)
                      XDentrybox_up(),
                ),
                Pinned.fromPins(
                  Pin(size: 565.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'UP' (component)
                      XDentrybox_up(),
                ),
                Pinned.fromPins(
                  Pin(size: 82.0, middle: 0.6957),
                  Pin(size: 29.0, end: 49.0),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 24,
                      color: const Color(0xff193566),
                      fontWeight: FontWeight.w700,
                      height: 0.7916666666666666,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 41.0, end: 18.0),
            Pin(size: 208.0, middle: 0.4463),
            child: Text(
              'Sign up Complete.\n\n…\n\nPlease Login.',
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
        ],
      ),
    );
  }
}
