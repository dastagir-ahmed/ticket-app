import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

void main() {
  var myList = [
    "Flutter",
    "Laravel",
    "PHP"
  ];
  print("${myList.length}");
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: BottomNavBar(),
    );
  }
}


