// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice/dashboard.dart';
import 'package:practice/forget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class login extends StatefulWidget {
  // const login({ Key? key }) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  var UserName = "Taba Sualeh";
  var Password = "taba12345";
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    // width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Image.asset("assets/bird.png")),
                Divider(
                  thickness: 0.5,
                  endIndent: 90,
                  indent: 90,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: user,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: "Enter Your Username",
                    prefixIcon: Icon(Icons.account_circle_rounded),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: pass,
                  obscureText: isObsecure,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Enter Your Password",
                      prefixIcon: Icon(Icons.lock_rounded),
                      suffixIcon: IconButton(
                        icon: Icon(isObsecure
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                      )),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          var route = MaterialPageRoute(
                              builder: (context) => forget(
                                    username: UserName,
                                    password: Password,
                                  ));
                          Navigator.of(context).push(route);
                        },
                        child: Text("Forget Password ?"))),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        minimumSize: const Size(200, 50),
                        maximumSize: const Size(200, 50)),
                    onPressed: () {
                      var username = user.text;
                      var password = pass.text;
                      if (username == "" || password == "") {
                        Fluttertoast.showToast(
                            msg: "Please Enter above fields",
                            backgroundColor: Colors.redAccent[100]);
                      } else if (username != UserName || password != Password) {
                        Fluttertoast.showToast(
                            msg: "Incorrect Credentials",
                            backgroundColor:
                                Color.fromARGB(206, 253, 135, 135));
                      } else {
                        Fluttertoast.showToast(
                          msg: "Login Successful",
                          backgroundColor: Colors.greenAccent[100],
                        );
                        Navigator.pop(context);
                        var route = MaterialPageRoute(
                            builder: (context) => dashboard());
                        Navigator.of(context).push(route);
                      }
                      user.clear();
                      pass.clear();
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 17),
                    )),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 15,
                  thickness: 0.8,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Accout ?",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
