import 'package:flutter/material.dart';

import '../widgets/shop_appbar.dart';

class ShopHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShopAppBar(),
      body: Center(
        child: Text('Shop Home Screen'),
      ),
    );
  }
}
