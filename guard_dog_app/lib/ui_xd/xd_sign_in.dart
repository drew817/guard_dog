// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, unnecessary_const

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_trees.dart';
import './xd_main_menu_map.dart';
//import 'package:adobe_xd/page_link.dart';
import './xd_register.dart';
import 'package:guard_dog_app/utilities/access_services.dart';

class XDSignIn extends StatefulWidget {
  const XDSignIn({Key? key}) : super(key: key);

  @override
  _XDSignInState createState() => _XDSignInState();
}

class _XDSignInState extends State<XDSignIn> {
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
            Pin(start: 41.0, end: -174.9),
            Pin(size: 142.8, end: 127.2),
            child:
                // Adobe XD layer: 'Trees' (component)
                XDTrees(),
          ),
          //SizedBox(height: 30.0),
          Pinned.fromPins(
            Pin(size: 254.0, start: 28.0),
            Pin(size: 48.0, middle: 0.1706),
            child:
                // Adobe XD layer: 'signInWelcome' (text)
                Text(
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
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 32.0, end: 52.0),
            Pin(size: 23.0, middle: 0.2403),
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
                // // Adobe XD layer: 'signInEmail' (shape)
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
                    // focusedErrorBorder: OutlineInputBorder(
                    //     borderSide: const BorderSide(
                    //         color: const Color(0xff707070), width: 1.0),
                    //     borderRadius: BorderRadius.circular(31.0)),
                  ),
                ),
              ),
            ),
          ),
          // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
          //   Pin(size: 311.0, start: 17.0),
          //   Pin(size: 62.0, middle: 0.2991),
          //   child:
          //       // Adobe XD layer: 'signInEmail' (shape)
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
                // Adobe XD layer: 'signInPassword' (shape)
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
                    // focusedErrorBorder: OutlineInputBorder(
                    //     borderSide: const BorderSide(
                    //         color: const Color(0xff707070), width: 1.0),
                    //     borderRadius: BorderRadius.circular(31.0)),
                  ),
                ),
              ),
            ),
          ),
          // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
          //   Pin(size: 311.0, start: 17.0),
          //   Pin(size: 62.0, middle: 0.403),
          //   child:
          //       // Adobe XD layer: 'signInPassword' (shape)
          //       Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(31.0),
          //       color: const Color(0xffffffff),
          //       border: Border.all(width: 1.0, color: const Color(0xff707070)),
          //     ),
          //   ),
          // ),
          Pinned.fromPins(
            Pin(size: 142.0, middle: 0.741),
            Pin(size: 52.0, middle: 0.5006),
            // child:
            //     // Adobe XD layer: 'signInButtonWelcome' (group)
            //     PageLink(
            //   links: [
            //     PageLinkInfo(
            //       transition: LinkTransition.Fade,
            //       ease: Curves.easeOut,
            //       duration: 0.3,
            //       pageBuilder: () => XDMainMenuMap(),
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
                  // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                  // Sign in button
                  Pin(start: 11.0, end: 10.0),
                  Pin(start: 9.0, end: 0.0),
                  child: SizedBox(
                    width: 100.0,
                    child: TextButton(
                      onPressed: () async {
                        if (_formEmail.currentState!.validate() &&
                            _formPassword.currentState!.validate()) {
                          dynamic result =
                              await _access.signIn(email, password);
                          if (result == null) {
                            setState(() {
                              error = "Failed to sign in";
                            });
                          } else {
                            Navigator.push(
                              context,
                              // Sending the user info to the next page
                              MaterialPageRoute(
                                  builder: (context) => XDMainMenuMap(result)),
                            );
                          }
                        }
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 24,
                          color: const Color(0xff383575),
                          fontWeight: FontWeight.w700,
                          height: 0.7916666666666666,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                //   Pin(start: 11.0, end: 10.0),
                //   Pin(start: 9.0, end: 0.0),
                //   child: Text(
                //     'Sign in',
                //     style: TextStyle(
                //       fontFamily: 'Product Sans',
                //       fontSize: 24,
                //       color: const Color(0xff383575),
                //       fontWeight: FontWeight.w700,
                //       height: 0.7916666666666666,
                //     ),
                //     textHeightBehavior:
                //         TextHeightBehavior(applyHeightToFirstAscent: false),
                //     textAlign: TextAlign.center,
                //   ),
                // ),
              ],
            ),
            //),
          ),
          Pinned.fromPins(
            Pin(size: 74.0, middle: 0.2257),
            Pin(size: 49.0, middle: 0.5125),
            // child:
            //     // Adobe XD layer: 'signUpButtonWelcome' (group)
            //     //PageLink(
            //   links: [
            //     PageLinkInfo(
            //       transition: LinkTransition.Fade,
            //       ease: Curves.easeOut,
            //       duration: 0.3,
            //       pageBuilder: () => XDRegister(),
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
                  // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                  // Sign up button
                  Pin(start: 2.0, end: -12.0),
                  Pin(start: -15.0, end: 0.0),
                  child: SizedBox(
                    width: 100.0,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => XDRegister()),
                        );
                      },
                      child: Text(
                        "Sign up",
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
                // Pin(start: 3.0, end: 2.0),
                // Pin(start: 5.0, end: 0.0),
                // child: Text(
                //   'Sign up\n',
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
