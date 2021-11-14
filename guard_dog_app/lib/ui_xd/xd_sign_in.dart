import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_trees.dart';

class XDSignIn extends StatelessWidget {
  XDSignIn({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd2d3dc),
      body: Stack(
        children: <Widget>[
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
            offset: Offset(10.0, 328.0),
            child:
                // Adobe XD layer: 'signInWelcome' (text)
                SizedBox(
              width: 190.0,
              child: Text(
                'Welcome',
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
            offset: Offset(14.1, 381.0),
            child: SizedBox(
              width: 130.0,
              child: Text(
                'Let\'s get started',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 18,
                  color: const Color(0xff272636),
                  height: 1.2777777777777777,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(17.0, 424.0),
            child:
                // Adobe XD layer: 'signInEmail' (shape)
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
            offset: Offset(17.0, 515.0),
            child:
                // Adobe XD layer: 'signInPassword' (shape)
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
                  // Adobe XD layer: 'signInButtonWelcome' (group)
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
                    offset: Offset(28.0, 12.0),
                    child: SizedBox(
                      width: 86.0,
                      child: Text(
                        'Sign In',
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
          Transform.translate(
            offset: Offset(147.0, 727.0),
            child: SizedBox(
              width: 74.0,
              height: 44.0,
              child:
                  // Adobe XD layer: 'signUpButtonWelcome' (group)
                  Stack(
                children: <Widget>[
                  Container(
                    width: 74.0,
                    height: 33.0,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(1.5, 3.0),
                    child: SizedBox(
                      width: 71.0,
                      child: Text(
                        'Sign up\n',
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 18,
                          color: const Color(0xff383575),
                          fontWeight: FontWeight.w700,
                          height: 1.0555555555555556,
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
