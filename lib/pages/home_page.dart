import 'dart:ui';

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "try workshop";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),),
      body: Center(
        child: Container(
          child: Text("WElcome $days $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
