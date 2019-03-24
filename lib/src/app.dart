import 'package:flutter/material.dart';

import './screens/splash_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
          // counter didn't reset back to zero; the application is not restarted.

          primaryColor: Colors.white,
          primaryColorDark: Colors.white30,
          accentColor: Colors.blue),
      home: new SplashScreen(title: 'Groceries'),
    );
  }

  // Route _routesNavigator(RouteSettings settings) {
  //   bool userLoggedIn = true;
  //   switch (settings.name) {
  //     case '/':
  //       {
  //         return MaterialPageRoute(builder: (context) {
  //           return !userLoggedIn ? LoginScreen() : HomeScreen();
  //         });
  //       }
  //       break;
  //     case '/forgot-password':
  //       {
  //         return MaterialPageRoute(builder: (context) {
  //           return ForgotPasswordScreen();
  //         });
  //       }
  //       break;
  //     case '/create-account':
  //       {
  //         return MaterialPageRoute(builder: (context) {
  //           return CreateAccountScreen();
  //         });
  //       }
  //       break;
  //     default:
  //       //TODO: change Default Route
  //       {
  //         return MaterialPageRoute(builder: (context) {
  //           return LoginScreen();
  //         });
  //       }
  //       break;
  //   }
  // }
}
