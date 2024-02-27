import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return  SizedBox(
      width: size.width*0.85,
      height: 179,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        color: Colors.red,
        child: Text("Hello"),
      ),
    );
  }
}
