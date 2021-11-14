import 'package:flutter/material.dart';
import 'package:guard_dog_app/ui_xd/xd_start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: XDStart(),
    );
  }
}
