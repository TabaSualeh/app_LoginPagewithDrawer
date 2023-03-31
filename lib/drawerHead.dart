import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file:prefer_const_literals_to_create_immutables

class drawerHead extends StatelessWidget {
  const drawerHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.lightBlue[300],
      height: 200,
      padding: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("assets/taba.jpg"),
          ),
          Text(
            "Muhammad Taba Sualeh",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "tabasualehdev@gmail.com\n\tFlutter Developer",
            style: TextStyle(color: Colors.grey[200], fontSize: 14),
          ),
        ],
      ),
    );
  }
}
