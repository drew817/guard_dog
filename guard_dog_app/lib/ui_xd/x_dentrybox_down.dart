// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDentrybox_down extends StatelessWidget {
  XDentrybox_down({
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
              // Adobe XD layer: 'DOWN' (group)
              Stack(
            children: <Widget>[
              Pinned.fromPins(
                Pin(startFraction: 0.0, endFraction: -0.0611),
                Pin(startFraction: 0.0, endFraction: -0.4032),
                child:
                    // Adobe XD layer: 'Shadow ' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.0),
                    border:
                        Border.all(width: 5.0, color: const Color(0xff97a7c3)),
                  ),
                ),
              ),
              Pinned.fromPins(
                Pin(startFraction: -0.0772, endFraction: 0.0),
                Pin(startFraction: -0.371, endFraction: 0.0),
                child:
                    // Adobe XD layer: 'Light' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.0),
                    border:
                        Border.all(width: 5.0, color: const Color(0xffffffff)),
                  ),
                ),
              ),
              Pinned.fromPins(
                Pin(startFraction: 0.0, endFraction: 0.0),
                Pin(startFraction: 0.0, endFraction: 0.0),
                child:
                    // Adobe XD layer: 'Base' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.0),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
