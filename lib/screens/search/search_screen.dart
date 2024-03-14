import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            SizedBox(height: 40,),
            Text("What are\nyou looking for?", style: AppStyles.headLineStyle1.copyWith(fontSize: 35),)
          ],
      ),
    );
  }
}
