// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDComponent16 extends StatelessWidget {
  XDComponent16({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff002e5d),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
        ),
      ],
    );
  }
}
