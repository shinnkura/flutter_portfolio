import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyLarge: TextStyle(color: bodyTextColor),
              bodyMedium: TextStyle(color: bodyTextColor),
            ),
      ),
      theme: ThemeData.light().copyWith(
        // Add this block for light theme
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Color.fromARGB(255, 220, 219, 219),
        canvasColor: Color.fromARGB(255, 172, 171, 171),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black)
            .copyWith(
              bodyLarge: TextStyle(color: bodyTextColor),
              bodyMedium: TextStyle(color: bodyTextColor),
            ),
      ),
      home: HomeScreen(),
    );
  }
}
