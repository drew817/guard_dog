import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_component16.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDNavigation extends StatelessWidget {
  XDNavigation({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: XDComponent16(),
        ),
        Pinned.fromPins(
          Pin(size: 97.0, start: 292.0),
          Pin(size: 40.0, middle: 0.5091),
          child: Stack(
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
          ),
        ),
        Pinned.fromPins(
          Pin(size: 284.0, middle: 0.3818),
          Pin(size: 22.0, middle: 0.4932),
          child: Stack(
            children: <Widget>[
              Pinned.fromPins(
                Pin(size: 18.0, end: 0.0),
                Pin(size: 22.0, middle: 0.5),
                child:
                    // Adobe XD layer: 'ic_content_paste_24…' (shape)
                    SvgPicture.string(
                  _svg_a26z,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              Transform.translate(
                offset: Offset(0.0, 1.5),
                child: SizedBox(
                  width: 197.0,
                  height: 20.0,
                  child: SvgPicture.string(
                    _svg_rf1pm,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ),
            ],
          ),
        ),
        Pinned.fromPins(
          Pin(size: 38.0, start: 61.0),
          Pin(size: 18.0, middle: 0.4935),
          child: Text(
            'Map',
            style: TextStyle(
              fontFamily: 'Century',
              fontSize: 15,
              color: Colors.transparent,
              letterSpacing: 3.4050000000000002,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 84.0, middle: 0.5032),
          Pin(size: 18.0, middle: 0.5065),
          child: Text(
            'EMSCall',
            style: TextStyle(
              fontFamily: 'Century',
              fontSize: 15,
              color: Colors.transparent,
              letterSpacing: 3.4050000000000002,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 60.0, middle: 0.7994),
          Pin(size: 18.0, middle: 0.4935),
          child: Text(
            'Alerts',
            style: TextStyle(
              fontFamily: 'Century',
              fontSize: 15,
              color: Colors.transparent,
              letterSpacing: 3.4050000000000002,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 52.0, end: 11.0),
          Pin(size: 15.0, middle: 0.5),
          child: Text(
            'Report',
            style: TextStyle(
              fontFamily: 'Century',
              fontSize: 12,
              color: const Color(0xffffffff),
              letterSpacing: 2.724,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

const String _svg_a26z =
    '<svg viewBox="308.0 36.0 18.0 22.0" ><path transform="translate(305.0, 36.0)" d="M 19 2 L 14.81999969482422 2 C 14.39999961853027 0.8399999737739563 13.30000019073486 0 12 0 C 10.69999980926514 0 9.600000381469727 0.8399999737739563 9.180000305175781 2 L 5 2 C 3.900000095367432 2 3 2.900000095367432 3 4 L 3 20 C 3 21.10000038146973 3.900000095367432 22 5 22 L 19 22 C 20.10000038146973 22 21 21.10000038146973 21 20 L 21 4 C 21 2.900000095367432 20.10000038146973 2 19 2 Z M 12 2 C 12.55000019073486 2 13 2.450000047683716 13 3 C 13 3.549999952316284 12.55000019073486 4 12 4 C 11.44999980926514 4 11 3.549999952316284 11 3 C 11 2.450000047683716 11.44999980926514 2 12 2 Z M 19 20 L 5 20 L 5 4 L 7 4 L 7 7 L 17 7 L 17 4 L 19 4 L 19 20 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rf1pm =
    '<svg viewBox="42.0 37.5 197.0 20.0" ><path transform="translate(216.0, 35.5)" d="M 1 21 L 23 21 L 12 2 L 1 21 Z M 13 18 L 11 18 L 11 16 L 13 16 L 13 18 Z M 13 14 L 11 14 L 11 10 L 13 10 L 13 14 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(125.0, 35.5)" d="M 22 3 L 2 3 C 0.8999999761581421 3 0 3.900000095367432 0 5 L 0 19 C 0 20.10000038146973 0.8999999761581421 21 2 21 L 22 21 C 23.10000038146973 21 23.98999977111816 20.10000038146973 23.98999977111816 19 L 24 5 C 24 3.900000095367432 23.10000038146973 3 22 3 Z M 8 6 C 9.659999847412109 6 11 7.340000152587891 11 9 C 11 10.65999984741211 9.659999847412109 12 8 12 C 6.340000152587891 12 5 10.65999984741211 5 9 C 5 7.340000152587891 6.340000152587891 6 8 6 Z M 14 18 L 2 18 L 2 17 C 2 15 6 13.89999961853027 8 13.89999961853027 C 10 13.89999961853027 14 15 14 17 L 14 18 Z M 17.85000038146973 14 L 19.48999977111816 14 L 21 16 L 19.01000022888184 17.98999977111816 C 17.70000076293945 17.01000022888184 16.72999954223633 15.60999965667725 16.28000068664551 14 C 16.10000038146973 13.35999965667725 16 12.69000053405762 16 12 C 16 11.30999946594238 16.10000038146973 10.64000034332275 16.28000068664551 10 C 16.73000144958496 8.380000114440918 17.70000076293945 6.989999771118164 19.01000022888184 6.010000228881836 L 21 8 L 19.48999977111816 10 L 17.85000038146973 10 C 17.63000106811523 10.63000011444092 17.5 11.30000019073486 17.5 12 C 17.5 12.69999980926514 17.6299991607666 13.36999988555908 17.85000038146973 14 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(37.0, 35.5)" d="M 12 2 C 8.130000114440918 2 5 5.130000114440918 5 9 C 5 14.25 12 22 12 22 C 12 22 19 14.25 19 9 C 19 5.130000114440918 15.86999988555908 2 12 2 Z M 12 11.5 C 10.61999988555908 11.5 9.5 10.38000011444092 9.5 9 C 9.5 7.619999885559082 10.61999988555908 6.5 12 6.5 C 13.38000011444092 6.5 14.5 7.619999885559082 14.5 9 C 14.5 10.38000011444092 13.38000011444092 11.5 12 11.5 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
