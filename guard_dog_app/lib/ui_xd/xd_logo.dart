import 'package:flutter/material.dart';

class XDLogo extends StatelessWidget {
  XDLogo({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'Logo' (shape)
        Container(
          width: 153.0,
          height: 153.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(57.0),
            image: DecorationImage(
              image: const AssetImage('assets/images/guard_dog_icon.jpg'),
              fit: BoxFit.fill,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.21), BlendMode.dstIn),
            ),
          ),
        ),
      ],
    );
  }
}
