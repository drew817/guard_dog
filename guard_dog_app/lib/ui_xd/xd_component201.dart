// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, constant_identifier_names

import 'package:flutter/material.dart';
//import 'package:adobe_xd/pinned.dart';

class XDComponent201 extends StatelessWidget {
  XDComponent201({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'Selection shadow' (shape)
        Container(
          width: 365.0,
          height: 155.0,
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
        // Adobe XD layer: 'Selection Light' (shape)
        Container(
          width: 160.0,
          height: 45.0,
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
      ],
    );
  }
}
