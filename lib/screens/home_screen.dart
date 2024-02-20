import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Container(child: Text("Hello flutter"),),
          Container(child:Text("Hello how are you"))
        ],
      )
    );
  }
}
