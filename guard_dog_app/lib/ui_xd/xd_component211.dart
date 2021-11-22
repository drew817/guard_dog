// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDComponent211 extends StatelessWidget {
  XDComponent211({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child:
              // Adobe XD layer: 'Selection shadow' (shape)
              Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color(0xff002e5d),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x80000000),
                  offset: Offset(5, 5),
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
              // Adobe XD layer: 'Selection Light' (shape)
              Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color(0xff002e5d),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x803333a8),
                  offset: Offset(-5, -5),
                  blurRadius: 15,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
