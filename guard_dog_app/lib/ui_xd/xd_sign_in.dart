// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:guard_dog_app/ui_xd/xd_main_menu_map.dart';
import 'package:guard_dog_app/ui_xd/xd_register.dart';
import 'package:guard_dog_app/utilities/access_services.dart';
import './xd_trees.dart';

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
            offset: Offset(19.0, 381.0),
            child: SizedBox(
              width: 309.0,
              height: 23.0,
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
          ),
          Transform.translate(
            offset: Offset(17.0, 424.0), // x, y
            // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            // Email textbox with validation and stateful
            child: Form(
              key: _formEmail,
              child: Container(
                // // Adobe XD layer: 'signInEmail' (shape)
                width: 311.0,
                height: 62.0,
                child: TextFormField(
                  validator: (value) =>
                      value!.isEmpty ? 'Enter an email' : null,
                  onChanged: (value) {
                    setState(() => email = value);
                  },
                  decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xff707070), width: 5.0),
                        borderRadius: BorderRadius.circular(31.0)),
                  ),
                ),
              ),
              //     // Adobe XD layer: 'signInEmail' (shape)
              //     Container(
              //   width: 311.0,
              //   height: 62.0,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(31.0),
              //     color: const Color(0xffffffff),
              //     border: Border.all(width: 5.0, color: const Color(0xff707070)),
              //   ),
              // ),
            ),
          ),
          Transform.translate(
            offset: Offset(17.0, 515.0),
            // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            // Password textbox with validation and stateful
            child: Form(
              key: _formPassword,
              child: Container(
                // Adobe XD layer: 'signInPassword' (shape)
                width: 311.0,
                height: 62.0,
                child: TextFormField(
                  //width: 311.0,
                  //height: 62.0,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(31.0),
                  //   color: const Color(0xffffffff),
                  //   border: Border.all(width: 5.0, color: const Color(0xff707070)),
                  // ),
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
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xff707070), width: 5.0),
                        borderRadius: BorderRadius.circular(31)),
                  ),
                ),
              ),
              // child:
              //     // Adobe XD layer: 'signInPassword' (shape)
              //     Container(
              //   width: 311.0,
              //   height: 62.0,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(31.0),
              //     color: const Color(0xffffffff),
              //     border: Border.all(width: 5.0, color: const Color(0xff707070)),
              //   ),
              // ),
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
                    // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                    // Sign in button
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
                                MaterialPageRoute(
                                    builder: (context) => XDMainMenuMap()),
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
                        // child: Text(
                        // 'Sign In',
                        // style: TextStyle(
                        //   fontFamily: 'Product Sans',
                        //   fontSize: 24,
                        //   color: const Color(0xff383575),
                        //   fontWeight: FontWeight.w700,
                        //   height: 0.7916666666666666,
                        // ),
                        // textHeightBehavior:
                        //     TextHeightBehavior(applyHeightToFirstAscent: false),
                        // textAlign: TextAlign.center,
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
                      //color: Colors.blue,
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(1.5, 3.0),
                    // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                    // Sign up button
                    child: SizedBox(
                      width: 100.0,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => XDRegister()),
                          );
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontFamily: 'Product Sans',
                            fontSize: 10,
                            color: const Color(0xff383575),
                            fontWeight: FontWeight.w700,
                            height: 1.0555555555555556,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
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
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text(error,
                      style: TextStyle(color: Colors.red, fontSize: 10.0))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
