import 'package:flutter/material.dart';
import 'package:flutter_app2/support_screen.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SupportScreen(),
    );
  }
}
