import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final String name = 'My Wishlist';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Card(
            child: UserAccountsDrawerHeader(
              accountName: Text('Ian Likono'),
              accountEmail: Text('ianlikono@gmail.com'),
              onDetailsPressed: () {
                // TODO: navigate to accounts screen
              },
              decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.difference,
                  color: Colors.white30),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.fakenamegenerator.com/images/sil-female.png"),
              ),
            ),
          ),
          Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text(name),
                  onTap: () {
                    // TODO: navigate to item favourite screen(Item_Screen)
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text('Order History'),
                  onTap: () {
                    // TODO: navigate to order history page
                  },
                )
              ],
            ),
          ),
          Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    // TODO: navigate to settings screen
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help'),
                  onTap: () {
                    // TODO: navigate to help screen
                  },
                )
              ],
            ),
          ),
          Card(
            elevation: 4.0,
            child: ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text('Logout',
                  style: TextStyle(color: Colors.redAccent, fontSize: 17.0)),
              onTap: () {
                // TODO: Logout and go to login screen
              },
            ),
          ),
        ],
      ),
    );
  }
}
