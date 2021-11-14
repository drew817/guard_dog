import 'package:flutter/material.dart';
import 'package:guard_dog_app/routes/route_selector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RouteSelector(),
    );
  }
}
