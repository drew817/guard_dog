// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new, sized_box_for_whitespace, unnecessary_const

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import './xd_trees.dart';
import './xd_sign_up_transition.dart';
//import 'package:adobe_xd/page_link.dart';
import './xd_sign_in.dart';
import 'package:guard_dog_app/utilities/access_services.dart';

class XDRegister extends StatefulWidget {
  const XDRegister({Key? key}) : super(key: key);

  @override
  _XDRegisterState createState() => _XDRegisterState();
}

class _XDRegisterState extends State<XDRegister> {
  final AccessServices _access = AccessServices(); // to access signIn()
  final _formEmail = GlobalKey<FormState>(); // to validate form
  final _formPassword = GlobalKey<FormState>();

  // Textfields states
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          Pinned.fromPins(
            Pin(size: 79.0, start: 41.0),
            Pin(size: 79.0, start: 30.0),
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
            Pin(size: 223.0, end: 45.0),
            Pin(size: 47.0, start: 60.0),
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
            Pin(start: 53.0, end: -186.9),
            Pin(size: 142.8, end: 119.2),
            child:
                // Adobe XD layer: 'Trees' (component)
                XDTrees(),
          ),
          Pinned.fromPins(
            Pin(start: 29.0, end: 94.0),
            Pin(size: 59.0, middle: 0.1793),
            child:
                // Adobe XD layer: 'signUpWelcome' (text)
                Text(
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
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 32.0, end: 52.0),
            Pin(size: 23.0, middle: 0.2403),
            child: Text(
              'Fill in the details',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 18,
                color: const Color(0xff272636),
                height: 1.2777777777777777,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            // Email textbox with validation and stateful
            Pin(size: 311.0, start: 17.0),
            Pin(size: 62.0, middle: 0.2991),
            child: Form(
              key: _formEmail,
              child: Container(
                //padding: const EdgeInsets.all(10.0),
                // // Adobe XD layer: 'signUpEmail' (shape)
                width: 311.0,
                height: 62.0,
                child: TextFormField(
                  //scrollPadding: const EdgeInsets.all(20.0),
                  validator: (value) =>
                      value!.isEmpty ? 'Enter an email' : null,
                  onChanged: (value) {
                    setState(() => email = value);
                  },
                  decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff707070)),
                      borderRadius: BorderRadius.circular(31.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: const Color(0xff707070), width: 1.0),
                        borderRadius: BorderRadius.circular(31.0)),
                  ),
                ),
              ),
            ),
          ),
          //   Pin(size: 311.0, start: 17.0),
          //   Pin(size: 62.0, middle: 0.2978),
          //   child:
          //       // Adobe XD layer: 'signUpEmail' (shape)
          //       Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(31.0),
          //       color: const Color(0xffffffff),
          //       border: Border.all(width: 1.0, color: const Color(0xff707070)),
          //     ),
          //   ),
          // ),
          Pinned.fromPins(
            // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            // Password textbox with validation and stateful
            Pin(size: 311.0, start: 17.0),
            Pin(size: 62.0, middle: 0.403),
            child: Form(
              key: _formPassword,
              child: Container(
                //padding: const EdgeInsets.all(10.0),
                // Adobe XD layer: 'signUpPassword' (shape)
                width: 311.0,
                height: 62.0,
                child: TextFormField(
                  validator: (value) => value!.length < 6
                      ? 'Password should be at least 6 characters'
                      : null,
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff707070)),
                      borderRadius: BorderRadius.circular(31.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: const Color(0xff707070), width: 1.0),
                        borderRadius: BorderRadius.circular(31.0)),
                  ),
                ),
              ),
            ),
          ),
          //   Pin(size: 311.0, start: 17.0),
          //   Pin(size: 62.0, middle: 0.4018),
          //   child:
          //       // Adobe XD layer: 'signUpPassword' (shape)
          //       Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(31.0),
          //       color: const Color(0xffffffff),
          //       border: Border.all(width: 1.0, color: const Color(0xff707070)),
          //     ),
          //   ),
          // ),
          Pinned.fromPins(
            // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            // Sign Up button
            Pin(size: 142.0, middle: 0.7331),
            Pin(size: 52.0, middle: 0.4994),
            // child:
            //     // Adobe XD layer: 'signUpButtonRegister' (group)
            //     PageLink(
            //   links: [
            //     PageLinkInfo(
            //       transition: LinkTransition.Fade,
            //       ease: Curves.easeOut,
            //       duration: 0.3,
            //       pageBuilder: () => XDSignUpTransition(),
            //     ),
            //   ],
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 17.0, end: 17.0),
                  Pin(start: 20.0, end: 7.0),
                  child: SizedBox(
                    width: 110,
                    child: TextButton(
                      onPressed: () async {
                        if (_formEmail.currentState!.validate() &&
                            _formPassword.currentState!.validate()) {
                          dynamic result =
                              await _access.register(email, password);
                          if (result == null) {
                            setState(() {
                              error = "Failed to sign up";
                            });
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => XDSignUpTransition()),
                            );
                          }
                        }
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 24,
                          color: const Color(0xff383575),
                          fontWeight: FontWeight.w700,
                          height: 0.79166 / 66666666666,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  // child: Text(
                  //   'Sign up',
                  //   style: TextStyle(
                  //     fontFamily: 'Product Sans',
                  //     fontSize: 24,
                  //     color: const Color(0xff383575),
                  //     fontWeight: FontWeight.w700,
                  //     height: 0.7916666666666666,
                  //   ),
                  //   textHeightBehavior:
                  //       TextHeightBehavior(applyHeightToFirstAscent: false),
                  //   textAlign: TextAlign.center,
                  // ),
                ),
              ],
            ),
            //),
          ),
          Pinned.fromPins(
            // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            // Sign in button
            Pin(size: 74.0, middle: 0.2257),
            Pin(size: 49.0, middle: 0.5125),
            // child:
            //     // Adobe XD layer: 'signInButtonRegister' (group)
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
                  Pin(start: 0.0, end: -10.0),
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
                  Pin(start: 2.0, end: -12.0),
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
                ),
                // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                //   Pin(start: 0.0, end: 0.0),
                //   Pin(start: 5.0, end: 0.0),
                //   child: Text(
                //     'Sign in\n',
                //     style: TextStyle(
                //       fontFamily: 'Product Sans',
                //       fontSize: 18,
                //       color: const Color(0xff383575),
                //       fontWeight: FontWeight.w700,
                //       height: 1.0555555555555556,
                //     ),
                //     textHeightBehavior:
                //         TextHeightBehavior(applyHeightToFirstAscent: false),
                //     textAlign: TextAlign.center,
                //   ),
                // ),
                Pinned.fromPins(
                    // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                    // Error message
                    Pin(start: -50.0, end: -100.0), // (x)
                    Pin(start: 40.0, end: -20.0), // (y)
                    child: Text(error,
                        style: TextStyle(color: Colors.red, fontSize: 18.0))),
              ],
            ),
            //),
          ),
        ],
      ),
    );
  }
}
