import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  final String inputName;
  final iconType;

  AuthInput({this.inputName, this.iconType});

  Widget _buildIcon() {
    if (iconType == 'username') {
      return Icon(
        Icons.person,
        color: Colors.grey[400],
      );
    } else if (iconType == 'password') {
      return Icon(Icons.lock, color: Colors.grey[400]);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white, fontSize: 15),
      decoration: InputDecoration(
          prefixIcon: _buildIcon(),
          hintText: 'Enter $inputName',
          hintStyle: TextStyle(color: Colors.grey[400]),
          labelText: '$inputName',
          labelStyle: TextStyle(color: Colors.grey[400], fontSize: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.elliptical(20, 20)),
            gapPadding: 10.0,
            borderSide: BorderSide(color: Colors.grey[400]),
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.elliptical(20, 20)),
            gapPadding: 10.0,
          )),
    );
  }
}
