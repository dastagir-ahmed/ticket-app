import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

void main() {

  runApp(const MyApp());
  // ?:
  int x = 10;
  x==10?print("He is a kid"):print("He is not a kid");
/*  if(x==10){
    print("He is a kid");
  }else{
    print("He is not a kid");
  }*/
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}


