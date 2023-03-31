// ignore_for_file: prefer_const_constructors
// ignore_for_file:prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'login.dart';
import 'contact.dart';
import 'favourites.dart';
import 'notifications.dart';

class drawerList extends StatelessWidget {
  const drawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.dashboard),
          title: Text('DashBoard'),
          onTap: () {
            Navigator.pop(context);

            var route = MaterialPageRoute(builder: (context) => dashboard());
            Navigator.of(context).push(route);
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite_outlined),
          title: Text('Favourites'),
          onTap: () {
            Navigator.pop(context);

            var route = MaterialPageRoute(builder: (context) => favourites());
            Navigator.of(context).push(route);
          },
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Notifications'),
          onTap: () {
            Navigator.pop(context);

            var route =
                MaterialPageRoute(builder: (context) => notifications());
            Navigator.of(context).push(route);
          },
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Contact us'),
          onTap: () {
            Navigator.pop(context);

            var route = MaterialPageRoute(builder: (context) => contact());
            Navigator.of(context).push(route);
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Wrap(children: [
            Divider(
              thickness: 0.5,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log out'),
              onTap: () {
                Navigator.pushAndRemoveUntil<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => login(),
                  ),
                  (route) => false,
                );

                // Navigator.pop(context);
                // var route = MaterialPageRoute(builder: (context) => login());
                // Navigator.of(context).push(route);
              },
            ),
          ]),
        )
      ],
    );
  }
}
