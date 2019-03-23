import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String buttonName;

  AuthButton({this.buttonName});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 40,
      child: RaisedButton(
        elevation: 8.0,
        child: Text(
          buttonName,
          style: TextStyle(color: Colors.red[900], fontSize: 30),
        ),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }
}
