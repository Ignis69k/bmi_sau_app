import 'package:flutter/material.dart';
import 'package:flutter_sau_life2/views/About_ui.dart';
import 'package:flutter_sau_life2/views/bmi_ui.dart';
import 'package:flutter_sau_life2/views/bmr_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int selectedIndex = 1;
  List subPage = [
    BmiUi(), 
    AboutUi(), 
    BmrUi()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('BHC App', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey[400],
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'BMI'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'เกี่ยวกับ'),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run_outlined),
            label: 'BMR',
          ),
        ],
      ),
      body: subPage[0],
    );
  }
}
