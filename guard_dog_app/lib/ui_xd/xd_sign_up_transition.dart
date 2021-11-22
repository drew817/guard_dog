// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_sign_in.dart';
import 'package:adobe_xd/page_link.dart';

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
            Pin(size: 171.0, middle: 0.5631),
            Pin(size: 54.0, start: 80.0),
            child: Text(
              'Guard Dog',
              style: TextStyle(
                fontFamily: 'Agency FB',
                fontSize: 27,
                color: const Color(0xff272636),
                letterSpacing: 6.1290000000000004,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 14.0, end: 18.0),
            Pin(size: 230.0, middle: 0.4376),
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
          Pinned.fromPins(
            // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            // Sign in button
            Pin(size: 74.0, middle: 0.5016),
            Pin(size: 49.0, middle: 0.6808),
            // child:
            //     // Adobe XD layer: 'signInButtonTransit…' (group)
            //     PageLink(
            //   links: [
            //     PageLinkInfo(
            //       transition: LinkTransition.Fade,
            //       ease: Curves.easeOut,
            //       duration: 0.3,
            //       pageBuilder: () => XDSignIn(),
            //     ),
            //   ],
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: -10.0, end: -12.0),
                  Pin(start: -15.0, end: 0.0),
                  child: SizedBox(
                    width: 100.0,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => XDSignIn()),
                        );
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 18,
                          color: const Color(0xff383575),
                          fontWeight: FontWeight.w700,
                          height: 1.0555555555555556,
                        ),
                        textAlign: TextAlign.left,
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                      ),
                    ),
                  ),
                  // child: Text(
                  //   'Sign in\n',
                  //   style: TextStyle(
                  //     fontFamily: 'Product Sans',
                  //     fontSize: 18,
                  //     color: const Color(0xff383575),
                  //     fontWeight: FontWeight.w700,
                  //     height: 1.0555555555555556,
                  //   ),
                  //   textHeightBehavior:
                  //       TextHeightBehavior(applyHeightToFirstAscent: false),
                  //   textAlign: TextAlign.center,
                  // ),
                ),
              ],
            ),
          ),
          //),
        ],
      ),
    );
  }
}
