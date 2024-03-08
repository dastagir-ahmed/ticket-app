import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {Key? key, required this.bigText, required this.smallText})
      : super(key: key);
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children:[
        Text(bigText, style:AppStyles.headLineStyle2),
        InkWell(
          onTap:(){
            Navigator.push (
              context,
              MaterialPageRoute (
                builder: (BuildContext context) => const AllTickets(),
              ),
            );
          },
          child:Text(smallText, style:AppStyles.textStyle.copyWith(
            color:AppStyles.primaryColor
          ))
        )
      ]
    );
  }
}
