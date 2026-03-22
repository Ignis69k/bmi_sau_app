import 'package:flutter/material.dart';
import 'package:flutter_sau_life2/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Fluttersaulife());
}

class Fluttersaulife extends StatefulWidget {
  const Fluttersaulife({super.key});

  @override
  State<Fluttersaulife> createState() => _FluttersaulifeState();
}

class _FluttersaulifeState extends State<Fluttersaulife> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme,)
      ),
    );
  }
}
