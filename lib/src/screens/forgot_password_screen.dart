import 'package:flutter/material.dart';

import '../widgets/auth_button.dart';
import '../widgets/auth_input.dart';

class ForgotPasswordScreen extends StatelessWidget {
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
                      'Forgot Password',
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
                    SizedBox(height: 20.0),
                    AuthButton(buttonName: 'RESET'),
                    SizedBox(height: 20.0),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: RaisedButton(
                        elevation: 1.0,
                        child: Text(
                          'BACK',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        // color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                      ),
                    ),
                    SizedBox(height: 12.0),
                    SizedBox(height: 20.0),
                    FlatButton(
                      child: Text(
                        'Create Account',
                        style: TextStyle(color: Colors.grey[200], fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/create-account');
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
