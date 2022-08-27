// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coin/pages/welcome_screen/view/welcome_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/welcome_screen/view/welcome_screen_view.dart';

void main() => runApp(DengeApp());

class DengeApp extends StatelessWidget {
  const DengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.lexendDecaTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
