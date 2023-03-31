import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file:prefer_const_literals_to_create_immutables

class forget extends StatelessWidget {
  var username, password;
  forget({Key? key,this.username,this.password}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Secret Credentials",
        style: TextStyle(
          color: Colors.blueGrey[200],
          fontWeight: FontWeight.bold,
          // fontSize: 14,
        ),
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "UserName : ",
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  this.username,
                  style: TextStyle(
                      color: Colors.blueGrey.shade300,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Password : ",
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  this.password,
                  style: TextStyle(
                      color: Colors.blueGrey.shade300,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
