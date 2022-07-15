import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login.png", fit: BoxFit.cover),
              SizedBox(
                height: 20.0,
              ),
              Text("Coders Workroom Welcome $name",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changebutton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, Myroutes.homeroute);
                      },
                      child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changebutton ? 50 : 100,
                          height: 40,
                          alignment: Alignment.center,
                          child: changebutton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            shape: changebutton
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                          )),
                    )
                    //ElevatedButton(
                    //child: Text("login"),
                    //style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //onPressed: () {
                    // Navigator.pushNamed(context, Myroutes.homeroute);
                    //},
                    //),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
