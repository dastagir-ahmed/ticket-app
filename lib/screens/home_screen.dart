import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children:  [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text("Good morning"),
                      Text("Book Tickets")
                    ],
                  ),
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 70,
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text("Search icon"),
                    Text("Empty space")
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
