import 'package:flutter/material.dart';

class AppBarSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Search For Products',
          labelStyle: TextStyle(color: Colors.grey[600], fontSize: 15),
          filled: true,
          prefix: Icon(Icons.search, color: Colors.grey[400])),
    );
  }
}
