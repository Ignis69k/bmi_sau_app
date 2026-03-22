import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Body Health Calculator',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  ),
                ),SizedBox(height: 20),
                Image.asset(
                  'assets/images/logo.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text('Body Health Calculator',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text('Body Health Calculator',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/4/47/Logosau-02.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  ),
                  Text(
                    'Develop by Owo',
                    style: TextStyle(
                      fontSize: 12,
                      ),
                  ),
                  SizedBox(height: 30,)
              ],
              ),)
        ],
      ),
    );
  }
}