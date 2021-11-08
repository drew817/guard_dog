import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDLogo extends StatelessWidget {
  XDLogo({
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
      ],
    );
  }
}
