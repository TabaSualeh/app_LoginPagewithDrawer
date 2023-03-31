import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file:prefer_const_literals_to_create_immutables

class notifications extends StatelessWidget {
  const notifications({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        centerTitle: true,
        title: Text("Notifications"),
      ),
      body: Center(
        child: Text("NOTIFICATIONS"),
      ),
    );
  }
}