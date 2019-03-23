import 'package:flutter/material.dart';

import './screens/login_screen.dart';

ThemeData _mainTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: Colors.redAccent,
    primaryColor: Colors.white,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: Colors.red[700],
      textTheme: ButtonTextTheme.normal,
    ),
    scaffoldBackgroundColor: Colors.grey[300],
    cardColor: Colors.white,
    textSelectionColor: Colors.red[700],
    errorColor: Colors.red[900],
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'easyGoodies',
      home: LoginScreen(),
      theme: _mainTheme(),
    );
  }
}
