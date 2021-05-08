//packages
import 'package:flutter/material.dart';
import 'package:khaledcars/stateful/sginIn_screen.dart';

//screens
import 'stateless/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Cocon"),
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
