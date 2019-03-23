import 'package:flutter/material.dart';

import './app_bar_search.dart';

class ShopAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: AppBarSearch(),
      backgroundColor: Colors.grey[300],
      actions: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10.0),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 50.0,
                ),
                color: Colors.red[700],
                tooltip: 'Cart',
                onPressed: () {},
              ),
              Positioned(
                top: 15.0,
                right: 8.0,
                child: Text(
                  '0',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
