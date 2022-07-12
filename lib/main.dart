import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily
          ),
      darkTheme: ThemeData(primarySwatch: Colors.red),
      routes: {
        "/": (context) => Loginpage(),
        "/Home": (context) => Homepage(),
        "/login": (context) => Loginpage()
      },
    );
  }
}
