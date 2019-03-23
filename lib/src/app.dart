import 'package:flutter/material.dart';

import './screens/create_account_screen.dart';
import './screens/forgot_password_screen.dart';
import './screens/login_screen.dart';
import './screens/shop_home_screen.dart';

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
      theme: _mainTheme(),
      onGenerateRoute: _routesNavigator,
    );
  }

  Route _routesNavigator(RouteSettings settings) {
    bool userLoggedIn = false;
    switch (settings.name) {
      case '/':
        {
          return MaterialPageRoute(builder: (context) {
            return !userLoggedIn ? LoginScreen() : ShopHomeScreen();
          });
        }
        break;
      case '/forgot-password':
        {
          return MaterialPageRoute(builder: (context) {
            return ForgotPasswordScreen();
          });
        }
        break;
      case '/create-account':
        {
          return MaterialPageRoute(builder: (context) {
            return CreateAccountScreen();
          });
        }
        break;
      default:
        {
          return MaterialPageRoute(builder: (context) {
            return LoginScreen();
          });
        }
        break;
    }
  }
}
