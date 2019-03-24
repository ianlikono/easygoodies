import 'package:flutter/material.dart';

class AppBarMenu extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);
  final List list = ['12', '11'];
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text('Shop Name'),
      actions: <Widget>[
        IconButton(
          tooltip: 'Seearch',
          icon: Icon(Icons.search),
          onPressed: () async {
            final int selected = await showSearch<int>(
              context: context,
              // delegate: _delegate,
            );
          },
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            height: 150.0,
            width: 30.0,
            child: GestureDetector(
              onTap: () {},
              child: Stack(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      // TODO: navigate to cart screen
                    },
                  ),
                  list.length == 0
                      ? Container()
                      : Positioned(
                          child: Stack(
                            children: <Widget>[
                              Icon(
                                Icons.brightness_1,
                                size: 20.0,
                                color: Colors.orange.shade500,
                              ),
                              Positioned(
                                top: 4.0,
                                right: 5.5,
                                child: Center(
                                  child: Text(
                                    list.length.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
