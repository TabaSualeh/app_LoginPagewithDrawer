// ignore_for_file: prefer_const_constructors
// ignore_for_file:prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'drawerHead.dart';
import 'drawerList.dart';

class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        centerTitle: true,
        title: Text("Dashboard"),
      ),
      body: Center(
        child: Text("DASHBOARD"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(children: [
            drawerHead(),
            drawerList()
          ],),
        ),
      ),
    );
  }
}
