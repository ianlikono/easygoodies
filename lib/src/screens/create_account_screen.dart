import 'package:flutter/material.dart';

import '../widgets/auth_button.dart';
import '../widgets/auth_input.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final distanceTop = height / 4;
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.red[800],
        Colors.red[700],
      ])),
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: distanceTop),
            Column(
              children: <Widget>[
                SizedBox(height: 24.0),
                Column(
                  children: <Widget>[
                    Text(
                      'Create Account',
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                Column(
                  children: <Widget>[
                    AuthInput(
                      inputName: 'Username',
                      iconType: 'username',
                    ),
                    SizedBox(height: 12.0),
                    AuthInput(
                      inputName: 'Password',
                      iconType: 'password',
                    ),
                    SizedBox(height: 12.0),
                    AuthInput(
                      inputName: 'Confirm Password',
                      iconType: 'password',
                    ),
                    SizedBox(height: 20.0),
                    AuthButton(buttonName: 'CREATE'),
                    SizedBox(height: 12.0),
                    SizedBox(height: 20.0),
                    FlatButton(
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.grey[200], fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
