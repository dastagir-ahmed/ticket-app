import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;

  const HeadingText(
      {super.key,
        required this.text,
        this.align = TextAlign.start,
        required this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isColor == null
          ? AppStyles.headLineStyle1.copyWith(color: Colors.white)
          : AppStyles.headLineStyle1,
    );
  }
}
