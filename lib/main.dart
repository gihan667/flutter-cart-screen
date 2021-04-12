import 'package:animated_cart/Screens/item/item.dart';
import 'package:animated_cart/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Cart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme)
      ),
      home: ItemScreen(),
    );
  }
}