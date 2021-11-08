import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDentrybox_up extends StatelessWidget {
  XDentrybox_up({
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
              // Adobe XD layer: 'Shadow' (shape)
              Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(31.0),
              color: const Color(0xffecf0f3),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x8097a7c3),
                  offset: Offset(15, 15),
                  blurRadius: 25,
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child:
              // Adobe XD layer: 'Light' (shape)
              Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(31.0),
              color: const Color(0xffecf0f3),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffffffff),
                  offset: Offset(-15, -15),
                  blurRadius: 25,
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child:
              // Adobe XD layer: 'Base' (shape)
              Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(31.0),
              color: const Color(0xffecf0f3),
            ),
          ),
        ),
      ],
    );
  }
}
