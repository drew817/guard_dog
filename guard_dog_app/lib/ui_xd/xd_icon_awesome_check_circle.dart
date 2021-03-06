// ignore_for_file: file_names, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDIconAwesomeCheckCircle extends StatelessWidget {
  XDIconAwesomeCheckCircle({
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
              // Adobe XD layer: 'Icon awesome-check-…' (shape)
              SvgPicture.string(
            _svg_jeiwym,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

const String _svg_jeiwym =
    '<svg viewBox="0.0 0.0 16.0 16.0" ><path transform="translate(-0.56, -0.56)" d="M 16.5625 8.562499046325684 C 16.5625 12.98079013824463 12.98079013824463 16.5625 8.562499046325684 16.5625 C 4.144208908081055 16.5625 0.5625 12.98078918457031 0.5625 8.562499046325684 C 0.5625 4.144209861755371 4.144209384918213 0.5625 8.562499046325684 0.5625 C 12.98079013824463 0.5625 16.5625 4.144209384918213 16.5625 8.562499046325684 Z M 7.637145042419434 12.79843425750732 L 13.57262992858887 6.862951278686523 C 13.77417659759521 6.661402702331543 13.77417659759521 6.334596633911133 13.57262992858887 6.133047580718994 L 12.84272575378418 5.403143882751465 C 12.6411771774292 5.201563835144043 12.31437015533447 5.201563835144043 12.11279010772705 5.403143882751465 L 7.272177219390869 10.24372386932373 L 5.012209415435791 7.983758449554443 C 4.810661315917969 7.782209873199463 4.4838547706604 7.782209873199463 4.28227424621582 7.983758449554443 L 3.55237078666687 8.71366024017334 C 3.350822687149048 8.915207862854004 3.350822687149048 9.242013931274414 3.55237078666687 9.443564414978027 L 6.907209873199463 12.79840278625488 C 7.108790397644043 12.9999828338623 7.435564517974854 12.9999828338623 7.637145042419434 12.79843521118164 Z" fill="#586e90" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
