import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home/View/Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student',
      theme: ThemeData(
        // textTheme: GoogleFonts.nunitoSansTextTheme(),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Lexend'),
          bodyMedium: TextStyle(fontFamily: 'Lexend'),
          bodySmall: TextStyle(fontFamily: 'Lexend'),
          displayLarge: TextStyle(fontFamily: 'Lexend'),
          displayMedium: TextStyle(fontFamily: 'Lexend'),
          displaySmall: TextStyle(fontFamily: 'Lexend'),
          titleSmall: TextStyle(fontFamily: 'Lexend'),
          titleMedium: TextStyle(fontFamily: 'Lexend'),
          titleLarge: TextStyle(fontFamily: 'Lexend'),
          labelLarge: TextStyle(fontFamily: 'Lexend'),
          labelMedium: TextStyle(fontFamily: 'Lexend'),
          labelSmall: TextStyle(fontFamily: 'Lexend'),
          headlineLarge: TextStyle(fontFamily: 'Lexend'),
          headlineMedium: TextStyle(fontFamily: 'Lexend'),
          headlineSmall: TextStyle(fontFamily: 'Lexend'),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const SplashScreen(),
    );
  }
}
