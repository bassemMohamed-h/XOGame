import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Facebook Demo',
      theme: ThemeData(
          textTheme: const TextTheme(
            subtitle1: TextStyle(color: Colors.white),
          ),
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.white,
          ),
          inputDecorationTheme: const InputDecorationTheme(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2)),
              hintStyle: TextStyle(color: Colors.white70, fontSize: 17),
              errorStyle: TextStyle(color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)))),
      home: const FacebookLogin(),
    );
  }
}
